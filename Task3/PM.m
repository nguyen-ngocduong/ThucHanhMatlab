clc; clear; close all;

%=== Thông số thông điệp
Am = 1;
fm = 2.5;
phi_m = pi/2;

%=== Sóng mang
fs = 1000;         % f_c = 1000 Hz
Ac = 2;            % Biên độ sóng mang
phi_s = pi/4;      % Pha ban đầu sóng mang
kp = pi/2;         % Hệ số điều chế pha

%=== Thời gian mô phỏng
T = 1/fm;
t = 0 : 1e-2 : 10*T;

%=== Tín hiệu thông điệp
x = cos(5*pi*t + phi_m);  % x(t) = cos(5πt + π/2)

%=== Tín hiệu sóng mang (tham khảo)
xc = Ac * cos(2*pi*fs*t + phi_s);

%=== Điều chế PM
y = Ac * cos(2*pi*fs*t + phi_s + kp * x);
%y = pmmod(x, fm, fs,kp, phi_s)

%=== Vẽ đồ thị
figure;
subplot(3,1,1); plot(t, x, 'b'); title('Tín hiệu thông điệp x(t)'); grid on;
subplot(3,1,2); plot(t, xc, 'r'); title('Tín hiệu sóng mang (tham khảo)'); grid on;
subplot(3,1,3); plot(t, y, 'g'); title('Tín hiệu sau điều chế pha (PM)'); grid on;
xlabel('Thời gian (s)');