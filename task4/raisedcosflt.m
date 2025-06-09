function y = raisedcosflt(x,Rb,Ts,beta)
% Hàm bộ lọc raised cosine
% x - mẫu đầu vào
% Rb - băng thông bộ lọc (bit rate)
% Ts - chu kỳ lấy mẫu
% beta - hệ số roll-off
% y - tín hiệu đầu ra đã lọc
Ns = length(x);          % Số lượng mẫu
Tb = 1 / Rb;              % Thời gian bit
beta = beta * Rb;         % Chuyển beta về đơn vị tần số
% Tạo vector tần số
f = [0:Ns/2-1, -Ns/2:-1] / (Ns * Ts);
Xf = fft(x);              % Biến đổi Fourier của tín hiệu đầu vào
Yf = zeros(size(Xf));     % Khởi tạo phổ đầu ra
% Vùng tần số chính (từ 0 đến Rb/2 - beta)
ind = (abs(f) <= (Rb/2 - beta));
Yf(ind) = Xf(ind) * Tb;
% Vùng chuyển tiếp (Raised Cosine)
ind = (abs(f) <= (Rb/2 + beta) & abs(f) > (Rb/2 - beta));
Yf(ind) = Xf(ind) .* (Tb * cos(pi / (4 * beta) * ...
    (abs(f(ind)) - Rb/2 + beta)).^2);
% Vùng bị chặn (ngoài Rb/2 + beta)
ind = (abs(f) > (Rb/2 + beta));
Yf(ind) = Xf(ind) * 0;
% Biến đổi ngược về miền thời gian
y = ifft(Yf) / Tb;
end