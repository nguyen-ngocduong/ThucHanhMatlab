clc; clear; close all;
f = @(x) 4*x^3 -13* x^2 + 13*x - 10;
a = input('Nhập a: ');
b = input('Nhập b: ');
e = input('Nhập sai số: ');
loop = input('Nhập số vòng lặp tối đa: ');
root = BisectionMethod(f,a,b,e,loop);