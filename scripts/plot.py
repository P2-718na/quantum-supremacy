import json
import matplotlib.pyplot as plt
import argparse

def plot_sorted_histogram(input_file, output_file):
    """
    Reads a JSON file, sorts its integer values, and plots a histogram to a PDF.

    Parameters:
    input_file (str): The path to the JSON file to process.
    output_file (str): The path to the output PDF file for the histogram.

    Returns:
    None
    """
    try:
        # Load the JSON file
        with open(input_file, 'r') as file:
            data = json.load(file)

        # Ensure all elements have integer values
        if not all(isinstance(value, int) for value in data.values()) and not all(isinstance(value, float) for value in data.values()):
            raise ValueError("All elements in the JSON must have integer values.")

        # Sort the integers from highest to lowest
        sorted_values = sorted(data.values(), reverse=True)

        # Plot the histogram
        plt.figure(figsize=(10, 6))
        plt.plot(list(range(len(sorted_values))), sorted_values, color='blue')
        plt.title("Histogram of Sorted Integer Values")
        plt.xlabel("Value")
        plt.ylabel("Frequency")

        plt.grid(axis='y', linestyle='--', alpha=0.7)
        plt.xscale("log")

        # Save the plot to a PDF file
        plt.savefig(output_file)
        print(f"Histogram successfully saved to {output_file}")

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Plot a histogram from a JSON file with integer values.")
    parser.add_argument("input_file", type=str, help="Path to the input JSON file.")
    parser.add_argument("output_file", type=str, help="Path to the output PDF file for the histogram.")
    args = parser.parse_args()

    plot_sorted_histogram(args.input_file, args.output_file)
