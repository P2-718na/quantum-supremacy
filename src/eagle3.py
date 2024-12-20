from qiskit import QuantumCircuit, transpile, qasm2
from qiskit_aer import Aer, AerSimulator
from qiskit.quantum_info.operators import Operator
from math import sin, cos, e, pi, sqrt
from random import gauss
from qiskit.circuit.library import YGate, SXGate, XGate, UnitaryGate, RZGate, ECRGate
import random

import json

def save_pretty_json(data, file_path):
    try:
        with open(file_path, 'w') as json_file:
            json.dump(data, json_file, indent=4, sort_keys=True)
        print(f"JSON data successfully written to {file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

random.seed(0)

gates = [XGate(), SXGate()]

qbits = 10 #29 takes 30min on cpu 1e6 (5*qbits)**2, 28 takes 1min on gpu
depth = (5*qbits)**2
shots = 1e8
method = "statevector"
#method = "tensor_network"

max_qbits = 53

def create_random_circuit(n_qubits):
    circuit = QuantumCircuit(n_qubits)

    for d in range(depth):
        choice = random.choice([0, 1, 2, 3])
        qbit = random.randint(0, qbits - 1)

        if choice == 3:
            positon = random.choice([[qbit, qbit+1], [qbit, qbit-1]])
            if not all(qbit >= 0 and qbit < qbits for qbit in positon):
                continue
            circuit.append(ECRGate(), positon)
            continue

        if choice == 2:
            circuit.append(RZGate(random.choice([pi / 4, pi / 2, -pi / 4, -pi / 2, pi, 3/4 * pi, -3/4 *pi])), [qbit])
            continue
        circuit.append(gates[choice], [qbit])
    return circuit

#simulator = Aer.get_backend('aer_simulator_statevector') # up to 28qbitswith 8gb vram
simulator = AerSimulator(method=method, n_qubits=max_qbits)
print(simulator.available_methods())
print(simulator.configuration())
simulator.set_options(device='GPU', cuStateVec_enable=True)

print("Generating circuit")
circuit = create_random_circuit(n_qubits=qbits)
circuit.measure_all()

print("Done.")

print(circuit)

print("Transpiling")
circuit = transpile(circuit, simulator)
print("Done. sending simulation to backebd.")
job = simulator.run(circuit, shots=shots)

print("Done. Starting simulation.")
result = job.result()

print("Writing json.")
save_pretty_json(result.get_counts(), "../dist/output.json")
print(f'backend: {result.backend_name}')