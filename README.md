# Representation Mass-Damper-Spring System in Matlab Simulink
I have developed a model for a 1 Degree of Freedom (DOF) mass-damper-spring system. Subsequently, I have implemented a Kalman filter to enhance the system's performance.
<div id="header" align="center">
  <img src="https://github.com/gurselturkeri/kalman_filter_mech_sys/blob/main/img/system_rep.jpg" width="350"/>
 </div>


 
<div align="center">
  <img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Bbmatrix%7D%20%5Cdot%7Bx%7D%20%5C%5C%20%5Cdot%7Bv%7D%20%5Cend%7Bbmatrix%7D%20=%20%5Cbegin%7Bbmatrix%7D%200%20%26%201%20%5C%5C%20-%5Cfrac%7BK%7D%7BM%7D%20%26%20-%5Cfrac%7Bf_v%7D%7BM%7D%20%5Cend%7Bbmatrix%7D%20%5Cbegin%7Bbmatrix%7D%20x%20%5C%5C%20v%20%5Cend%7Bbmatrix%7D%20+%20%5Cbegin%7Bbmatrix%7D%200%20%5C%5C%20%5Cfrac%7B1%7D%7BM%7D%20%5Cend%7Bbmatrix%7D%20f(t)">
</div>
