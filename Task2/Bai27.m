%Vẽ chuỗi (2+2) xung chữ nhật có chu kỳ T
clc; clear;close all;
T = 1000;
t = 0: T/39 : T;
y = zeros(size(t));
y(t >= -T/2 & t <= T/2) = 1;
tc = [];
x = [];
for i = 1 : 4
    tc = [tc t + (i-1) * T];
    x = [x y];
end
plot(tc,x,'LineWidth',2);