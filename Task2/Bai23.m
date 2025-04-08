clc; clear; close all;
f = @(x) exp(x) .* atan(x.^2) ./ cos(x);
a = input('Nhập a: ');
b = input('Nhập b: ');
N = input('Nhập số điểm N: ');
I = Midpoint_Rule(f,a,b,N);