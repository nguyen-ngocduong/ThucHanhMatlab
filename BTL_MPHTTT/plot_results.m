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

    % Tạo tín hiệu oversampled cho mẫu mắt thô
    samples_per_symbol = 8;
    oversampled = upsample(real(tx), samples_per_symbol);
    N = 400000; % Số điểm để vẽ thủ công
    figure;
    stem(oversampled(1:N));
    title('Biểu diễn thời gian');
    % Vẽ biểu đồ mẫu mắt thực tế
    figure;
    eyediagram(oversampled(1:N), 2*samples_per_symbol);
    title(sprintf('Mẫu mắt của tín hiệu %d-PSK', M));
end
