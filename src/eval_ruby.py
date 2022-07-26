# Authored by Molly Feldman, based on code originally written by Arjun Guha
#
# This script runs the Ruby-fied HumanEval programs in ruby
import subprocess
from pathlib import Path

def main():
    total = 0
    successes = 0
    # For every file in ruby:
    directory = Path(Path(__file__).parent, "..", Path("datasets")).resolve()
    for filename in sorted(directory.glob("ruby/*.rb")):
        total += 1
        # Run it with ruby, suppressing all output
        p = subprocess.run(["ruby", filename],
            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, stdin=subprocess.DEVNULL)
        # Check exit code
        ok = p.returncode == 0
        if ok:
            successes += 1
        filename = str(filename).split("/ruby/")[1]
        print(f"Ruby,{filename},{ok}")
    print(f"{successes}/{total}")

if __name__ == "__main__":
    main()