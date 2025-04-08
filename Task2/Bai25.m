clc; clear; close all;
f = @(x,y) x.^2 - 2*y;
x0 = 1;
x_end = 2;
y0 = 1;
h = 0.01;
[x,y] = Euler_Method(f,x0,y0,h,x_end);