# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>

Certainly! To format the formulas for a GitHub README, you can use Markdown. Here is the edited version of your formulas:

1. \( (Ms^2 + K + f_v s)X(s) = F(s) \)

2. \( Mx'' + f_v \dot{x} + Kx = f(t) \)

State Variables: \( x \) and \( v \)

3. \( \dot{x} = v \)

4. \( \dot{v} = x'' = \frac{1}{M}[-Kx - f_v \dot{x} + f(t)] \)

5. \( \dot{x} = Ax + Bu \)

\[ 
\begin{bmatrix}
\dot{x} \\
\dot{v}
\end{bmatrix}
=
\begin{bmatrix}
0 & 1 \\
-\frac{K}{M} & -\frac{f_v}{M}
\end{bmatrix}
\begin{bmatrix}
x \\
v
\end{bmatrix}
+
\begin{bmatrix}
0 \\
\frac{1}{M}
\end{bmatrix}
f(t)
\]

6. \( y = Cx + Du \)

\[ y = [1\ 0] \begin{bmatrix} x \\ v \end{bmatrix} \]

Feel free to copy and paste these Markdown-formatted equations into your GitHub README.

