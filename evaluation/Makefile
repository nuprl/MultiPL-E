all:
	podman build -t multipl-e-evaluation .

test:
	podman run --rm \
		--network none \
		--volume $(PWD)/test_inputs:/inputs:ro \
		--volume $(PWD)/test_outputs:/outputs:rw \
		multipl-e-evaluation --dir /inputs --output-dir /outputs 