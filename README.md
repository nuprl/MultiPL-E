# Multi-Programming Language Evaluation of Large Language Models of Code (MultiPL-E)

Please visit the [website](https://nuprl.github.io/MultiPL-E/) or read our [paper](https://arxiv.org/abs/2208.08227) for more information.

## Evaluation on Discovery

Running the full set of experiments in the original paper submission
took a few hours (less than half a day) with ~2,000 processors on
the Discovery cluster at Northeastern University. You may be able
to adapt these instructors for other clusters.

1. Reserve a shell for a couple of hours

   ```
   sbatch --time=6:00:00 ~a.guha/bin/shell
   watch squeue -u $USER
   ```

2. Ctrl+C when the machine is allocated, `ssh` into it, and start `tmux`
   or an equivalent program. You will almost certainly disconnect.

3. Checkout this branch (`only_code`) to a directory in /work

4. Checkout the experiments branch to a directory within your clone of this
   branch. i.e., experiments should be in the same directory as this README file.

5. Build the job list:

   ```
   cd rs
   cargo run --release build-job-list > ../src/files.txt
   ```

   This can take a 1-2 minutes to run. If you want it to run instantly, run it
   on a machine with a local NVMe SSD, such as the Wellesley server.

   Look at files.txt. You should see jobs you want to run. :)

6. Try to run *just one line* of the array job:

   ```
   cd ../src
   sbatch --array 1-1 discovery_array_job.sh
   ```

7. Monitor job progress with `watch squeue -u $USER`. When complete,
   examine the log file (`cat *.out`). If the job completes in less
   than a minute, something almost certainly went wrong. Run
   `git status ../experiments`. Look at some of the new results files.
   Ensure they make sense. E.g., unless the model you're evaluating is
   known to suck, you expect at some *some* `"status": "OK"` lines in
   almost every file.

8. Run the full array (you can omit the first one), where $N is the
   number of lines in `files.txt`:

   ```
   sbatch --array 1-$N discovery_array_job.sh
   ```

9. If you just want aggregate pass-k rates:

   ```
   cd ../rs
   cargo run --release pass-k-aggregates
   ```

10. For the analysis scripts:

    ```
    cd ../rs
     cargo run --release single-experiment-pass-k
    ```

