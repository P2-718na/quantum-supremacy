from qiskit import QuantumCircuit, transpile
from qiskit_aer import Aer, AerSimulator

def create_ghz_circuit(n_qubits):
    circuit = QuantumCircuit(n_qubits)
    circuit.h(0)
    for qubit in range(n_qubits - 1):
        circuit.cx(qubit, qubit + 1)
        circuit.sx(qubit)
    return circuit

qbits = 20

#simulator = Aer.get_backend('aer_simulator_statevector') # up to 28qbitswith 8gb vram
simulator = AerSimulator(method="tensor_network", n_qubits=qbits)
print(simulator.available_methods())
print(simulator.configuration())
simulator.set_options(device='GPU')
circuit = create_ghz_circuit(n_qubits=qbits)
circuit.measure_all()
circuit = transpile(circuit, simulator)
job = simulator.run(circuit)
result = job.result()

print(result.get_counts())
print(f'backend: {result.backend_name}')