# Evaluation Container

This directory contains code to evaluate all languages supported by MultiPL-E.

- We use a container to sandbox evaluation (use `--network none` as directed below);
- The container packages the build and run dependencies of all supported languages;
- The evaluation script enforces timeouts on code that runs forever;
- The evaluation script uses multicore to go faster;
- The evaluation script avoids re-running identical completions;
- The evaluation script avoids re-running completions with results that are already
  generated.

## Usage

The `build` command builds the container:

```bash
make build
```

To run the container, place all of the completion files under a directory, then use the `run` command.
Use the `--volume` option to create directory mappings.

```bash
	docker run --rm --network none 
		--volume ${PWD}/inputs:/inputs:ro \
		--volume ${PWD}/outputs:/outputs:rw \
		multipl-e-evaluation \
                --dir $INPUT_DIR \
                --output-dir $OUTPUT_DIR
```

The `$INPUT_DIR` argument should be a directory with completions. See the `test_inputs` for an example.
The `$OUTPUT_DIR` argument is the directory where results are generated.


## Specifying alternate docker instance

The docker (or podman) instance can be specified:

```bash
make DOCKER_EXEC="docker" test
```

(We use Podman by default.)

## Testing mode

A testing mode is provided to verify the correctness of the evaluation container.
In this mode, the script expects all completion files to only have two completions: the first one expects to pass and the second one expects to fail.
Read `src/main.py` for more detail.

To build the container and run the tests, run

```bash
make test
```

## Usage with Singularity

The Northeastern Discovery cluster uses Singularity containers. To use it on
Discovery, first pull the OCI container from a public registry. E.g., we have
uploaded it to the GitHub container registry:

```
singularity pull docker://ghcr.io/nuprl/multipl-e-evaluation
```

This creates a file called `multipl-e-evaluation_latest.sif`, which is the
container image.

You can now run the container as follows:

```
mkdir /scratch/a.guha/singularity_home
mkdir test_outputs
singularity exec \
    --home /scratch/a.guha/singularity_home:/home/a.guha \
    --network none \
    --bind test_inputs:/inputs:ro,test_outputs:/outputs:rw \
    /home/a.guha/multipl-e-evaluation_latest.sif \
    python3 src/main.py --dir /inputs --output-dir /outputs --testing
```

Some differences from Docker/Podman:

- The user in the container is *not* root, but your user
- By default, Singularity mounts your own home directory in the container. We
  could disable this with `--no-home`, but Swift requires a home directory for
  build artifacts. Therefore, we mount a scratch directory.
- Notice that we have to specify the command to run. Seems like Singularity does
  not have entrypoints like Docker.
- The current directory in which `singularity` runs is mounted in the container
  as read/writable. Maybe this can be disabled?
