from qiskit import QuantumCircuit, transpile, qasm2
from qiskit_aer import Aer, AerSimulator
from qiskit.quantum_info.operators import Operator
from math import sin, cos, e, pi, sqrt, log
from random import gauss
from qiskit.circuit.library import YGate, SXGate, XGate, UnitaryGate, RZGate, ECRGate, CXGate
import random
import json
import time
import argparse
import os
import shutil

# Utility function to save JSON data
def save_pretty_json(data, file_path):
    try:
        with open(file_path, 'w') as json_file:
            json.dump(data, json_file, indent=4, sort_keys=True)
        print(f"JSON data successfully written to {file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

# Parse command-line arguments
parser = argparse.ArgumentParser(description="Quantum circuit simulation.")
parser.add_argument('--seed', type=int, default=0, help="Random seed for reproducibility.")
parser.add_argument('--qbits', type=int, default=10, help="Number of qubits.")
parser.add_argument('--shots', type=float, default=int(1e6), help="Number of shots.")
args = parser.parse_args()

# Set parameters from command-line arguments
random.seed(args.seed)
qbits = args.qbits
shots = int(args.shots)

# Define available gates
gates = [XGate(), SXGate()]

# Simulation parameters
depth = (5 * qbits) ** 2
method = "statevector"  # Simulation method
couplings = [[4, 5], [6, 7], [7, 8], [16, 26], [28, 29], [30, 31], [31, 32], [32, 36], [36, 51], [50, 49], [48, 47], [46, 45], [42, 41], [40, 39], [39, 38], [40, 41], [42, 43], [43, 44], [44, 45], [46, 47], [48, 49], [50, 51], [30, 29], [27, 26], [16, 8], [6, 5], [4, 3], [3, 2], [2, 1], [1, 0]]
available_qbits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 16, 26, 27, 28, 29, 30, 31, 32, 36, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38]
max_qbits = max(available_qbits)

# Result paths
base_folder     = f"../runs/{qbits}qbits/seed{args.seed}-shots1e{int(log(shots, 10))}/"
qasm_file_path  = base_folder + "circuit.qasm"
json_file_path  = base_folder + "output.json"
log_file_path   = base_folder + "log.txt"
code_backup_path = base_folder + "simulation_code.py"

# Ensure base folder exists
os.makedirs(base_folder, exist_ok=True)

# Backup the current script
current_script = __file__
try:
    shutil.copy(current_script, code_backup_path)
    print(f"Current script successfully backed up to {code_backup_path}")
except Exception as e:
    print(f"An error occurred while backing up the script: {e}")


# Function to create a random quantum circuit
def create_random_circuit(n_qubits):
    circuit = QuantumCircuit(n_qubits, n_qubits)
    qbits_in_use = available_qbits[:qbits]

    for d in range(depth):
        choice = random.choice([0, 1, 2, 3])
        qbit = random.choice(qbits_in_use)

        if choice == 3:
            while True:
                position = random.choice(couplings)
                if position[0] in qbits_in_use and position[1] in qbits_in_use:
                    break

            circuit.append(ECRGate(), position)
            circuit.barrier(position)
            continue

        if choice == 2:
            circuit.append(RZGate(random.uniform(-pi, pi)), [qbit])
            circuit.barrier([qbit])
            continue

        circuit.append(gates[choice], [qbit])
        circuit.barrier([qbit])

    for cbit, qbit in enumerate(qbits_in_use):
            circuit.measure([qbit], [cbit])
    return circuit

# Setup simulator
simulator = AerSimulator(method=method, n_qubits=max_qbits)
simulator.set_options(device='GPU', cuStateVec_enable=True)
print(simulator.available_methods())
print(simulator.configuration())

# Generate the quantum circuit
print("Generating circuit")
circuit = create_random_circuit(n_qubits=max_qbits)

print("Done.")
#print(circuit)

# Save the circuit QASM to a file
try:
    qasm2.dump(circuit, qasm_file_path)
    print(f"QASM successfully written to {qasm_file_path}")
except Exception as e:
    print(f"An error occurred while saving QASM: {e}")

# Transpile the circuit
print("Transpiling")
circuit = transpile(circuit, simulator)

# Run the simulation and measure time
start_time = time.time()
print("Done. Sending simulation to backend.")
job = simulator.run(circuit, shots=shots)

print("Done. Starting simulation.")
result = job.result()
end_time = time.time()

# Print benchmark timings
run_time = end_time - start_time
print(f"Time for job: {run_time:.2f} seconds")

# Save the results to a JSON file
print("Writing JSON.")
save_pretty_json(result.get_counts(), json_file_path)
print(f'backend: {result.backend_name}')

# Save all parameters and printed output to a log file
try:
    with open(log_file_path, 'w') as log_file:
        log_file.write(f"Random seed: {args.seed}\n")
        log_file.write(f"Number of qubits: {qbits}\n")
        log_file.write(f"Number of shots: {shots}\n")
        log_file.write(f"Simulation method: {method}\n")
        log_file.write(f"Time for job: {run_time:.2f} seconds\n")
        log_file.write(f"Backend used: {result.backend_name}\n")
    print(f"Simulation log successfully written to {log_file_path}")
except Exception as e:
    print(f"An error occurred while saving the log file: {e}")
