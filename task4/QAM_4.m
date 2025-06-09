clc;clear;close all;
%a.Tao chuoi bit ngau nhien 10000 bit phan bo deu
bit = randi([0 1], 10000, 1);
k = 2;              % 4 bits/symbol (16-PSK)
m = 4;             % số điểm chòm sao

% Bổ sung 0 nếu không chia hết
N = length(bit);
if mod(N, k) ~= 0
    bit = [bit; zeros(k - mod(N,k),1)];  % nối dọc, tránh lỗi size
end

% b. Chuyển từ bit -> symbol (decimal)
bit_matrix = reshape(bit, k, []).';
x = bi2de(bit_matrix, 'left-msb');  % ánh xạ Gray 
% Dieu che 4-QAM
y = qammod(x,m,'gray');
%di qua kenh AWGN snr = 10dB
ynoisy = awgn(y,10,"measured");
%plot
figure;
scatterplot(ynoisy,1,0,'xb');
scatterplot(y,1,0,'or');
title('4-QAM');
%giai dieu che
z = qamdemod(ynoisy,m,'gray');
xBits = de2bi(z,k,'left-msb');
xBits = reshape(xBits.', [], 1);
xBits = xBits(1:N);
[nErrors, ber] = biterr(xBits, bit);
fprintf('Số lỗi bit: %d trên %d bit | BER = %.5f\n', nErrors, N, ber);