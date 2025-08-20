DOCKER_EXEC=podman

build: Dockerfile Adb.dockerfile
	${DOCKER_EXEC} build --platform=linux/amd64 -t multipl-e-evaluation .
	${DOCKER_EXEC} build --platform=linux/amd64 -t ghcr.io/nuprl/multipl-e:adb -f Adb.dockerfile

test: build
	${DOCKER_EXEC} run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		--entrypoint python3 \
		multipl-e-evaluation \
		main.py --dir /inputs --output-dir /outputs --testing

all: build test