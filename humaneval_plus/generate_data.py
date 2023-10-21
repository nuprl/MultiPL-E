import argparse
import hashlib
import os
import pickle
import sys
import time

import jsonlines
import numpy as np
from tqdm import tqdm

sys.set_int_max_str_digits(100000000)



def trusted_exec(code, inputs, entry_point, record_time=False):
    # https://github.com/evalplus/evalplus/blob/0ab61e15f71e71a0c590f69ca8fddbf8e347dd70/evalplus/gen/util/__init__.py#L4
    """Execute trusted code in place."""
    exec_globals = {}
    exec(code, exec_globals)
    fn = exec_globals[entry_point]

    rtime = []
    ret = []
    for inp in inputs:
        if record_time:
            start = time.time()
            ret.append(fn(*inp))
            rtime.append(time.time() - start)
        else:
            ret.append(fn(*inp))

    if record_time:
        return ret, rtime
    else:
        return ret


def get_human_eval_plus_hash(PLUS_PATH) -> str:
    """Get the hash of HumanEvalPlus.
    Returns:
        str: The hash of HumanEvalPlus
    """
    with open(PLUS_PATH, "rb") as f:
        plus = f.read()
    return hashlib.md5(plus).hexdigest()


def get_groundtruth(problems, hashcode, CACHE_DIR='.'):
    cache_file = os.path.join(CACHE_DIR, f"{hashcode}.pkl")
    if os.path.exists(cache_file):
        print(f"Load from {cache_file}")
        with open(cache_file, "rb") as f:
            return pickle.load(f)

    print("Computing expected output...")
    tbegin = time.time()
    expected_output = {}
    for task_id, problem in tqdm(problems.items()):
        oracle = {}
        oracle["base"], oracle["base_time"] = trusted_exec(
            problem["prompt"] + problem["canonical_solution"],
            problem["base_input"],
            problem["entry_point"],
            record_time=True,
        )

        oracle["plus"], oracle["plus_time"] = trusted_exec(
            problem["prompt"] + problem["canonical_solution"],
            problem["plus_input"],
            problem["entry_point"],
            record_time=True,
        )
        expected_output[task_id] = oracle
    print(f"Expected outputs computed in {time.time() - tbegin:.2f}s")

    with open(cache_file, "wb") as f:
        pickle.dump(expected_output, f)

    return expected_output


def is_floats(x) -> bool:
    # check if it is float; List[float]; Tuple[float]
    if isinstance(x, float):
        return True
    if isinstance(x, (list, tuple)) and len(x) > 0:
        return all(isinstance(i, float) for i in x)
    if isinstance(x, np.ndarray):
        return x.dtype == np.float64 or x.dtype == np.float32
    return False


def get_single_test(atol, inp, exp, entry_point=None, large_num=False, skip_float=False, abs_float=False):
    inp_str = str(inp)[1:-1]
    if not large_num and isinstance(exp, int) and abs(exp) > 2 ** 62:
        return ''
    if atol == 0 and is_floats(exp):
        atol = 1e-6  # enforce atol for float comparison
    if "find_zero" == entry_point:
        return '    pass\n'
        # assert _poly(*out, inp) <= atol
    elif atol != 0:
        if skip_float:
            return ''
        if abs_float:
            return f'    assert abs(candidate({inp_str}) - {exp}) < {atol}\n'

        return f'    assert candidate({inp_str}) == {exp}\n'
    elif isinstance(exp, str):
        good_str = exp.replace("\n", "\\n").replace("\r", "\\r")
        return f'    assert candidate({inp_str}) == "{good_str}"\n'
    else:
        return f'    assert candidate({inp_str}) == {exp}\n'


def generate_tests(obj, expected, plus=True, large_num=False, skip_float=False, abs_float=False):
    out = 'def check(candidate):\n'
    out += '    # HumanEval\n'
    for i, inp in enumerate(tqdm(obj['base_input'])):
        out += get_single_test(obj['atol'], inp, expected['base'][i], entry_point=obj['entry_point'],
                               skip_float=skip_float, abs_float=abs_float)
    if plus:
        out += '\n    # HumanEval Plus\n'
        for i, inp in enumerate(tqdm(obj['plus_input'])):
            curr_test = get_single_test(obj['atol'], inp, expected['plus'][i],
                                        entry_point=obj['entry_point'], large_num=large_num)
            if len(curr_test) < 10000: # Skip very large tests
                out += curr_test
    return out


