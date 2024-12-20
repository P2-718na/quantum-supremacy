OPENQASM 2.0;
include "qelib1.inc";
gate rzx(param0) q0,q1 { h q1; cx q0,q1; rz(param0) q1; cx q0,q1; h q1; }
gate ecr q0,q1 { rzx(pi/4) q0,q1; x q0; rzx(-pi/4) q0,q1; }
qreg q[10];
creg meas[10];
sx q[5];
ecr q[2],q[3];
x q[1];
sx q[3];
sx q[6];
x q[7];
ecr q[7],q[6];
ecr q[1],q[0];
sx q[0];
rz(-pi/2) q[8];
ecr q[6],q[7];
rz(-3*pi/4) q[1];
x q[6];
ecr q[1],q[2];
rz(3*pi/4) q[3];
x q[7];
sx q[9];
sx q[9];
x q[8];
x q[7];
sx q[2];
ecr q[9],q[8];
rz(-pi/4) q[8];
ecr q[2],q[3];
x q[8];
rz(3*pi/4) q[5];
ecr q[8],q[9];
rz(-pi/4) q[2];
rz(3*pi/4) q[8];
x q[8];
sx q[5];
sx q[0];
rz(pi/2) q[5];
rz(-pi/2) q[0];
rz(-pi/4) q[6];
ecr q[2],q[1];
x q[2];
x q[3];
sx q[4];
x q[0];
ecr q[5],q[6];
ecr q[3],q[4];
ecr q[9],q[8];
ecr q[6],q[7];
x q[4];
x q[0];
x q[1];
rz(-3*pi/4) q[2];
ecr q[2],q[3];
sx q[0];
sx q[5];
rz(-pi/4) q[5];
rz(3*pi/4) q[0];
ecr q[3],q[4];
x q[9];
sx q[2];
rz(-pi/2) q[6];
x q[1];
sx q[9];
sx q[7];
ecr q[2],q[1];
x q[1];
ecr q[2],q[1];
x q[7];
ecr q[5],q[4];
sx q[0];
sx q[0];
ecr q[1],q[2];
sx q[0];
x q[5];
ecr q[8],q[9];
sx q[8];
sx q[5];
ecr q[8],q[9];
x q[4];
rz(3*pi/4) q[1];
rz(pi/2) q[6];
rz(pi) q[1];
ecr q[5],q[4];
rz(-3*pi/4) q[5];
rz(pi/2) q[1];
ecr q[5],q[4];
rz(-pi/4) q[3];
ecr q[9],q[8];
rz(pi) q[9];
rz(pi/2) q[6];
ecr q[8],q[9];
rz(pi/4) q[2];
ecr q[4],q[3];
x q[9];
rz(-pi/4) q[4];
rz(3*pi/4) q[4];
ecr q[3],q[2];
sx q[3];
ecr q[3],q[4];
sx q[5];
ecr q[1],q[2];
ecr q[1],q[2];
ecr q[0],q[1];
x q[9];
sx q[4];
x q[1];
ecr q[7],q[6];
x q[2];
rz(-pi/4) q[1];
x q[1];
sx q[5];
x q[3];
x q[9];
rz(-pi/4) q[3];
rz(pi/4) q[5];
x q[9];
rz(pi/2) q[6];
sx q[4];
ecr q[2],q[1];
x q[1];
sx q[1];
rz(-pi/4) q[2];
sx q[1];
x q[0];
sx q[2];
rz(pi/2) q[4];
ecr q[1],q[2];
sx q[2];
sx q[5];
sx q[6];
sx q[2];
sx q[7];
x q[7];
rz(-3*pi/4) q[6];
ecr q[9],q[8];
ecr q[5],q[6];
rz(3*pi/4) q[4];
ecr q[2],q[1];
ecr q[8],q[7];
sx q[9];
ecr q[2],q[1];
ecr q[1],q[0];
ecr q[0],q[1];
rz(-pi/4) q[8];
rz(3*pi/4) q[6];
x q[9];
sx q[0];
x q[2];
rz(pi/4) q[8];
rz(pi/4) q[5];
rz(-pi/2) q[1];
sx q[3];
ecr q[5],q[4];
rz(-pi/4) q[6];
x q[2];
rz(pi/4) q[0];
sx q[8];
rz(-pi/4) q[7];
ecr q[8],q[9];
rz(3*pi/4) q[2];
rz(-3*pi/4) q[0];
ecr q[4],q[3];
ecr q[4],q[3];
ecr q[7],q[6];
x q[7];
ecr q[5],q[6];
x q[5];
ecr q[5],q[4];
ecr q[3],q[4];
sx q[8];
x q[1];
rz(pi/2) q[3];
ecr q[4],q[5];
x q[0];
x q[7];
sx q[5];
rz(pi/4) q[0];
x q[2];
rz(pi/4) q[4];
x q[3];
rz(-3*pi/4) q[5];
x q[6];
sx q[0];
x q[8];
sx q[7];
ecr q[1],q[0];
sx q[1];
sx q[5];
ecr q[3],q[4];
rz(-3*pi/4) q[1];
ecr q[5],q[6];
sx q[0];
ecr q[4],q[3];
rz(-pi/4) q[8];
x q[6];
sx q[3];
sx q[1];
ecr q[2],q[1];
sx q[1];
ecr q[5],q[4];
ecr q[9],q[8];
sx q[9];
sx q[7];
x q[3];
rz(pi/2) q[9];
sx q[3];
rz(pi) q[2];
rz(-pi/2) q[1];
rz(pi/2) q[9];
sx q[9];
ecr q[5],q[4];
x q[1];
ecr q[7],q[6];
x q[7];
rz(3*pi/4) q[8];
sx q[0];
x q[9];
rz(3*pi/4) q[5];
sx q[1];
x q[7];
rz(pi) q[1];
x q[3];
sx q[1];
x q[5];
rz(3*pi/4) q[6];
rz(pi) q[7];
sx q[7];
rz(-pi/2) q[0];
x q[8];
ecr q[7],q[6];
sx q[1];
sx q[5];
rz(pi) q[9];
ecr q[8],q[9];
rz(3*pi/4) q[2];
rz(pi) q[5];
x q[6];
rz(pi/2) q[1];
ecr q[7],q[6];
sx q[7];
x q[1];
rz(pi/2) q[1];
ecr q[1],q[2];
sx q[2];
ecr q[5],q[6];
sx q[7];
sx q[6];
x q[8];
rz(pi/4) q[4];
x q[7];
rz(-pi/4) q[4];
x q[1];
sx q[7];
ecr q[9],q[8];
x q[2];
x q[5];
sx q[6];
ecr q[5],q[4];
x q[6];
ecr q[6],q[7];
x q[2];
sx q[7];
sx q[4];
sx q[3];
x q[5];
rz(-3*pi/4) q[1];
sx q[8];
rz(-3*pi/4) q[8];
ecr q[4],q[5];
sx q[6];
x q[9];
x q[2];
sx q[1];
sx q[2];
ecr q[4],q[3];
x q[7];
rz(-pi/2) q[1];
ecr q[7],q[6];
rz(3*pi/4) q[7];
sx q[4];
x q[9];
x q[0];
rz(pi/4) q[6];
rz(pi/4) q[5];
sx q[9];
x q[8];
ecr q[0],q[1];
x q[1];
rz(pi/2) q[2];
rz(-3*pi/4) q[5];
rz(pi/2) q[1];
sx q[8];
sx q[4];
x q[6];
x q[3];
x q[1];
ecr q[5],q[6];
rz(pi/4) q[3];
rz(pi) q[5];
ecr q[8],q[9];
rz(pi/2) q[4];
x q[4];
x q[8];
x q[9];
rz(pi/2) q[8];
rz(pi) q[8];
sx q[0];
sx q[0];
sx q[5];
rz(3*pi/4) q[7];
rz(3*pi/4) q[5];
rz(-pi/4) q[2];
ecr q[7],q[8];
rz(pi) q[1];
rz(-3*pi/4) q[9];
x q[4];
rz(pi/4) q[8];
rz(pi/4) q[0];
ecr q[6],q[7];
x q[0];
sx q[8];
x q[5];
rz(3*pi/4) q[8];
sx q[6];
sx q[7];
ecr q[4],q[3];
ecr q[7],q[8];
ecr q[8],q[7];
ecr q[7],q[6];
x q[8];
sx q[3];
sx q[6];
ecr q[5],q[6];
rz(-pi/4) q[8];
x q[4];
sx q[6];
ecr q[8],q[7];
ecr q[5],q[6];
sx q[5];
sx q[2];
sx q[3];
x q[6];
sx q[9];
x q[2];
rz(pi/4) q[4];
sx q[7];
x q[5];
x q[9];
rz(3*pi/4) q[1];
sx q[0];
x q[5];
rz(3*pi/4) q[5];
rz(-3*pi/4) q[2];
x q[2];
ecr q[0],q[1];
ecr q[7],q[6];
ecr q[3],q[4];
rz(3*pi/4) q[9];
ecr q[5],q[4];
ecr q[2],q[1];
ecr q[1],q[2];
sx q[5];
sx q[8];
rz(-pi/4) q[3];
rz(-pi/2) q[4];
x q[0];
x q[6];
x q[3];
sx q[8];
x q[1];
sx q[7];
ecr q[1],q[2];
rz(pi/4) q[4];
rz(-pi/4) q[1];
rz(-3*pi/4) q[8];
rz(pi) q[7];
sx q[3];
x q[1];
sx q[7];
rz(-3*pi/4) q[0];
x q[6];
rz(3*pi/4) q[6];
x q[2];
rz(3*pi/4) q[6];
rz(-pi/2) q[7];
ecr q[7],q[8];
ecr q[5],q[4];
rz(-pi/4) q[6];
rz(-pi/2) q[7];
x q[3];
x q[4];
x q[8];
x q[2];
x q[0];
x q[9];
sx q[8];
ecr q[7],q[6];
sx q[1];
rz(-3*pi/4) q[8];
rz(-pi/2) q[4];
sx q[9];
ecr q[5],q[4];
rz(-pi/2) q[2];
rz(3*pi/4) q[0];
x q[0];
sx q[6];
sx q[9];
sx q[2];
x q[2];
rz(-pi/2) q[7];
sx q[9];
sx q[6];
rz(pi) q[6];
ecr q[0],q[1];
x q[7];
x q[2];
rz(pi/4) q[7];
ecr q[4],q[5];
x q[1];
rz(-3*pi/4) q[2];
ecr q[5],q[6];
ecr q[5],q[6];
x q[9];
sx q[7];
sx q[7];
sx q[4];
ecr q[8],q[7];
rz(-3*pi/4) q[5];
rz(-pi/4) q[9];
rz(pi/2) q[0];
sx q[6];
rz(pi/4) q[2];
rz(pi/4) q[4];
sx q[7];
rz(pi/2) q[9];
ecr q[6],q[7];
sx q[8];
ecr q[5],q[4];
x q[4];
sx q[9];
ecr q[8],q[9];
ecr q[1],q[2];
x q[0];
x q[2];
rz(3*pi/4) q[8];
sx q[0];
ecr q[2],q[1];
rz(-pi/4) q[9];
ecr q[3],q[4];
ecr q[6],q[5];
rz(-pi/2) q[0];
sx q[5];
ecr q[4],q[5];
ecr q[1],q[2];
ecr q[8],q[9];
rz(-pi/4) q[3];
sx q[2];
rz(3*pi/4) q[4];
sx q[1];
x q[8];
rz(pi/4) q[7];
x q[5];
x q[2];
ecr q[2],q[3];
ecr q[2],q[1];
sx q[5];
rz(-3*pi/4) q[0];
rz(pi/2) q[1];
ecr q[7],q[6];
sx q[2];
ecr q[7],q[8];
rz(pi/4) q[2];
x q[6];
x q[3];
x q[2];
sx q[6];
sx q[4];
x q[9];
rz(3*pi/4) q[0];
x q[7];
sx q[4];
x q[1];
ecr q[4],q[3];
ecr q[6],q[5];
rz(-3*pi/4) q[1];
ecr q[2],q[1];
ecr q[6],q[7];
x q[1];
ecr q[6],q[7];
ecr q[8],q[7];
sx q[0];
sx q[2];
x q[4];
x q[9];
rz(pi) q[1];
sx q[8];
ecr q[3],q[2];
x q[8];
sx q[3];
sx q[9];
rz(pi/2) q[5];
sx q[6];
x q[5];
sx q[8];
rz(3*pi/4) q[1];
ecr q[3],q[4];
ecr q[1],q[2];
rz(-pi/4) q[2];
sx q[6];
ecr q[1],q[2];
rz(3*pi/4) q[8];
ecr q[7],q[8];
sx q[8];
rz(pi/4) q[2];
rz(pi/4) q[4];
ecr q[7],q[6];
x q[4];
ecr q[2],q[3];
sx q[3];
sx q[9];
rz(-3*pi/4) q[1];
x q[8];
x q[7];
rz(pi) q[7];
ecr q[2],q[1];
rz(pi) q[3];
ecr q[7],q[6];
sx q[4];
rz(-pi/4) q[9];
sx q[9];
rz(3*pi/4) q[4];
x q[3];
sx q[2];
rz(-3*pi/4) q[6];
rz(pi/4) q[1];
sx q[9];
ecr q[6],q[7];
sx q[6];
x q[9];
sx q[1];
sx q[8];
ecr q[2],q[3];
ecr q[3],q[2];
x q[5];
rz(-pi/4) q[0];
ecr q[4],q[3];
rz(pi/4) q[2];
x q[8];
rz(3*pi/4) q[3];
rz(-3*pi/4) q[3];
rz(3*pi/4) q[1];
sx q[9];
rz(-3*pi/4) q[2];
x q[8];
x q[6];
sx q[3];
sx q[2];
rz(-pi/4) q[7];
x q[0];
x q[6];
x q[9];
ecr q[8],q[7];
rz(pi) q[7];
sx q[4];
x q[1];
sx q[4];
sx q[1];
rz(3*pi/4) q[3];
ecr q[6],q[5];
sx q[1];
x q[3];
sx q[8];
sx q[3];
x q[9];
ecr q[4],q[5];
rz(pi/2) q[8];
ecr q[8],q[7];
rz(-pi/2) q[8];
ecr q[5],q[4];
x q[1];
x q[3];
x q[2];
sx q[0];
x q[2];
sx q[8];
sx q[2];
ecr q[6],q[7];
rz(pi/4) q[8];
rz(3*pi/4) q[8];
x q[8];
ecr q[1],q[0];
rz(pi/2) q[6];
rz(-3*pi/4) q[4];
sx q[8];
ecr q[1],q[0];
x q[3];
ecr q[1],q[2];
ecr q[7],q[8];
x q[3];
x q[3];
x q[5];
sx q[5];
sx q[3];
rz(-pi/4) q[2];
rz(-pi/2) q[9];
x q[5];
x q[4];
ecr q[2],q[1];
sx q[6];
sx q[2];
sx q[0];
x q[9];
sx q[5];
x q[5];
x q[1];
ecr q[4],q[5];
sx q[0];
sx q[4];
rz(-pi/2) q[5];
rz(3*pi/4) q[6];
rz(pi/4) q[1];
rz(pi/2) q[3];
sx q[6];
x q[1];
x q[6];
ecr q[3],q[4];
x q[7];
rz(-3*pi/4) q[2];
sx q[0];
x q[7];
rz(-pi/4) q[3];
x q[2];
x q[8];
ecr q[2],q[3];
ecr q[8],q[7];
rz(pi/2) q[4];
rz(-3*pi/4) q[3];
x q[5];
x q[8];
ecr q[9],q[8];
ecr q[5],q[6];
x q[5];
rz(-pi/4) q[5];
rz(3*pi/4) q[1];
ecr q[4],q[3];
sx q[4];
ecr q[3],q[4];
sx q[1];
rz(pi) q[8];
rz(pi/2) q[6];
ecr q[3],q[4];
x q[7];
rz(3*pi/4) q[3];
sx q[8];
sx q[3];
sx q[4];
ecr q[7],q[8];
sx q[1];
x q[3];
x q[4];
rz(pi/4) q[3];
rz(pi/2) q[9];
rz(3*pi/4) q[7];
rz(-pi/4) q[1];
sx q[1];
x q[9];
sx q[7];
ecr q[8],q[7];
ecr q[1],q[2];
sx q[8];
x q[3];
ecr q[8],q[7];
rz(-3*pi/4) q[8];
x q[1];
rz(pi/2) q[7];
x q[6];
sx q[2];
x q[0];
x q[0];
rz(-pi/4) q[7];
x q[3];
x q[7];
x q[4];
rz(3*pi/4) q[7];
ecr q[0],q[1];
sx q[8];
ecr q[1],q[2];
sx q[8];
ecr q[4],q[5];
sx q[4];
sx q[3];
ecr q[4],q[5];
x q[5];
x q[8];
rz(-3*pi/4) q[4];
rz(-pi/2) q[4];
ecr q[6],q[7];
x q[2];
rz(-3*pi/4) q[9];
x q[6];
x q[9];
ecr q[1],q[0];
ecr q[8],q[9];
rz(pi) q[1];
rz(pi) q[1];
x q[9];
rz(pi) q[8];
sx q[7];
x q[6];
sx q[7];
sx q[9];
rz(3*pi/4) q[8];
ecr q[6],q[7];
x q[1];
ecr q[2],q[1];
rz(pi/2) q[8];
x q[4];
rz(-pi/4) q[2];
rz(-pi/4) q[4];
ecr q[0],q[1];
sx q[2];
rz(pi/2) q[0];
x q[4];
sx q[7];
ecr q[1],q[2];
x q[1];
rz(3*pi/4) q[6];
x q[7];
rz(-pi/4) q[6];
ecr q[3],q[4];
x q[6];
sx q[6];
rz(-3*pi/4) q[4];
x q[4];
rz(-pi/2) q[3];
ecr q[0],q[1];
rz(pi) q[1];
ecr q[9],q[8];
rz(pi/4) q[7];
rz(pi) q[2];
sx q[9];
x q[8];
ecr q[0],q[1];
x q[7];
rz(3*pi/4) q[7];
ecr q[3],q[2];
rz(-pi/4) q[9];
ecr q[8],q[7];
rz(-pi/4) q[2];
rz(3*pi/4) q[4];
ecr q[0],q[1];
sx q[4];
x q[4];
x q[4];
x q[6];
rz(-pi/2) q[3];
sx q[6];
rz(-pi/4) q[7];
rz(3*pi/4) q[1];
rz(pi) q[9];
rz(-pi/2) q[5];
ecr q[2],q[3];
ecr q[3],q[2];
rz(pi/2) q[1];
sx q[1];
rz(pi/4) q[2];
rz(pi/4) q[7];
rz(-pi/4) q[4];
sx q[6];
x q[8];
sx q[4];
x q[2];
sx q[7];
ecr q[7],q[8];
ecr q[7],q[6];
sx q[3];
x q[5];
x q[0];
rz(-3*pi/4) q[9];
sx q[9];
ecr q[4],q[5];
ecr q[6],q[5];
rz(-pi/2) q[9];
rz(pi/4) q[1];
ecr q[3],q[2];
ecr q[1],q[2];
ecr q[3],q[2];
sx q[9];
x q[5];
rz(-3*pi/4) q[3];
rz(pi/2) q[9];
sx q[5];
sx q[7];
x q[0];
ecr q[7],q[6];
ecr q[7],q[6];
rz(pi/2) q[6];
x q[3];
x q[7];
x q[2];
sx q[0];
rz(3*pi/4) q[6];
sx q[5];
rz(pi) q[1];
x q[1];
rz(pi/2) q[8];
ecr q[2],q[1];
x q[7];
sx q[2];
ecr q[3],q[2];
rz(pi/2) q[7];
rz(3*pi/4) q[3];
sx q[5];
sx q[5];
rz(3*pi/4) q[0];
ecr q[1],q[0];
ecr q[7],q[8];
sx q[7];
ecr q[8],q[9];
sx q[4];
x q[0];
x q[4];
rz(3*pi/4) q[3];
sx q[5];
x q[7];
ecr q[4],q[3];
ecr q[5],q[4];
sx q[7];
ecr q[5],q[4];
x q[3];
rz(pi) q[1];
sx q[0];
sx q[2];
rz(pi/4) q[4];
sx q[6];
sx q[4];
ecr q[8],q[9];
sx q[3];
ecr q[8],q[9];
sx q[5];
rz(-3*pi/4) q[9];
sx q[5];
x q[3];
rz(-pi/2) q[0];
x q[8];
sx q[6];
x q[2];
ecr q[4],q[5];
rz(pi/2) q[7];
rz(pi/2) q[0];
sx q[1];
x q[5];
ecr q[2],q[1];
rz(pi/4) q[8];
rz(pi/2) q[7];
x q[6];
x q[7];
sx q[6];
sx q[2];
rz(pi) q[2];
x q[5];
ecr q[1],q[0];
rz(pi/2) q[1];
x q[7];
sx q[4];
x q[8];
ecr q[1],q[0];
rz(-pi/2) q[2];
ecr q[8],q[7];
rz(pi/4) q[5];
ecr q[2],q[1];
rz(-pi/4) q[2];
ecr q[1],q[0];
rz(-3*pi/4) q[5];
x q[3];
sx q[7];
ecr q[5],q[6];
rz(-pi/4) q[2];
x q[6];
rz(-pi/2) q[2];
ecr q[3],q[4];
x q[6];
ecr q[3],q[2];
ecr q[1],q[2];
x q[0];
rz(3*pi/4) q[5];
x q[2];
sx q[6];
sx q[3];
rz(-pi/2) q[9];
ecr q[3],q[2];
rz(pi/2) q[2];
rz(-pi/2) q[8];
ecr q[6],q[7];
rz(pi/2) q[2];
x q[4];
rz(pi/2) q[4];
ecr q[0],q[1];
rz(-3*pi/4) q[2];
rz(-pi/2) q[1];
rz(-pi/4) q[3];
x q[1];
ecr q[1],q[2];
ecr q[8],q[9];
sx q[9];
rz(pi/4) q[7];
ecr q[4],q[3];
rz(pi) q[1];
sx q[6];
rz(pi/2) q[9];
sx q[5];
sx q[9];
x q[0];
x q[4];
sx q[0];
rz(-pi/4) q[5];
x q[2];
ecr q[8],q[7];
sx q[5];
sx q[6];
sx q[2];
sx q[4];
x q[6];
sx q[2];
sx q[7];
x q[3];
sx q[6];
x q[0];
ecr q[8],q[9];
sx q[2];
sx q[9];
sx q[7];
ecr q[4],q[5];
rz(pi/4) q[2];
sx q[8];
x q[3];
x q[8];
sx q[5];
rz(-pi/2) q[7];
sx q[8];
rz(pi) q[1];
sx q[3];
sx q[3];
rz(3*pi/4) q[6];
x q[5];
sx q[1];
sx q[3];
x q[5];
ecr q[5],q[4];
rz(pi/2) q[6];
x q[7];
sx q[5];
rz(pi) q[5];
sx q[4];
rz(-pi/4) q[2];
sx q[2];
rz(-pi/4) q[7];
rz(-pi/2) q[0];
rz(-3*pi/4) q[7];
x q[2];
rz(pi/4) q[1];
rz(-pi/2) q[2];
x q[3];
x q[0];
ecr q[3],q[4];
rz(-pi/2) q[2];
sx q[2];
sx q[4];
ecr q[8],q[9];
sx q[9];
ecr q[6],q[7];
rz(pi/2) q[0];
ecr q[2],q[1];
sx q[3];
sx q[7];
sx q[8];
rz(-3*pi/4) q[4];
ecr q[7],q[6];
x q[8];
x q[4];
x q[8];
sx q[9];
sx q[3];
sx q[2];
rz(pi) q[7];
sx q[5];
rz(pi) q[3];
rz(-3*pi/4) q[5];
sx q[4];
rz(pi/4) q[5];
rz(pi/4) q[1];
sx q[6];
sx q[6];
ecr q[4],q[5];
x q[3];
sx q[9];
ecr q[7],q[6];
ecr q[3],q[4];
x q[0];
x q[7];
rz(-pi/2) q[2];
rz(-pi/2) q[5];
sx q[0];
x q[8];
ecr q[8],q[7];
ecr q[7],q[6];
rz(pi) q[5];
ecr q[3],q[4];
sx q[6];
ecr q[9],q[8];
ecr q[2],q[3];
ecr q[1],q[0];
sx q[1];
rz(-3*pi/4) q[9];
x q[3];
ecr q[4],q[5];
rz(-3*pi/4) q[7];
rz(pi) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[6];
sx q[4];
sx q[7];
ecr q[7],q[8];
x q[0];
ecr q[6],q[5];
ecr q[1],q[0];
sx q[0];
sx q[6];
sx q[5];
ecr q[1],q[0];
x q[8];
ecr q[2],q[1];
rz(pi/2) q[8];
x q[2];
rz(3*pi/4) q[2];
x q[6];
sx q[1];
x q[3];
ecr q[8],q[7];
rz(-3*pi/4) q[4];
sx q[9];
x q[2];
rz(-pi/2) q[0];
x q[6];
rz(pi/4) q[4];
x q[6];
rz(-pi/4) q[6];
x q[4];
ecr q[2],q[3];
sx q[3];
rz(-3*pi/4) q[4];
ecr q[4],q[5];
sx q[2];
rz(pi/2) q[5];
sx q[4];
x q[4];
sx q[3];
x q[7];
x q[9];
x q[7];
sx q[2];
rz(pi) q[5];
ecr q[4],q[3];
ecr q[9],q[8];
rz(pi/4) q[2];
ecr q[2],q[1];
ecr q[2],q[3];
x q[8];
x q[9];
rz(3*pi/4) q[0];
x q[3];
sx q[5];
sx q[6];
x q[7];
x q[3];
ecr q[8],q[9];
ecr q[9],q[8];
x q[4];
ecr q[6],q[7];
rz(3*pi/4) q[3];
rz(3*pi/4) q[3];
sx q[0];
ecr q[2],q[1];
rz(-3*pi/4) q[2];
x q[8];
ecr q[5],q[6];
x q[5];
sx q[8];
ecr q[8],q[9];
sx q[9];
rz(pi/4) q[9];
ecr q[2],q[1];
ecr q[2],q[3];
rz(-pi/4) q[3];
ecr q[1],q[0];
sx q[6];
sx q[0];
ecr q[6],q[7];
sx q[9];
ecr q[6],q[7];
sx q[2];
sx q[4];
x q[8];
x q[7];
ecr q[5],q[4];
x q[6];
rz(-pi/2) q[0];
ecr q[4],q[5];
ecr q[3],q[4];
ecr q[8],q[7];
ecr q[6],q[7];
rz(-pi/2) q[8];
x q[0];
x q[9];
rz(pi/2) q[1];
ecr q[3],q[4];
ecr q[0],q[1];
x q[9];
x q[5];
sx q[6];
sx q[3];
x q[4];
sx q[8];
sx q[9];
sx q[2];
sx q[6];
sx q[9];
x q[6];
sx q[0];
rz(3*pi/4) q[3];
x q[1];
sx q[0];
rz(3*pi/4) q[1];
sx q[4];
ecr q[8],q[9];
x q[9];
rz(-pi/4) q[4];
ecr q[6],q[5];
x q[3];
sx q[1];
ecr q[2],q[1];
x q[5];
sx q[9];
ecr q[3],q[2];
x q[2];
x q[3];
rz(-pi/2) q[1];
x q[1];
sx q[3];
rz(-pi/2) q[4];
sx q[9];
x q[5];
rz(pi/2) q[4];
ecr q[5],q[6];
rz(-pi/4) q[4];
rz(3*pi/4) q[3];
sx q[9];
x q[9];
rz(-3*pi/4) q[0];
x q[5];
ecr q[2],q[1];
x q[6];
x q[9];
x q[8];
rz(3*pi/4) q[8];
sx q[7];
sx q[0];
rz(-pi/2) q[9];
sx q[8];
x q[7];
x q[9];
sx q[6];
x q[2];
x q[0];
sx q[0];
rz(-pi/2) q[2];
ecr q[5],q[6];
ecr q[2],q[3];
sx q[5];
ecr q[0],q[1];
x q[2];
ecr q[3],q[4];
ecr q[3],q[4];
sx q[4];
ecr q[1],q[0];
x q[2];
ecr q[3],q[4];
rz(pi/4) q[2];
x q[9];
x q[3];
sx q[3];
rz(pi) q[4];
ecr q[7],q[6];
x q[7];
x q[9];
ecr q[1],q[2];
rz(pi) q[9];
rz(pi/4) q[8];
sx q[8];
ecr q[4],q[5];
ecr q[3],q[4];
rz(pi/4) q[5];
ecr q[1],q[0];
sx q[0];
rz(pi/2) q[4];
rz(-pi/4) q[3];
x q[4];
x q[1];
ecr q[1],q[2];
x q[8];
sx q[5];
sx q[2];
ecr q[0],q[1];
sx q[4];
ecr q[5],q[6];
ecr q[4],q[5];
rz(pi/4) q[2];
x q[0];
sx q[4];
ecr q[2],q[1];
sx q[7];
ecr q[2],q[3];
ecr q[9],q[8];
rz(-3*pi/4) q[8];
x q[7];
ecr q[8],q[9];
x q[8];
ecr q[5],q[6];
rz(pi/4) q[4];
x q[2];
ecr q[8],q[7];
sx q[8];
sx q[6];
rz(pi/4) q[8];
ecr q[5],q[4];
ecr q[4],q[3];
ecr q[7],q[6];
x q[9];
x q[3];
sx q[2];
sx q[1];
rz(-pi/2) q[4];
ecr q[9],q[8];
ecr q[7],q[8];
x q[0];
sx q[9];
sx q[2];
x q[3];
sx q[4];
rz(-3*pi/4) q[6];
x q[1];
x q[6];
ecr q[5],q[6];
rz(pi/2) q[2];
rz(pi/4) q[3];
x q[7];
x q[0];
sx q[9];
rz(-pi/4) q[1];
ecr q[0],q[1];
rz(-pi/4) q[6];
rz(pi) q[2];
x q[6];
sx q[2];
rz(3*pi/4) q[1];
x q[1];
sx q[6];
x q[0];
ecr q[9],q[8];
x q[3];
ecr q[9],q[8];
ecr q[2],q[3];
sx q[7];
x q[2];
sx q[8];
ecr q[8],q[9];
x q[7];
x q[5];
sx q[4];
rz(pi/4) q[0];
rz(pi/4) q[2];
sx q[3];
x q[7];
rz(pi) q[4];
sx q[8];
rz(pi/2) q[1];
x q[7];
sx q[3];
ecr q[0],q[1];
ecr q[4],q[3];
sx q[2];
sx q[2];
x q[3];
ecr q[9],q[8];
sx q[3];
x q[7];
rz(-pi/2) q[5];
sx q[7];
x q[6];
ecr q[0],q[1];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
ecr q[6],q[7];
x q[4];
sx q[4];
rz(pi/2) q[5];
sx q[8];
sx q[5];
sx q[0];
sx q[1];
rz(pi) q[5];
sx q[0];
ecr q[3],q[2];
sx q[8];
x q[9];
ecr q[0],q[1];
ecr q[2],q[3];
x q[4];
x q[1];
sx q[1];
rz(pi/4) q[4];
x q[6];
x q[8];
sx q[8];
ecr q[8],q[7];
rz(-pi/2) q[7];
x q[2];
x q[7];
rz(pi/4) q[6];
x q[8];
sx q[1];
ecr q[0],q[1];
ecr q[1],q[0];
x q[9];
ecr q[8],q[7];
sx q[6];
sx q[9];
ecr q[7],q[8];
ecr q[8],q[9];
sx q[5];
x q[3];
ecr q[6],q[5];
rz(pi/2) q[5];
sx q[1];
x q[8];
x q[7];
ecr q[5],q[4];
x q[3];
sx q[1];
rz(3*pi/4) q[7];
ecr q[7],q[6];
x q[1];
x q[2];
ecr q[2],q[3];
rz(pi/2) q[2];
x q[2];
sx q[0];
ecr q[5],q[6];
rz(pi/4) q[3];
rz(-pi/4) q[2];
ecr q[7],q[6];
ecr q[6],q[7];
rz(-pi/4) q[9];
x q[5];
x q[7];
rz(3*pi/4) q[8];
sx q[9];
x q[6];
rz(-pi/4) q[7];
x q[8];
sx q[5];
rz(pi/4) q[9];
x q[9];
ecr q[2],q[1];
rz(pi) q[2];
x q[3];
sx q[0];
ecr q[3],q[2];
ecr q[0],q[1];
rz(pi/4) q[0];
sx q[2];
rz(-3*pi/4) q[1];
ecr q[8],q[9];
sx q[3];
x q[0];
sx q[5];
x q[5];
rz(pi/2) q[5];
rz(pi/2) q[7];
sx q[9];
rz(3*pi/4) q[9];
ecr q[3],q[4];
sx q[2];
ecr q[8],q[7];
ecr q[1],q[2];
x q[2];
rz(pi) q[9];
rz(pi) q[9];
x q[9];
x q[9];
sx q[9];
ecr q[6],q[7];
rz(3*pi/4) q[7];
x q[4];
rz(pi) q[9];
x q[2];
x q[7];
ecr q[9],q[8];
sx q[6];
x q[5];
x q[8];
x q[8];
sx q[7];
ecr q[3],q[4];
x q[2];
x q[0];
ecr q[2],q[1];
sx q[7];
ecr q[9],q[8];
x q[8];
rz(-pi/4) q[6];
ecr q[5],q[4];
sx q[1];
rz(-pi/4) q[3];
ecr q[7],q[8];
ecr q[5],q[4];
rz(-pi/2) q[0];
rz(-pi/2) q[1];
sx q[6];
x q[5];
rz(pi) q[7];
x q[2];
rz(pi/2) q[0];
rz(pi) q[8];
rz(pi/4) q[5];
rz(-3*pi/4) q[9];
ecr q[0],q[1];
sx q[6];
rz(pi/4) q[9];
x q[9];
ecr q[2],q[3];
rz(pi/2) q[8];
rz(pi/4) q[5];
x q[7];
sx q[3];
rz(3*pi/4) q[3];
ecr q[6],q[5];
x q[1];
x q[9];
sx q[1];
sx q[4];
rz(-pi/2) q[0];
sx q[7];
sx q[5];
x q[1];
sx q[8];
sx q[1];
ecr q[8],q[7];
x q[2];
ecr q[3],q[4];
ecr q[6],q[5];
rz(pi) q[5];
sx q[1];
ecr q[4],q[5];
rz(pi) q[5];
x q[9];
x q[0];
x q[7];
ecr q[7],q[6];
x q[9];
rz(pi) q[6];
sx q[5];
ecr q[5],q[4];
rz(3*pi/4) q[4];
x q[3];
x q[1];
x q[9];
rz(-pi/4) q[6];
ecr q[0],q[1];
sx q[6];
x q[2];
x q[9];
x q[6];
rz(-pi/2) q[7];
x q[1];
x q[3];
rz(pi/4) q[8];
sx q[8];
sx q[0];
ecr q[7],q[8];
sx q[0];
sx q[8];
ecr q[8],q[9];
rz(-pi/4) q[5];
x q[9];
x q[5];
sx q[5];
rz(-pi/4) q[3];
ecr q[1],q[0];
x q[7];
sx q[2];
sx q[9];
x q[1];
sx q[3];
ecr q[9],q[8];
ecr q[1],q[2];
rz(pi/4) q[8];
x q[1];
rz(-pi/2) q[5];
ecr q[7],q[6];
ecr q[3],q[4];
sx q[5];
ecr q[6],q[7];
x q[5];
sx q[1];
x q[1];
ecr q[8],q[9];
rz(pi/4) q[8];
sx q[3];
rz(3*pi/4) q[2];
sx q[8];
rz(pi) q[0];
x q[2];
rz(pi) q[1];
ecr q[1],q[2];
ecr q[4],q[3];
ecr q[3],q[4];
ecr q[1],q[0];
x q[1];
ecr q[4],q[3];
ecr q[2],q[1];
sx q[7];
x q[1];
rz(pi) q[8];
ecr q[0],q[1];
ecr q[8],q[7];
sx q[1];
sx q[9];
sx q[2];
rz(-3*pi/4) q[6];
rz(-pi/4) q[2];
ecr q[4],q[5];
rz(-pi/2) q[1];
rz(-pi/2) q[3];
rz(-pi/4) q[8];
sx q[4];
x q[7];
x q[3];
sx q[4];
ecr q[2],q[1];
sx q[9];
rz(pi/4) q[6];
x q[3];
x q[3];
rz(pi/2) q[1];
x q[3];
rz(-pi/4) q[8];
rz(-pi/4) q[9];
sx q[4];
x q[8];
rz(3*pi/4) q[3];
rz(pi/4) q[2];
ecr q[4],q[5];
sx q[2];
rz(pi) q[9];
sx q[1];
x q[2];
sx q[9];
ecr q[7],q[6];
x q[4];
x q[2];
sx q[1];
sx q[6];
sx q[3];
x q[9];
x q[4];
x q[2];
rz(-pi/2) q[5];
x q[2];
sx q[6];
x q[5];
rz(-pi/2) q[8];
sx q[4];
x q[1];
ecr q[9],q[8];
rz(-pi/2) q[7];
rz(pi) q[0];
sx q[9];
sx q[6];
sx q[3];
sx q[2];
sx q[3];
x q[0];
ecr q[5],q[6];
rz(pi/4) q[8];
rz(-pi/2) q[8];
rz(-3*pi/4) q[4];
sx q[9];
rz(pi/4) q[9];
x q[7];
sx q[5];
rz(-3*pi/4) q[5];
sx q[7];
rz(pi) q[1];
rz(3*pi/4) q[2];
rz(pi/2) q[5];
x q[5];
sx q[6];
sx q[5];
x q[7];
rz(pi/2) q[3];
ecr q[1],q[2];
x q[5];
rz(3*pi/4) q[8];
ecr q[6],q[5];
sx q[7];
sx q[1];
rz(-3*pi/4) q[8];
sx q[9];
sx q[6];
rz(pi) q[6];
sx q[6];
x q[8];
rz(pi/4) q[7];
sx q[1];
rz(pi/2) q[6];
x q[4];
ecr q[1],q[0];
rz(pi) q[7];
rz(pi/2) q[1];
sx q[9];
rz(3*pi/4) q[8];
rz(pi/4) q[6];
sx q[7];
x q[1];
rz(3*pi/4) q[8];
x q[4];
rz(3*pi/4) q[3];
ecr q[1],q[2];
x q[9];
ecr q[6],q[7];
sx q[3];
sx q[1];
x q[5];
x q[7];
sx q[2];
ecr q[1],q[2];
ecr q[8],q[7];
rz(pi/4) q[4];
x q[7];
rz(-3*pi/4) q[9];
sx q[0];
rz(pi) q[9];
ecr q[5],q[6];
x q[5];
x q[5];
sx q[9];
sx q[7];
rz(3*pi/4) q[3];
sx q[7];
rz(pi/2) q[1];
sx q[6];
ecr q[7],q[8];
ecr q[8],q[9];
ecr q[9],q[8];
x q[1];
x q[4];
x q[5];
ecr q[2],q[3];
rz(pi/2) q[6];
sx q[4];
ecr q[4],q[3];
ecr q[7],q[6];
x q[2];
sx q[5];
rz(-pi/2) q[9];
sx q[4];
sx q[5];
x q[7];
sx q[5];
rz(-pi/4) q[5];
sx q[8];
sx q[2];
sx q[0];
ecr q[5],q[4];
ecr q[3],q[4];
rz(pi) q[4];
x q[5];
sx q[7];
x q[6];
x q[0];
rz(pi/2) q[7];
rz(3*pi/4) q[6];
sx q[8];
ecr q[0],q[1];
x q[2];
rz(pi/2) q[3];
x q[2];
sx q[4];
sx q[8];
sx q[6];
rz(pi) q[1];
ecr q[6],q[7];
ecr q[9],q[8];
ecr q[4],q[3];
rz(pi/4) q[7];
ecr q[1],q[0];
rz(3*pi/4) q[5];
ecr q[8],q[9];
sx q[0];
ecr q[1],q[0];
sx q[8];
rz(3*pi/4) q[5];
sx q[7];
x q[5];
sx q[2];
rz(pi/4) q[8];
ecr q[5],q[4];
rz(-pi/4) q[5];
x q[4];
rz(pi/2) q[9];
rz(3*pi/4) q[3];
ecr q[7],q[8];
sx q[2];
ecr q[3],q[2];
rz(pi/2) q[3];
rz(pi) q[4];
rz(-3*pi/4) q[3];
rz(pi) q[9];
sx q[4];
x q[8];
sx q[7];
x q[4];
ecr q[2],q[1];
ecr q[3],q[4];
rz(pi/2) q[5];
sx q[6];
x q[3];
ecr q[1],q[2];
sx q[2];
ecr q[9],q[8];
x q[5];
x q[7];
sx q[5];
rz(pi/2) q[4];
ecr q[5],q[4];
x q[6];
rz(pi/4) q[8];
sx q[7];
sx q[8];
ecr q[2],q[3];
sx q[7];
sx q[7];
rz(3*pi/4) q[6];
x q[9];
x q[2];
x q[9];
x q[3];
ecr q[9],q[8];
rz(3*pi/4) q[9];
ecr q[4],q[3];
sx q[9];
x q[6];
sx q[9];
sx q[1];
sx q[5];
x q[5];
x q[6];
x q[2];
rz(-3*pi/4) q[7];
x q[2];
rz(pi/2) q[0];
x q[0];
x q[8];
x q[7];
sx q[1];
x q[4];
ecr q[7],q[8];
ecr q[4],q[5];
x q[9];
x q[1];
rz(pi/2) q[0];
x q[5];
x q[5];
rz(pi/4) q[5];
sx q[8];
rz(-pi/4) q[8];
rz(3*pi/4) q[1];
x q[6];
rz(-3*pi/4) q[9];
sx q[1];
sx q[0];
sx q[0];
x q[2];
ecr q[4],q[5];
x q[6];
x q[4];
sx q[6];
rz(pi/2) q[4];
x q[2];
ecr q[1],q[2];
ecr q[4],q[5];
x q[9];
sx q[6];
sx q[6];
x q[0];
rz(pi/4) q[5];
ecr q[8],q[7];
sx q[2];
ecr q[2],q[3];
rz(pi) q[2];
rz(pi/2) q[3];
sx q[7];
x q[8];
rz(-pi/2) q[6];
rz(-pi/2) q[3];
x q[5];
rz(3*pi/4) q[3];
x q[3];
sx q[6];
x q[2];
sx q[8];
x q[4];
rz(-3*pi/4) q[2];
x q[8];
x q[5];
rz(pi/2) q[9];
ecr q[4],q[3];
rz(3*pi/4) q[0];
x q[6];
x q[0];
ecr q[1],q[0];
x q[2];
ecr q[5],q[4];
x q[3];
sx q[6];
ecr q[2],q[3];
x q[8];
ecr q[7],q[6];
rz(-pi/4) q[1];
sx q[4];
ecr q[4],q[3];
sx q[4];
rz(-pi/4) q[6];
rz(-pi/2) q[9];
rz(-pi/2) q[7];
rz(pi) q[1];
sx q[1];
ecr q[2],q[3];
x q[9];
sx q[8];
sx q[1];
sx q[4];
rz(-pi/2) q[8];
x q[7];
ecr q[8],q[9];
sx q[3];
sx q[2];
sx q[8];
ecr q[3],q[2];
sx q[9];
ecr q[6],q[7];
sx q[3];
rz(-pi/4) q[7];
x q[4];
ecr q[9],q[8];
rz(pi/2) q[9];
x q[1];
sx q[6];
rz(-pi/4) q[3];
ecr q[2],q[1];
ecr q[7],q[6];
rz(-3*pi/4) q[1];
ecr q[6],q[5];
sx q[7];
x q[6];
sx q[8];
sx q[9];
rz(pi) q[6];
x q[7];
rz(pi/4) q[7];
ecr q[4],q[5];
sx q[2];
x q[6];
ecr q[1],q[2];
ecr q[7],q[8];
x q[1];
rz(pi/4) q[0];
rz(pi/4) q[9];
ecr q[1],q[2];
x q[9];
x q[2];
x q[0];
x q[4];
rz(-3*pi/4) q[7];
rz(-3*pi/4) q[8];
sx q[5];
rz(pi/4) q[1];
sx q[5];
sx q[0];
rz(-3*pi/4) q[1];
ecr q[3],q[4];
ecr q[0],q[1];
rz(pi/4) q[1];
sx q[2];
rz(-3*pi/4) q[9];
x q[0];
ecr q[2],q[1];
rz(pi/4) q[4];
sx q[2];
ecr q[2],q[1];
rz(pi) q[1];
sx q[8];
sx q[4];
x q[8];
sx q[5];
x q[9];
sx q[0];
rz(-pi/2) q[7];
ecr q[7],q[6];
sx q[6];
ecr q[4],q[5];
x q[4];
rz(-3*pi/4) q[8];
rz(pi/2) q[6];
sx q[4];
x q[4];
x q[7];
ecr q[6],q[7];
rz(pi) q[9];
x q[1];
sx q[7];
ecr q[2],q[1];
ecr q[0],q[1];
x q[9];
x q[4];
x q[7];
sx q[9];
sx q[0];
x q[1];
sx q[8];
ecr q[8],q[9];
x q[0];
x q[4];
rz(3*pi/4) q[3];
rz(pi/2) q[2];
x q[4];
rz(pi) q[2];
rz(3*pi/4) q[4];
rz(pi/2) q[2];
rz(-pi/4) q[6];
x q[0];
ecr q[2],q[1];
ecr q[7],q[8];
x q[4];
x q[5];
rz(-3*pi/4) q[6];
x q[6];
rz(3*pi/4) q[0];
rz(pi/4) q[0];
rz(-pi/2) q[0];
rz(pi/4) q[4];
x q[7];
rz(3*pi/4) q[0];
sx q[7];
x q[9];
sx q[6];
x q[2];
x q[2];
rz(-3*pi/4) q[6];
rz(pi/4) q[4];
sx q[5];
rz(pi/4) q[6];
ecr q[8],q[9];
ecr q[6],q[5];
sx q[6];
sx q[5];
ecr q[3],q[2];
x q[0];
ecr q[7],q[6];
rz(-pi/4) q[9];
ecr q[6],q[7];
rz(pi) q[5];
rz(pi/4) q[3];
ecr q[1],q[0];
sx q[7];
rz(3*pi/4) q[1];
ecr q[4],q[3];
rz(pi/2) q[3];
sx q[7];
x q[3];
x q[4];
x q[5];
rz(3*pi/4) q[4];
rz(pi/2) q[2];
rz(pi/4) q[7];
x q[3];
ecr q[9],q[8];
rz(pi) q[4];
ecr q[4],q[5];
ecr q[7],q[6];
x q[3];
ecr q[6],q[5];
rz(-pi/4) q[2];
rz(pi/4) q[4];
x q[5];
ecr q[4],q[3];
x q[6];
sx q[8];
x q[2];
rz(pi/4) q[2];
rz(3*pi/4) q[6];
ecr q[5],q[6];
x q[4];
ecr q[6],q[7];
x q[8];
rz(3*pi/4) q[0];
sx q[1];
rz(-pi/2) q[9];
sx q[7];
sx q[7];
x q[8];
sx q[5];
rz(pi) q[3];
rz(pi/4) q[0];
x q[5];
ecr q[7],q[8];
x q[6];
ecr q[0],q[1];
ecr q[1],q[2];
sx q[6];
sx q[0];
x q[7];
x q[7];
ecr q[0],q[1];
sx q[5];
rz(-pi/4) q[2];
rz(pi/2) q[7];
x q[6];
x q[9];
x q[1];
x q[4];
x q[4];
sx q[5];
x q[5];
sx q[5];
sx q[2];
rz(3*pi/4) q[8];
sx q[9];
rz(pi/2) q[0];
sx q[8];
sx q[1];
rz(pi/4) q[6];
ecr q[6],q[5];
sx q[3];
x q[3];
ecr q[1],q[0];
rz(-pi/4) q[8];
x q[5];
sx q[3];
sx q[8];
rz(-3*pi/4) q[1];
x q[2];
ecr q[7],q[6];
ecr q[4],q[5];
ecr q[7],q[6];
sx q[9];
sx q[5];
ecr q[0],q[1];
x q[8];
rz(-pi/2) q[9];
x q[4];
sx q[1];
rz(-3*pi/4) q[5];
sx q[5];
ecr q[7],q[8];
sx q[6];
ecr q[5],q[6];
rz(3*pi/4) q[8];
ecr q[9],q[8];
rz(-3*pi/4) q[1];
ecr q[6],q[7];
rz(-3*pi/4) q[6];
ecr q[2],q[3];
sx q[0];
rz(-3*pi/4) q[6];
sx q[5];
rz(-3*pi/4) q[0];
rz(-3*pi/4) q[0];
sx q[2];
x q[1];
rz(pi/4) q[1];
x q[6];
x q[1];
sx q[7];
rz(3*pi/4) q[6];
x q[5];
sx q[5];
rz(3*pi/4) q[3];
ecr q[8],q[9];
ecr q[4],q[3];
rz(pi/2) q[1];
sx q[4];
x q[0];
x q[2];
x q[1];
sx q[3];
ecr q[5],q[6];
ecr q[4],q[3];
ecr q[2],q[1];
sx q[5];
rz(-pi/2) q[6];
x q[2];
rz(pi/2) q[5];
x q[2];
rz(-3*pi/4) q[2];
ecr q[2],q[1];
ecr q[5],q[6];
ecr q[1],q[2];
x q[3];
x q[0];
sx q[9];
x q[7];
x q[8];
x q[3];
x q[6];
ecr q[8],q[9];
rz(pi/2) q[9];
x q[6];
x q[1];
sx q[8];
x q[7];
sx q[5];
rz(pi) q[5];
ecr q[3],q[2];
x q[8];
sx q[1];
x q[0];
sx q[0];
ecr q[7],q[6];
ecr q[8],q[9];
ecr q[3],q[2];
rz(-pi/2) q[0];
rz(pi/4) q[0];
x q[8];
x q[5];
rz(-3*pi/4) q[1];
sx q[9];
sx q[9];
x q[5];
sx q[4];
ecr q[3],q[4];
ecr q[1],q[0];
x q[5];
x q[0];
sx q[2];
rz(-pi/4) q[1];
x q[0];
x q[9];
sx q[9];
rz(pi/4) q[2];
x q[7];
x q[7];
ecr q[2],q[3];
ecr q[8],q[7];
sx q[3];
ecr q[7],q[8];
x q[7];
sx q[3];
rz(-pi/4) q[3];
rz(pi) q[4];
x q[0];
ecr q[2],q[3];
x q[3];
ecr q[9],q[8];
ecr q[6],q[7];
x q[8];
sx q[5];
sx q[5];
ecr q[7],q[6];
sx q[0];
ecr q[1],q[0];
rz(pi/2) q[5];
rz(pi/4) q[9];
sx q[4];
x q[8];
rz(-3*pi/4) q[3];
ecr q[4],q[5];
rz(-pi/4) q[6];
sx q[3];
rz(-3*pi/4) q[3];
x q[6];
rz(pi/2) q[3];
sx q[4];
x q[1];
sx q[0];
rz(3*pi/4) q[5];
ecr q[6],q[5];
rz(pi/2) q[6];
rz(pi/4) q[6];
ecr q[1],q[2];
rz(pi/2) q[9];
ecr q[8],q[7];
sx q[2];
sx q[6];
rz(-pi/4) q[0];
ecr q[5],q[4];
sx q[1];
rz(pi/2) q[7];
x q[1];
x q[7];
rz(pi/4) q[9];
ecr q[1],q[2];
rz(3*pi/4) q[5];
sx q[4];
sx q[0];
x q[6];
x q[1];
sx q[9];
x q[9];
sx q[6];
sx q[8];
x q[6];
ecr q[5],q[4];
sx q[0];
rz(-pi/4) q[5];
sx q[0];
sx q[4];
sx q[9];
sx q[9];
sx q[3];
rz(-3*pi/4) q[9];
sx q[1];
sx q[5];
rz(pi/2) q[6];
x q[8];
sx q[6];
rz(-pi/2) q[7];
sx q[5];
x q[7];
x q[0];
ecr q[1],q[2];
sx q[6];
ecr q[1],q[2];
sx q[5];
ecr q[5],q[6];
x q[6];
ecr q[0],q[1];
x q[5];
x q[9];
rz(-pi/4) q[9];
sx q[3];
rz(-3*pi/4) q[3];
sx q[9];
ecr q[6],q[7];
ecr q[6],q[5];
ecr q[2],q[1];
ecr q[5],q[4];
x q[0];
x q[7];
rz(pi/4) q[4];
rz(-pi/2) q[6];
sx q[1];
sx q[8];
sx q[7];
sx q[0];
rz(-3*pi/4) q[4];
rz(3*pi/4) q[2];
sx q[1];
sx q[8];
x q[1];
x q[5];
ecr q[1],q[0];
sx q[2];
ecr q[2],q[3];
sx q[0];
sx q[9];
ecr q[7],q[8];
x q[0];
x q[3];
ecr q[8],q[9];
rz(-pi/4) q[0];
ecr q[9],q[8];
x q[7];
x q[5];
ecr q[9],q[8];
sx q[4];
rz(pi) q[5];
sx q[2];
x q[2];
x q[5];
sx q[2];
x q[5];
x q[8];
ecr q[8],q[7];
rz(pi/2) q[9];
x q[7];
rz(pi/4) q[5];
sx q[9];
sx q[8];
rz(-3*pi/4) q[5];
sx q[5];
ecr q[8],q[9];
x q[9];
rz(-pi/4) q[4];
ecr q[2],q[1];
sx q[9];
sx q[6];
rz(-3*pi/4) q[0];
x q[7];
ecr q[5],q[4];
sx q[6];
rz(3*pi/4) q[8];
x q[3];
x q[1];
sx q[5];
ecr q[6],q[7];
x q[4];
sx q[3];
rz(3*pi/4) q[6];
sx q[8];
x q[2];
ecr q[8],q[9];
rz(pi/2) q[0];
ecr q[0],q[1];
ecr q[3],q[2];
x q[7];
x q[3];
sx q[5];
ecr q[4],q[5];
sx q[3];
rz(-pi/4) q[1];
sx q[1];
rz(-pi/2) q[4];
rz(-pi/2) q[2];
x q[8];
rz(-3*pi/4) q[6];
sx q[1];
x q[0];
sx q[5];
rz(-3*pi/4) q[6];
ecr q[3],q[2];
rz(-pi/2) q[2];
sx q[1];
x q[4];
rz(-3*pi/4) q[6];
x q[0];
x q[2];
ecr q[2],q[1];
rz(-pi/4) q[8];
sx q[0];
sx q[5];
x q[6];
sx q[9];
x q[7];
x q[8];
sx q[9];
x q[9];
rz(-3*pi/4) q[1];
x q[5];
ecr q[1],q[2];
rz(-pi/4) q[1];
rz(pi) q[4];
sx q[5];
rz(3*pi/4) q[8];
sx q[1];
rz(pi/4) q[1];
ecr q[5],q[4];
ecr q[7],q[6];
x q[8];
x q[1];
rz(pi/4) q[3];
ecr q[5],q[6];
ecr q[6],q[5];
x q[7];
rz(-pi/2) q[5];
ecr q[8],q[7];
rz(pi/2) q[9];
rz(pi/2) q[8];
ecr q[3],q[4];
x q[2];
rz(pi) q[0];
sx q[7];
ecr q[8],q[9];
x q[7];
x q[1];
ecr q[2],q[1];
sx q[3];
x q[1];
ecr q[2],q[3];
rz(pi/2) q[9];
rz(pi/4) q[0];
x q[7];
rz(3*pi/4) q[5];
rz(pi) q[6];
rz(3*pi/4) q[9];
ecr q[2],q[3];
ecr q[8],q[9];
x q[6];
rz(-pi/2) q[6];
ecr q[8],q[7];
x q[5];
rz(-pi/4) q[1];
x q[4];
x q[2];
x q[4];
ecr q[7],q[8];
x q[3];
sx q[2];
rz(-pi/4) q[4];
rz(pi/2) q[3];
rz(3*pi/4) q[8];
ecr q[3],q[4];
ecr q[9],q[8];
x q[3];
x q[8];
ecr q[2],q[3];
x q[7];
rz(3*pi/4) q[9];
rz(3*pi/4) q[3];
rz(-3*pi/4) q[8];
rz(-pi/2) q[1];
ecr q[1],q[0];
ecr q[4],q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
