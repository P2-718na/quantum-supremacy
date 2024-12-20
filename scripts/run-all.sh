#!/bin/bash

# Define ranges for parameters
seeds=$(seq 0 1 9)
qbits=$(seq 10 4 28)

# Path to your Python script
script_path="path_to_your_python_script.py"

# Loop through all combinations of parameters
for seed in $seeds; do
    for qbit in $qbits; do
        echo "Running simulation with seed=$seed and qbits=$qbit"
        python "$script_path" --seed $seed --qbits $qbit --shots 1e5
    done
done
