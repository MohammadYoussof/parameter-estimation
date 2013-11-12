function [x, y, z] = func_LorenzEuler(sigma, b, r, x0, y0, z0, Deltat, nT);

x=zeros(nT,1);y=zeros(nT,1);z=zeros(nT,1);
x(1)=x0;y(1)=y0;z(1)=z0;
for m1=2:nT
    x(m1)=x(m1-1)+(sigma*(-x(m1-1)+y(m1-1)))*Deltat;
	y(m1)=y(m1-1)+(r*x(m1-1)-y(m1-1)-x(m1-1)*z(m1-1))*Deltat;
	z(m1)=z(m1-1)+(-b*z(m1-1)+x(m1-1)*y(m1-1))*Deltat;
end 

