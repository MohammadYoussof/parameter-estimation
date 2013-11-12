function xdot=lorenz(t,x) 
% sigma=11; r=25; b=8/3; 
sigma=10; r=28; b=8/3; 
xdot=[-sigma*(x(1)-x(2)); 
 r*x(1)-x(2)-x(1)*x(3); 
 -b*x(3)+x(1)*x(2)]; 
Lorenzstart.m 
close all; 
clear all; 
clc; 
ti=0; 
tf=150; 
tspan=[ti tf]; 
x0=[0.3 0.3 0.3]'; 
[t,x]= ode23('lorenz',tspan,x0); 
figure 
subplot(3,1,1), plot(t,x(:,1),'r'),grid on; 
title('Lorenz Attractor'),ylabel('x1(t)'); 
subplot(3,1,2), plot(t,x(:,2),'b'),grid on; 
ylabel('x2(t)'); 
subplot(3,1,3), plot(t,x(:,3),'g'),grid on; 
ylabel('x3(t)');xlabel('t') 
figure 
plot3(x(:,1),x(:,2),x(:,3)),grid on; 
xlabel('x1');ylabel('x2');zlabel('x3') 
title('Lorenz Attractor'); 
figure 
plot(x(:,1),x(:,2)),grid on; 
xlabel('x1');ylabel('x2'); 
title('Lorenz Attractor');