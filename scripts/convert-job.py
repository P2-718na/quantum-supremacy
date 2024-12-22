import json
import argparse

# Set up command-line argument parsing
parser = argparse.ArgumentParser(description="Process a JSON file and count occurrences of converted hex values.")
parser.add_argument("job_folder", help="Folder containing result.json")
args = parser.parse_args()

input_file  = args.job_folder + "/result.json"
output_file = args.job_folder + "/counts.json"

# Step 1: Read the input file
with open(input_file, "r") as file:
    data = json.load(file)

# Step 2: Convert hex strings to numbers
hex_samples = data["results"][0]["data"]["c"]["samples"]
number_samples = [int(sample, 16) for sample in hex_samples]

# Step 3: Create a dictionary of counts
counts = {}
for number in number_samples:
    counts[number] = counts.get(number, 0) + 1

# Step 4: Save the dictionary to the output file as JSON
with open(output_file, "w") as file:
    json.dump(counts, file, indent=2)

print(f"Results saved to {output_file}")
