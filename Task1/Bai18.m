%Vẽ 1 xung tam giác có chu kỳ T
clc; clear; close all;
T = 1000;
t = -T/2 : T/999 : T/2;
A = zeros(size(t));
%plt
right = t <= T/2 & t >= 0;
A(right) = 2 * (T/2 - t(right)) / T; 
left = t<= 0 & t >= -T/2;
A(left) =2*(T/2 + t(left)) / T;
figure;
plot(t,A,'r','LineWidth', 2);
hold on;
plot([-T/2, T/2], [0,0],'k', 'LineWidth',1); 
plot([0, 0], [-0.5, 1.5], 'k', 'LineWidth', 1); % Trục tung
xlabel('thoi gian');
ylabel('bien do');
legend('xung tam giac');