%Vẽ chuỗi 4 xung tam giác có chu kỳ T
clc; clear; close all;
T = 1000;
t = -T/2 : T/39 : T/2;
y = zeros(size(t));
left = t<=0 & t >= -T/2;
y(left) = 1 + t(left)/T;
right = t >=0 & t<= T/2;
y(right) = 1 - t(right)/T;
tc = [];
x = [];
for i = 1 : 4
    tc = [tc t + (i-1)*T];
    x = [x y];
end
plot(tc, x, 'LineWidth',2);
xlabel('Thời gian');
ylabel('Biên độ');
title('Chuỗi 4 xung tam giác chu kỳ T');