function [xB,yB,xC,yC,xE,yE]=function_Pos_BCE_(xA,yA,xD,yD,AB,BC,CD,CE,phi1,xC_old,xE_old); 
phi1=45; 
xC_old=4.5086e-04; xE_old=-0.1493;
omega1=[0 0 ome1];
alpha1=[0 0 alp1]; 

rB=[xB yB 0]; 
rC=[xC yC 0];
rD=[xD yD 0]; 
rE=[xE yE 0];

vB=cross(omega1,rB);
aB=cross(alpha1,rB)-dot(omega1,omega1)*rB; 
