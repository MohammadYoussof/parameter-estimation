function easylorenzplot(sigma,b,r,x0,y0,z0,color)
[x, y, z] = func_LorenzEuler(sigma, b, r, x0, y0, z0, 0.01, 2500);
plot3(x,y,z,color)
