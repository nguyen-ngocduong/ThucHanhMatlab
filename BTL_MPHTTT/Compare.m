%Sau khi chạy file main2.m ta thu được:
% SNR = 5 dB => BER = 0.30219
% SNR = 8 dB => BER = 0.25743
% SNR = 12 dB => BER = 0.20007
% Sau khi chạy mô phỏng bằng file psk.mdl:
% SNR = 5 dB => BER = 0.3014
% SNR = 8 dB => BER = 0.2576
%SNR = 12 dB => BER = 0.2002
SNRs = [5 8 12];
BER_simulink = [0.3014 0.2576 0.2002];   % từ psk.mdl
BER_matlab =   [0.30219 0.25743 0.20007]; % từ main2.m

figure;
plot(SNRs, BER_simulink, 'ro-', 'LineWidth', 2);
hold on;
plot(SNRs, BER_matlab, 'b*-', 'LineWidth', 2);
grid on;

title('So sánh BER giữa mô phỏng Simulink và MATLAB');
xlabel('SNR (dB)');
ylabel('Tỷ lệ lỗi bit (BER)');
legend('Simulink (psk.mdl)', 'MATLAB (main2.m)', 'Location', 'northeast');
