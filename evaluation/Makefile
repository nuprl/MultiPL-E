DOCKER_EXEC=podman

build: Dockerfile
	${DOCKER_EXEC} build -t multipl-e-evaluation -f Dockerfile 

simple-build: 
    ${DOCKER_EXEC} build -t multip-e-simple -f Dockerfile.simple

simple-test: simple-build
	${DOCKER_EXEC} run --rm \
		--network none \
		multipl-e-evaluation --file test.txt --lang rkt

test: build
	${DOCKER_EXEC} run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		multipl-e-evaluation --dir /inputs --output-dir /outputs --testing

all: build test