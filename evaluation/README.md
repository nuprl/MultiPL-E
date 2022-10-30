# Evaluation Container

The evaluation container runs completions on all 18 languages supported by MutiPL-E.

## Usage

The `build` command builds the container:

```bash
make build
```

To run the container, place all of the completion files under a directory, then use the `run` command.
Use the `--volume` option to create directory mappings.

```bash
	docker run --rm --network none 
		--volume $(PWD)/inputs:/inputs:ro \
		--volume $(PWD)/outputs:/outputs:rw \
		multipl-e-evaluation --dir /inputs --output-dir /outputs --testing
```

Read `src/main.py` for options passed into the application itself.

## Specifying alternate docker instance

The docker (or podman) instance can be specified:

```bash
make DOCKER_EXEC="docker" test
```

The default instance is the `podman` command.

## Testing mode

A testing mode is provided to verify the correctness of the evaluation container.
In this mode, the script expects all completion files to only have two completions: the first one expects to pass and the second one expects to fail.
Read `src/main.py` for more detail.

To build the container and run the tests, run

```bash
make test
```



