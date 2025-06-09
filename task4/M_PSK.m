clc; clear; close all;

% a. 5000 bit ngẫu nhiên phân bố đều
bit = randi([0 1], 5000, 1);
k = 4;              % 4 bits/symbol (16-PSK)
m = 16;             % số điểm chòm sao

% Bổ sung 0 nếu không chia hết
N = length(bit);
if mod(N, k) ~= 0
    bit = [bit; zeros(k - mod(N,k),1)];  % nối dọc, tránh lỗi size
end

% b. Chuyển từ bit -> symbol (decimal)
bit_matrix = reshape(bit, k, []).';
x = bi2de(bit_matrix, 'left-msb');  % ánh xạ Gray thủ công nếu Octave

% Điều chế 16-PSK
phaseOffset = pi/16;
y = pskmod(x, m, phaseOffset, 'gray');
%Truyen qua kenh AWGN SNR = 5dB
ynoisy = awgn(y, 5, 'measured');
% ve bieu do sao
figure;
%scatterplot(ynoisy,1,0,'xb');
%scatterplot(y,1,0,'or');
title('16-PSK');
%Giai dieu che
z = pskdemod(ynoisy,m, phaseOffset, 'gray');
xBits = de2bi(z,k,'left-msb');
disp(xBits);
xBits = reshape(xBits.',[],1);
% Cắt phần pad để khớp độ dài
xBits = xBits(1:N);
[nErrors, ber] = biterr(bit, xBits);
fprintf('Số lỗi bit: %d trên %d bit | BER = %.5f\n', nErrors, N, ber);