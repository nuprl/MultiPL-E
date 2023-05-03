import math

LANGS = [
    "py",
]

def main():
    
    NUM_JOBS_PER_LANG = 3
    MAX_PROMPTS_PER_JOB =  math.ceil(161 / NUM_JOBS_PER_LANG)

    for lang in LANGS:
        for start_index in range(0, 400, MAX_PROMPTS_PER_JOB):
            LINE = [
                "python3", "automodel.py",
                "--name", "bigcode/temp-model", # TODO: change if downloaded to NFS
                "--lang", lang,
                "--output-dir-prefix", "send-to-arjun", # TODO: if needed, should be on NFS
                "--root-dataset", "mbpp",
                "--temperature", "0.2",
                "--batch-size", "50", # TODO: This will work on an 80GB GPU for every language
                "--input-start-index", str(start_index),
                "--input-limit", str(MAX_PROMPTS_PER_JOB)]
            print(" ".join(LINE))

if __name__ == "__main__":
    main()


