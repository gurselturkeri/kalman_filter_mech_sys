# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>
## A second-level heading
## System Equations

The system can be represented in state-space form as:

\[ \begin{bmatrix} \dot{x} \\ \dot{v} \end{bmatrix} = \begin{bmatrix} 0 & 1 \\ -\frac{K}{M} & -\frac{f_v}{M} \end{bmatrix} \begin{bmatrix} x \\ v \end{bmatrix} + \begin{bmatrix} 0 \\ \frac{1}{M} \end{bmatrix} f(t) \]

\[ y = \begin{bmatrix} 1 & 0 \end{bmatrix} \begin{bmatrix} x \\ v \end{bmatrix} \]

Here:
- \( A = \begin{bmatrix} 0 & 1 \\ -\frac{K}{M} & -\frac{f_v}{M} \end{bmatrix} \)
- \( B = \begin{bmatrix} 0 \\ \frac{1}{M} \end{bmatrix} \)
- \( C = \begin{bmatrix} 1 & 0 \end{bmatrix} \)
- \( D = 0 \)

