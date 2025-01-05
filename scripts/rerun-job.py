from qiskit import QuantumCircuit
from qiskit import QuantumCircuit, transpile, qasm2
from qiskit.quantum_info import Statevector
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

def save_pretty_json(data, file_path):
    try:
        with open(file_path, 'w') as json_file:
            json.dump(data, json_file, indent=4, sort_keys=True)
        print(f"JSON data successfully written to {file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")


from qiskit import QuantumRegister, ClassicalRegister, QuantumCircuit
from numpy import pi

from qiskit import QuantumRegister, ClassicalRegister, QuantumCircuit
from numpy import pi

qreg_q = QuantumRegister(127, 'q')
creg_c = ClassicalRegister(10, 'c')
circuit = QuantumCircuit(qreg_q, creg_c)

circuit.rz(pi / 2, qreg_q[1])
circuit.sx(qreg_q[1])
circuit.rz(4 * pi / 3, qreg_q[1])
circuit.sx(qreg_q[1])
circuit.rz(5 * pi / 2, qreg_q[1])
circuit.barrier(qreg_q[1])

circuit.save_probabilities([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

circuit.measure(qreg_q[0], creg_c[0])
circuit.measure(qreg_q[1], creg_c[1])
circuit.measure(qreg_q[2], creg_c[2])
circuit.measure(qreg_q[3], creg_c[3])
circuit.measure(qreg_q[4], creg_c[4])
circuit.measure(qreg_q[5], creg_c[5])
circuit.measure(qreg_q[6], creg_c[6])
circuit.measure(qreg_q[7], creg_c[7])
circuit.measure(qreg_q[8], creg_c[8])
circuit.measure(qreg_q[9], creg_c[9])

simulator = AerSimulator(method="statevector", n_qubits=127)
simulator.set_options(device='GPU', cuStateVec_enable=True)
circuit = transpile(circuit, simulator)

# Run the simulation and measure time
print("Done. Sending simulation to backend.")
job = simulator.run(circuit, shots=1e7)

print("Done. Starting simulation.")
result = job.result()

proba = result.data()["probabilities"]
save_pretty_json(proba.tolist(), "probs.json")