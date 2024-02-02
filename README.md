# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>
## A second-level heading

(Ms^2+K+f_v s)X(s)=F(s)
Mx ̈+f_v x ̇+Kx=f(t)
State Variables: x and v
x ̇=v
v ̇=x ̈=   1/M[-Kx-f_v x ̇+f(t)]
x ̇=Ax+Bu
[■(x ̇@v ̇ )]=[■(0&1@-K/M&-f_V/M)][■(x@v)]+[■(0@1/M)]f(t)

y=Cx+Du
y=x,        y=[■(1&0)][■(x@v)]


