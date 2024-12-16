from qiskit import QuantumCircuit, transpile
from qiskit_aer import Aer, AerSimulator
from qiskit.quantum_info.operators import Operator
from math import sin, cos, e, pi, sqrt
from random import gauss
from qiskit.circuit.library import YGate, SXGate, XGate, UnitaryGate
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

A = [
(31, 32),
(29, 24),
(40, 26),
(53, 44),
(21, 22),
(18,  7),
(25, 15),
(48, 42),
( 8, 11),
( 5,  1),
(16,  6),
(46, 51),
( 4, 11),
( 2,  3),
(12, 10),
(47, 41),
(13, 27),
( 9, 17),
(20, 19),
(50, 43),
(28, 39),
(23, 30),
(34, 33),
(49, 45)]

B = [
(32, 37),
(24, 21),
(26, 18),
(44, 25),
(22, 35),
( 7,  8),
(15,  5),
(42, 16),
( 1,  4),
( 6,  2),
(51, 12),
(14, 36),
( 3, 13),
(10,  9),
(41, 20),
(27, 38),
(17, 28),
(19, 23),
(43, 34)]

C = [
(52, 32),
(31, 24),
(29, 26),
(40, 44),
(37, 22),
(21,  7),
(18, 15),
(25, 42),
(35, 11),
(8, 1),
(5, 6),
(16, 51),
(4, 3),
(2, 10),
(12, 41),
(36, 27),
(13, 17),
(9, 19),
(20, 43),
(38, 39),
(28, 30),
(23, 33),
(34, 45)
]

D = [
(32, 21),
(24, 18),
(26, 25),
(44, 48),
(22, 8),
(7, 5),
(15, 16),
(42, 46),
(11, 4),
(1, 2),
(6, 12),
(51, 47),
(14, 13),
(3, 9),
(10, 20),
(41, 50),
(27, 28),
(17, 23),
(19, 34),
(43, 49)]

patterns = [A, B, C, D, C, D, A, B]
gates = [XGate().power(1/2), YGate().power(1/2), UnitaryGate([[0, (1-1j)*(1/sqrt(2))], [(1+1j)*(1/sqrt(2)), 0]], label="W^0.5")]

qbits = 20
depth = 14
shots = 1e7
method = "statevector"
#method = "tensor_network"

max_qbits = 54
max_depth = 20

thetas = {}
phis = {}

def hash(q1, q2):
    return str(q1) + str(q2)

for i in range(max_qbits):
    for j in range(max_qbits):
        thetas[hash(i, j)] = []
        phis[hash(i, j)] = []
        for d in range(max_depth):
            thetas[hash(i, j)].append(gauss(pi/2, .1))
            phis[hash(i, j)].append(gauss(pi / 6, .05))

def fSim(theta, phi):
    return Operator([
        [1, 0, 0, 0],
        [0, cos(theta), -1j*sin(theta), 0],
        [0, -1j*sin(theta), cos(theta), 0],
        [0, 0, 0, e**(-1j * phi)]
    ])

def applyFsim(circuit, qbits, depth):
    theta = thetas[hash(qbits[0], qbits[1])][depth]
    phi = phis[hash(qbits[0], qbits[1])][depth]
    circuit.unitary(fSim(theta, phi), qbits, label="fSim")

def create_random_circuit(n_qubits):
    circuit = QuantumCircuit(n_qubits)

    last_choice = [-1] * qbits

    for d in range(depth):
        for q in range(qbits):
            choice = random.choice([0, 1, 2])
            while choice == last_choice[q]:
                choice = random.choice([0, 1, 2])
            circuit.append(gates[choice], [q])
            last_choice[q] = choice

        for pattern in patterns:
            for coupling in pattern:
                a, b = coupling
                if a < qbits and b < qbits:
                    applyFsim(circuit, coupling, d)

        circuit.barrier()

    for q in range(qbits):
        choice = random.choice([0, 1, 2])
        while choice == last_choice[q]:
            choice = random.choice([0, 1, 2])
        circuit.append(gates[choice], [q])
        last_choice[q] = choice

    return circuit

#simulator = Aer.get_backend('aer_simulator_statevector') # up to 28qbitswith 8gb vram
simulator = AerSimulator(method=method, n_qubits=max_qbits)
print(simulator.available_methods())
print(simulator.configuration())
simulator.set_options(device='GPU')

print("Generating circuit")
circuit = create_random_circuit(n_qubits=qbits)
circuit.measure_all()

print("Done.")

#print(circuit)

print("Transpiling")
circuit = transpile(circuit, simulator)
print("Done. starting simulation")
job = simulator.run(circuit, shots=shots)
print("Done. Retrieving results.")
result = job.result()

print("Writing json.")
save_pretty_json(result.get_counts(), "../dist/output.json")
print(f'backend: {result.backend_name}')