function mylorenz(varargin)
%MYLORENZ Plots the orbit of the Lorenz attractor with sigma = 10, 
%r = 28, b = 8/3 along with a Lorenz attractor with user-defined
%parameters. MYLORENZ(sigma,r,b) takes input values.
%MYLORENZ('sigma') adds uncertainty to sigma.
%Also: MYLORENZ('r'), MYLORENZ('b').
numsteps = 2 ^ 11;
x = zeros(numsteps,3);
dt = .01;
sigma = 10;
r = 28;
b = 8/3;
%beta = [.01;.01;.01];
%x(1,:) = [10;20;30];
x(1,:) = [10*normrnd(0,1);10*normrnd(0,1);10*normrnd(0,1)];

x0 = x(1,:);
%n = normrnd(0,1,3,1);
for i=2:numsteps
    x(i,:) = x0(:);% + sqrt(dt)*beta.*n;
    x(i,1) = x(i,1) + dt*sigma*(x0(2) - x0(1));
    x(i,2) = x(i,2) + dt*(-x0(2) + x0(1)*(r - x0(3)));
    x(i,3) = x(i,3) + dt*(x0(1)*x0(2) - b*x0(3));
    x0 = x(i,:);
    %n = normrnd(0,1,3,1);
end
y = zeros(numsteps,3);
y(1,:) = x(1,:);
y0 = y(1,:);
if varargin{1}=='sigma'
    %newsigma = normrnd(sigma,7)
    newsigma = gamrnd(sigma,1)
    newr = r;
    newb = b;
elseif varargin{1}=='r'
    newsigma = sigma;
    %newr = normrnd(r,9)
    newr = gamrnd(r,1)
    newb = b;
elseif varargin{1}=='b'
    newsigma = sigma;
    newr = r;
    %newb = normrnd(b,2)
    newb = gamrnd(b,1)
else
    newsigma = varargin{1};
    newr = varargin{2};
    newb = varargin{3};
end
for i=2:numsteps
    y(i,:) = y0(:);
    y(i,1) = y(i,1) + dt*newsigma*(y0(2) - y0(1));
    y(i,2) = y(i,2) + dt*(-y0(2) + y0(1)*(newr - y0(3)));
    y(i,3) = y(i,3) + dt*(y0(1)*y0(2) - newb*y0(3));
    y0 = y(i,:);
end
figure;
%plot(x(:,1),x(:,2),'k.');
hold on
plot3(x(:,1),x(:,2),x(:,3),'g');
plot3(y(:,1),y(:,2),y(:,3),'r');
plot3(sqrt(b*(r-1)),sqrt(b*(r-1)),r-1,'g.');
plot3(-sqrt(b*(r-1)),-sqrt(b*(r-1)),r-1,'g.');
plot3(sqrt(newb*(newr-1)),sqrt(newb*(newr-1)),newr-1,'r*');
plot3(-sqrt(newb*(newr-1)),-sqrt(newb*(newr-1)),newr-1,'r*');
title('Lorenz attractor');
xlabel('x');ylabel('y');
hold off