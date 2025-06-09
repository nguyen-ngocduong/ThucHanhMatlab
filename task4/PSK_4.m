clc; clear; close all;
% a. Tạo chuỗi ngẫu nhiên phân bố chuẩn với trung bình 2 và độ lệch chuẩn 1
mu = 2; v = 1; k = 2;
x = mu + sqrt(v) * randn(1,5000);
bit = x > mu;

% Đảm bảo số bit chia hết cho k
if mod(length(bit), k) ~= 0
    bit = bit(1:end - mod(length(bit), k));
end

% Biến đổi sang symbol
bit_matrix = reshape(bit, k, []).';
symbols = uint8(bi2de(bit_matrix, 'left-msb'));  % chuyển kiểu nguyên

% b. Điều chế PSK
m = 4;
phaseOffset = pi/m;
y = pskmod(symbols, m, phaseOffset, 'gray');

% Truyền qua AWGN
ynoisy = awgn(y, 5, 'measured');

% Vẽ chòm sao
figure;
scatterplot(ynoisy,1,0,'xb'); hold on;
scatterplot(y,1,0,'or');
title('\pi/4 - PSK');
legend('Tín hiệu nhiễu', 'Tín hiệu lý tưởng');

% Giải điều chế
rx_symbols = pskdemod(ynoisy, m, phaseOffset, 'gray');
rx_bits = de2bi(rx_symbols, k, 'left-msb');
rx_bits = reshape(rx_bits.', 1, []);

% Chuỗi bit gốc
bit_tx = reshape(bit_matrix.', 1, []);  % cần chuyển ngược

% Tính lỗi bit
[nErrors, ber] = biterr(bit_tx, rx_bits);
fprintf('Số lỗi bit: %d | BER: %.5f\n', nErrors, ber);
