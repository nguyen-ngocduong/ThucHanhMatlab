%Vẽ 1 xung hình chữ nhật có chu kỳ T
clc; clear; close all;
T = 1000;
t = -T/2 : T/999 : T/2;
A = zeros(size(t));
A(t>-T/2&t<T/2)=1;
figure;
hold on;
plot(t,A, 'LineWidth',2); hold on;
% Vẽ trục hoành và trục tung
plot([0, 0], [-0.5, 1.5], 'k', 'LineWidth', 1.5); % Trục tung tại x = 0
plot([-T/2, T/2], [0, 0], 'k', 'LineWidth', 1.5); % Trục hoành tại y = 0
xlabel('Thời gian');
ylabel('Biên độ');
title('Đồ thị xung hình chữ nhât')