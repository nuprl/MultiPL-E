Use this script to sanity-checking the running environment on the
Discovery cluster.

To check:

```
cd ../src
sbatch --array=0 polyglot.sh ../discovery_environment_check/test_job.txt
```

- Verify that there aren't crashes reported in the .out file in ../src.
- Check that the .results.yaml files in this directory are reasonable.

