# Faster Scripts for Data Processing

We are working with approximately 100,000 YAML files. Rust can process them in
seconds, where Python takes minutes. This program can:

1. Call the Python completion script for experiments that are missing completions.
2. Build a job list for experiments that are missing results.
3. Build a CSV with experiment results for the scripts in ../analysis
4. Produce a CSV that checks experiment completeness.

To install Rust from Conda:

```
conda install rust
```

Run the program in release mode:

```
cargo run --release
```
