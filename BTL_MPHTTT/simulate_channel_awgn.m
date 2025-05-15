function [ber, rx_bits_final, rx_8dB] = simulate_channel_awgn(modulated, bitstream, M, SNR_dBs)
    k = log2(M);
    ber = zeros(size(SNR_dBs));
    num_trials = 100; % Số lần lặp Monte Carlo
    for i = 1:length(SNR_dBs)
        snr = SNR_dBs(i);
        ber_trials = zeros(1, num_trials);
        for trial = 1:num_trials
            rx = awgn(modulated, snr, 'measured');
            demod = pskdemod(rx, M, pi/M);
            rx_bits = de2bi(demod, k, 'left-msb');
            rx_bits = reshape(rx_bits.', [], 1);
            ber_trials(trial) = sum(rx_bits ~= bitstream) / length(bitstream);
        end
        ber(i) = mean(ber_trials); % Trung bình BER
        if snr == 8
            rx_bits_final = rx_bits; % Lưu bit tại SNR = 8 dB
            rx_8dB = rx;
        end
    end
end