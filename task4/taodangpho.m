function [f,Pf] = taodangpho(t,x)
% Ví dụ chương trình tính toán phổ tín hiệu
% t - vector thời gian
% x - mẫu tín hiệu đầu vào
% f - vector tần số
% Pf - mật độ phổ công suất (PSD) ước lượng của x
Ns = length(x);           % Số mẫu
Ts = t(2) - t(1);          % Chu kỳ lấy mẫu
f = (-Ns/2 : Ns/2 - 1) / (Ns * Ts);  % Tạo vector tần số
Pf = fft(x, Ns);          % Biến đổi Fourier nhanh
Pf = fftshift(Pf) / Ns;   % Biến đổi F ngược
Pf = abs(Pf).^2;          % Tính công suất phổ
end
