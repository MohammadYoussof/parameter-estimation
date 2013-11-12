function xdot = g(t,x)
xdot = zeros(3,1);
sig = 10;
rho = 28;
bet = 8/3;
xdot(1) = sig*(x(2)-x(1));
xdot(2) = rho*x(1)-x(2)-x(1)*x(3);
xdot(3) = x(1)*x(2)-bet*x(3);