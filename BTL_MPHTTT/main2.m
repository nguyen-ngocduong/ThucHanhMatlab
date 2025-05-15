clc; clear; close all;

% Tham số hệ thống
M = 64;
Rb = 12e6;                     % bit rate
SNR_dBs = [5 8 12];            % các mức SNR
filename = 'VinhHaLong.jpg';

% 1. Sinh nguồn tin
[bitstream, m, n] = generate_source_bits(filename, M);

% 2. Điều chế (PSK baseband signal)
[modulated, k, symbols] = modulate_64psk(bitstream, M);

% 3. Truyền qua kênh AWGN
[ber, rx_bits, rx_signal] = simulate_channel_awgn(modulated, bitstream, M, SNR_dBs);

% 4. Hiển thị kết quả
plot_results(modulated, rx_signal, ber, SNR_dBs, M, k);

% 5. Khôi phục ảnh (nếu có)
if ~isempty(m) && ~isempty(n)
    rx_bits = rx_bits(1:m*n*8);  % Cắt đúng độ dài ảnh
    reconstructed = Binary2Image_FromBits(rx_bits, m, n);
    figure;
    imshow(reconstructed); title('Ảnh phục hồi sau truyền 64-PSK');
end
