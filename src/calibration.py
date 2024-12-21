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

used_qbits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 16, 26, 27, 28, 29, 30, 31, 32, 36, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38]
max_qbit = max(used_qbits)

def create_consecutive_pairs(input_list, start_index=0):
    adjusted_list = input_list[start_index:]

    # Ensure the list has an even length by discarding the last element if odd
    if len(adjusted_list) % 2 != 0:
        adjusted_list = adjusted_list[:-1]

    # Create pairs
    return [[adjusted_list[i], adjusted_list[i+1]] for i in range(0, len(adjusted_list), 2)]

couplings =  create_consecutive_pairs(used_qbits)
couplings2 = create_consecutive_pairs(used_qbits, 1)

def create_calibration_circuit():
    circuit = QuantumCircuit(max_qbit+1)

    for coupling in couplings:
        circuit.ecr(coupling[0], coupling[1])
        circuit.barrier(coupling)

    for coupling in couplings2:
        circuit.ecr(coupling[0], coupling[1])
        circuit.barrier(coupling)

    return circuit

circuit = create_calibration_circuit()
circuit.measure_all()

print("Done.")
#print(circuit)

# Save the circuit QASM to a

os.makedirs("../runs/calibration", exist_ok=True)
qasm_file_path = "../runs/calibration/circuit.qasm"
try:
    qasm2.dump(circuit, qasm_file_path)
    print(f"QASM successfully written to {qasm_file_path}")
except Exception as e:
    print(f"An error occurred while saving QASM: {e}")
