function [ber, rx_bits_final, rx_8dB] = simulate_channel_awgn(modulated, bitstream, M, SNR_dBs)
    k = log2(M);
    ber = zeros(size(SNR_dBs));
    rx_bits_final = [];
    rx_8dB = [];

    for i = 1:length(SNR_dBs)
        snr = SNR_dBs(i);
        rx = awgn(modulated, snr, 'measured');
        demod = pskdemod(rx, M, pi/M);
        rx_bits = de2bi(demod, k, 'left-msb');
        rx_bits = reshape(rx_bits.', [], 1);
        ber(i) = sum(rx_bits ~= bitstream) / length(bitstream);
        if snr == 8
            rx_bits_final = rx_bits;
            rx_8dB = rx;
        end
    end
end
