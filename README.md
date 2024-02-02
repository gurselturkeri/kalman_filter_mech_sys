# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>

## System Equations

The dynamic system is described by the following equations:

\[ (Ms^2 + K + f_v s)X(s) = F(s) \]
\[ M\ddot{x} + f_v\dot{x} + Kx = f(t) \]

### State Variables:

\[ \dot{x} = v \]
\[ \dot{v} = x\ddot{x} = \frac{1}{M}(-Kx - f_v\dot{x} + f(t)) \]

### State-Space Representation:

\[ \begin{bmatrix} \dot{x} \\ \dot{v} \end{bmatrix} = \begin{bmatrix} 0 & 1 \\ -\frac{K}{M} & -\frac{f_v}{M} \end{bmatrix} \begin{bmatrix} x \\ v \end{bmatrix} + \begin{bmatrix} 0 \\ \frac{1}{M} \end{bmatrix} f(t) \]

### Output Equation:

\[ y = Cx + Du \]
\[ y = x \]

Here:
- \( A = \begin{bmatrix} 0 & 1 \\ -\frac{K}{M} & -\frac{f_v}{M} \end{bmatrix} \)
- \( B = \begin{bmatrix} 0 \\ \frac{1}{M} \end{bmatrix} \)
- \( C = \begin{bmatrix} 1 & 0 \end{bmatrix} \)
- \( D = 0 \)

