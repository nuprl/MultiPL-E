"""
This script summarizes the delta between two revisions of MultiPL-E.
"""
import datasets
import argparse
import pandas as pd
from typing import List
from tqdm.auto import tqdm
import difflib
from pathlib import Path

# cspell:ignore nuprl tqdm dataframes iloc

def simple_diff(txt1: str, txt2: str):
    differ = difflib.Differ()
    return "\n".join(differ.compare(txt1.splitlines(), txt2.splitlines()))

def find_common_configs_and_report_added_and_removed(
    path: str, trust_remote_code, old_revision: str, new_revision: str
) -> List[str]:
    """
    Returns the list of common configs. Prints the configs added and removed
    between the two revisions.
    """
    old_configs = set(
        datasets.get_dataset_config_names(
            path, revision=old_revision, trust_remote_code=trust_remote_code
        )
    )
    new_configs = set(
        datasets.get_dataset_config_names(
            path, revision=new_revision, trust_remote_code=trust_remote_code
        )
    )

    removed_configs = list(old_configs - new_configs)
    removed_configs.sort()
    added_splits = list(new_configs - old_configs)
    added_splits.sort()
    common_splits = list(old_configs.intersection(new_configs))
    common_splits.sort()

    if len(removed_configs) > 0:
        print("Removed splits:")
        for split in removed_configs:
            print(f"-  {split}")
    if len(added_splits) > 0:
        print("Added splits:")
        for split in added_splits:
            print(f"-  {split}")

    return common_splits


def compare_configs_revisions(path: str, config: str, old_revision: str, new_revision: str, trust_remote_code: bool):
    old_df = datasets.load_dataset(
        path, config, split="test", trust_remote_code=trust_remote_code, revision=old_revision
    ).to_pandas()
    new_df = datasets.load_dataset(
        path, config, split="test", trust_remote_code=trust_remote_code, revision=new_revision
    ).to_pandas()

    # Outer join includes rows that are in either of the dataframes.
    merged_df = pd.merge(new_df, old_df, on="name", how="inner", suffixes=('_new', '_old'))
    merged_df = merged_df[["name", "prompt_new", "prompt_old", "tests_new", "tests_old"]]
    merged_df = merged_df.copy()
    merged_df["split"] = config
    merged_df = merged_df[(merged_df['prompt_new'] != merged_df['prompt_old']) | (merged_df['tests_new'] != merged_df['tests_old'])]
    return merged_df


def main_with_args(
    path: str, old_revision: str, new_revision: str, trust_remote_code: bool,
    output_dir: Path
):
    common_splits = find_common_configs_and_report_added_and_removed(
        path, old_revision, new_revision, trust_remote_code
    )
    diffs = [ ]
    for split in tqdm(common_splits, desc="Common splits"):
        diff = compare_configs_revisions(path, split, old_revision, new_revision, trust_remote_code)
        diffs.append(diff)
    diffs_df = pd.concat(diffs)
    diffs.clear()

    for item in diffs_df.iloc:
        split = item["split"]
        name = item["name"]
        if item["prompt_old"] != item["prompt_new"]:
            with open(output_dir / f"{split}_prompt_{name}.diff", "w") as f:
                f.write(simple_diff(item["prompt_old"], item["prompt_new"]))
        if item["tests_old"] != item["tests_new"]:
            with open(output_dir / f"{split}_tests_{name}.diff", "w") as f:
                f.write(simple_diff(item["tests_old"], item["tests_new"]))


    


def main():
    parser = argparse.ArgumentParser(
        description="Summarize the delta between two revisions of MultiPL-E."
    )
    parser.add_argument(
        "--path", type=str, default="nuprl/MultiPL-E", help="Path to the dataset"
    )
    parser.add_argument(
        "--old_revision",
        type=str,
        help="Old revision of the dataset",
        default="d23b094",
    )
    parser.add_argument(
        "--new_revision", type=str, help="New revision of the dataset", default="main"
    )
    parser.add_argument(
        "--trust-remote-code", action="store_true", help="Trust remote code on the Hub"
    )
    parser.add_argument("--output-dir", type=Path, required=True, help="Path to output the diffs")
    args = parser.parse_args()
    args_dict = vars(args)
    main_with_args(**args_dict)


if __name__ == "__main__":
    main()
