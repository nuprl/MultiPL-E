all:
	podman build -t multipl-e .

run:
	podman run --network none --volume $(PWD)/../..:/MultiPL-E:rw  -it --rm multipl-e /bin/bash
