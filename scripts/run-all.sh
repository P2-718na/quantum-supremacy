#!/bin/bash

# running everything takes 30minutes

# Define ranges for parameters
seeds=$(seq 0 1 9)
qbits=$(seq 10 3 28)

# Path to your Python script
script_path="../src/eagle3.py"

# Record the start time
start_time=$(date +%s)

# Loop through all combinations of parameters
for qbit in $qbits; do
    for seed in $seeds; do
        echo "Running simulation with seed=$seed and qbits=$qbit"
        python "$script_path" --seed $seed --qbits $qbit --shots 1e5
    done
done

# Calculate the elapsed time in minutes
end_time=$(date +%s)
elapsed_time=$((end_time - start_time))
elapsed_minutes=$((elapsed_time / 60))

# Print the total time taken
echo "Total time taken: $elapsed_minutes minutes"
