import numpy as np

# shots
# 10000, 14680, 21550, 31635, 46400, 68175, 100000
# 10     13     16     19     22     25     28

def compute_xeb_fidelity(simulated_probs, observed_counts, num_qubits):
    # Total number of observed samples
    total_samples = sum(observed_counts.values())

    print(sum(simulated_probs))
    print(total_samples)

    state_index, count = list(observed_counts.items())[0]
    print(simulated_probs[int(state_index)], count)
    print("len", len(simulated_probs))

    avg_prob = 0
    for bitstring, count in observed_counts.items():
        simulated_prob = simulated_probs[int(bitstring) if len(bitstring) != 52 else int(bitstring, 2)]
        observed_prob  = count / total_samples
        avg_prob += simulated_prob * observed_prob

    # Calculate the XEB fidelity
    fidelity = (2 ** num_qubits) * avg_prob - 1
    return fidelity


import json

# Placeholder for reading data from input files
def load_simulated_probs(file_path):
    try:
        with open(file_path, 'r') as file:
            simulated_probs = json.load(file)
        return simulated_probs
    except Exception as e:
        print(f"Error loading simulated probabilities: {e}")
        return {}

def load_observed_counts(file_path):

    try:
        with open(file_path, 'r') as file:
            observed_counts = json.load(file)
        return observed_counts
    except Exception as e:
        print(f"Error loading observed counts: {e}")
        return {}


if __name__ == "__main__":
    num_qubits = 25  # Example valu
    seed = 1

    # Placeholder paths for input files
    simulated_probs_file = f"../runs/{num_qubits}qbits/seed{seed}/probabilities.json"
    observed_counts_file = f"../jobs/{num_qubits}qbits/seed{seed}/counts.json"

    #simulated_probs_file = f"../dist/probabilities.json"
    observed_counts_file = "../dist/processed_counts.json"
    # Number of qubits in the circuie

    # Load data
    simulated_probs = load_simulated_probs(simulated_probs_file)

    observed_counts = load_observed_counts(observed_counts_file)

    # Compute XEB fidelity
    xeb_fidelity = compute_xeb_fidelity(simulated_probs, observed_counts, num_qubits)
    print(f"XEB Fidelity: {xeb_fidelity:.6f}")
