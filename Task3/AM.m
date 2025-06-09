clc; clear; close all;

% Tín hiệu thông điệp: x(t) = sin(8*pi*t) => fm = 4 Hz
fm = 4;
Am = 1;
phi_m = pi/2;
m = 0.5;

% Sóng mang
fc = 1200; 
Ac = Am / m; % = 2

% Thời gian mô phỏng: 10 chu kỳ của tín hiệu thông điệp
T = 1 / fm;
t = 0:1e-2:10*T;

% Tín hiệu thông điệp
x = sin(8*pi*t); % hoặc sin(2*pi*fm*t)

% Sóng mang
xc = Ac * cos(2*pi*fc*t + phi_m);

% Tín hiệu sau điều chế AM
y = (1 + m * x) .* xc;

% Vẽ đồ thị
figure;
subplot(3,1,1);
plot(t, x, 'b');
title('Tín hiệu thông điệp x(t)');
xlabel('Thời gian (s)');
ylabel('Biên độ'); grid on;

subplot(3,1,2);
plot(t, xc, 'r');
title('Tín hiệu sóng mang');
xlabel('Thời gian (s)');
ylabel('Biên độ'); grid on;

subplot(3,1,3);
plot(t, y, 'g');
title('Tín hiệu sau điều chế AM');
xlabel('Thời gian (s)');
ylabel('Biên độ'); grid on;
