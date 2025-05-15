function plot_results(tx, rx, ber, SNRs, M, k)
    disp('BER tại các mức SNR:');
    for i = 1:length(SNRs)
        fprintf('SNR = %2d dB -> BER = %.5f\n', SNRs(i), ber(i));
    end

    figure; scatterplot(rx); title(sprintf('Biểu đồ chòm sao %d-PSK tại SNR = 8 dB', M));

    figure;
    subplot(2,1,1); plot(real(tx));
    title('Dạng sóng phát (biên độ theo thời gian)');
    subplot(2,1,2); pwelch(tx); title('Phổ công suất');

    %samples_per_symbol = 8;
    %oversampled = upsample(tx, samples_per_symbol);
    %figure; eyediagram(real(oversampled), 2*samples_per_symbol);
    %title(sprintf('Mẫu mắt của tín hiệu %d-PSK', M));
end
