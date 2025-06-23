DOCKER_EXEC=podman

build: Dockerfile Adb.dockerfile
	${DOCKER_EXEC} build --platform linux/arm64 -t multipl-e-evaluation-arm64 .
	${DOCKER_EXEC} build --platform linux/arm64 -t ghcr.io/nuprl/multipl-e-arm64:adb -f Adb.dockerfile

test: build
	${DOCKER_EXEC} run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		--entrypoint python3 \
		multipl-e-evaluation-arm64 \
		main.py --dir /inputs --output-dir /outputs --testing

all: build test