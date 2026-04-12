DOCKER_EXEC=podman

build: Dockerfile Adb.dockerfile Hy.dockerfile
	${DOCKER_EXEC} build -t multipl-e-evaluation .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:adb -f Adb.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:hy -f Hy.dockerfile .

test: build
	${DOCKER_EXEC} run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		multipl-e-evaluation --dir /inputs --output-dir /outputs --testing

all: build test
