%Bài toán yêu cầu vẽ đồ thị hàm số: y(t)=cos(200t)+cos(300t) trong khoảng 0≤t≤0.5 giây và thực hiện một số yêu cầu
% như chọn tần số lấy mẫu phù hợp, đánh dấu cực trị, và đặt chú thích.

clc; clear; close all;
t = [0 : 0.001 : 0.5];
y = cos(200*t) + cos(300*t);
figure;
hold on;
plot(t,y, 'LineWidth',2); 
%tính toán cực trị:
x_points = [0 0.012,0.02335,0.031,0.03945,0.051,0.06286,0.075,0.08621,0.094,0.10231,0.113,0.12566,0.138,0.14901,0.157,0.16512,0.176,0.18852,0.201,0.21187,0.22,0.22797,...
0.239, 0.25133,0.263,0.27468,0.283, 0.29078,0.302, 0.31418,0.326, 0.33753,0.345, 0.35364,0.365,0.37699,0.389, 0.40039,0.408,0.41644,0.428,0.43984,0.452,0.46320,0.471,0.47930, 0.491];
y_points = cos(200*x_points) + cos(300*x_points);
plot(x_points, y_points, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b'); 

%title
xlabel('Trục t(s)');
ylabel('Trục Y');
legend('y(t)=cos(200t)+cos(300t)');
title('Hàm số y(t)');