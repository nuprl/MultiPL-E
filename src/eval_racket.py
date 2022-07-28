# Authored by Arjun Guha
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "racket").resolve()

    for filename in os.listdir(directory):

        try:
            # Assumes exit-code 0 is all okay
            # Run racket on the file, capturing stderr
            output = subprocess.check_output(["racket", os.path.join(directory, filename)],
                                        stderr=subprocess.STDOUT,
                                        encoding="utf-8", timeout=5)
            if output.find('ERROR') != -1 or output.find('FAILURE') != -1:
                status = "Exception"
            else:
                status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
                status = "Exception"
        filename = filename.split(".")[0]
        print(f"Racket,{filename},{status}")

if __name__ == "__main__":
    main()
