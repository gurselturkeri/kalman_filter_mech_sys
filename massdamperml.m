F = 100;
M = 2;
fv = 1;
K = 1;


A = [0 1;-K/M -fv/M];
B = [0;1/M];
C = [1 0];
D = 0;


Q = 2.3;
R = 1;
Ts = 1;


sim("massdamper")