DOCKER_EXEC=podman

build: Dockerfile Adb.dockerfile Hy.dockerfile Zig.dockerfile Tcl.dockerfile Elm.dockerfile Pascal.dockerfile
	${DOCKER_EXEC} build -t multipl-e-evaluation .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:adb -f Adb.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:hy -f Hy.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:zig -f Zig.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:tcl -f Tcl.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:elm -f Elm.dockerfile .
	${DOCKER_EXEC} build -t ghcr.io/nuprl/multipl-e:pascal -f Pascal.dockerfile .

test: build
	${DOCKER_EXEC} run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		multipl-e-evaluation --dir /inputs --output-dir /outputs --testing

all: build test