def get_test(obj, expected):
    # Task 32, 38, 50 do not have canonical solution in MultiPL-E
    if obj['task_id'] in ['HumanEval/32', 'HumanEval/38', 'HumanEval/50']:
        test_str = obj['prompt'] + "    ### Canonical solution below ###" + obj[
            'canonical_solution'] + "\n### Unit tests below ###\n\n"
    else:
        test_str = obj['multiple_sol'] + "\n### Unit tests below ###\n\n"
    # Tasks 53, 42, 58, 62, 71 have number manipulation which is guaranteed to be correct only with integers
    test_str += generate_tests(obj, expected, plus=True,
                               skip_float=obj['task_id'] in ['HumanEval/53', 'HumanEval/42', 'HumanEval/58',
                                                             'HumanEval/62', 'HumanEval/71'])
    test_str += f"""

def test_check():
    check({obj['entry_point']})"""
    return test_str


def main():

    args = argparse.ArgumentParser()
    args.add_argument(
        "--output-folder", type=str, required=True, help="Folder to write output to"
    )
    args.add_argument(
        "--cache-folder", type=str, required=True, help="Folder to use for cache, e.g., cache"
    )
    args.add_argument(
        "--humaneval-plus-path", type=str, required=True, help="Path to HumanEval+ jsonl"
    )
    args.add_argument(
        "--humaneval-plus-version", type=str, required=True, help="Version of HumanEval+, as in https://github.com/ganler/release/releases/tag/humanevalplus"
    )
    args.add_argument(
        "--multiple-humaneval-path", type=str, required=True, help="Path to original HumanEval"
    )

    args = args.parse_args()

    os.makedirs(args.cache_folder, exist_ok=True)
    PLUS_PATH = os.path.join(args.humaneval_plus_path,f'HumanEvalPlus-v{args.humaneval_plus_version}.jsonl')
    os.makedirs(args.output_folder, exist_ok=True)


    problems = {}
    # Read HumanEval+ data
    with jsonlines.open(PLUS_PATH) as reader:
        for obj in reader:
            problems[obj['task_id']] = obj

    # Get ground truth results
    gt = get_groundtruth(problems, get_human_eval_plus_hash(PLUS_PATH), args.cache_folder)


    # Get canonical solutions from MultiPL-E
    for f in os.listdir(args.multiple_humaneval_path):
        if not f.endswith('.py'):
            continue
        ind = f.split('_')[1]
        with open(os.path.join(args.multiple_humaneval_path, f), 'r') as f:
            data = f.read().split("### Unit tests below ###")[0]
            problems[f'HumanEval/{ind}']['multiple_sol'] = data + '\n'

    # Generate tests
    for p in tqdm(problems):
        start = time.time()
        filename = f"{p.replace('/', '_')}_{problems[p]['entry_point']}.py"
        test_str = get_test(problems[p], gt[p])
        with open(os.path.join(args.output_folder, filename), 'w') as outf:
            outf.write(test_str)
        end = time.time()
        tqdm.write(f'{p} done in {end - start}')

    # problems skipped in original MultiPL-E
    os.remove(os.path.join(args.output_folder,'HumanEval_32_find_zero.py'))
    os.remove(os.path.join(args.output_folder,'HumanEval_38_decode_cyclic.py'))
    os.remove(os.path.join(args.output_folder,'HumanEval_50_decode_shift.py'))

    # problems which manipulate FP numbers and thus skipped
    os.remove(os.path.join(args.output_folder,'HumanEval_21_rescale_to_unit.py'))
    os.remove(os.path.join(args.output_folder,'HumanEval_2_truncate_number.py'))
    os.remove(os.path.join(args.output_folder,'HumanEval_45_triangle_area.py'))
    os.remove(os.path.join(args.output_folder,'HumanEval_4_mean_absolute_deviation.py'))

    run_test_str = 'import sys\nsys.set_int_max_str_digits(1000000)\n'
    run_test_str += f"sys.path.insert(0, '{args.output_folder}')\n"
    for f in os.listdir(args.output_folder):
        if not f.endswith('.py'):
            continue
        run_test_str += f'from {f[:-3]} import test_check\nprint("{f}")\ntest_check()\n\n'
        with open('tests.py', 'w') as outf:
            outf.write(run_test_str)

if __name__ == "__main__":
    # https://github.com/ganler/release/releases/tag/humanevalplus
    # python3 generate_data.py --output-folder ../datasets/humaneval_plus --cache-folder ../cache --humaneval-plus-path ../datasets --humaneval-plus-version 0.1.8 --multiple-humaneval-path ../datasets/originals-with-cleaned-doctests
    main()