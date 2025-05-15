function [reconstructed_img] = Binary2Image_FromBits(bitstream, m, n)
    reconstructed_img = zeros(m, n, 3); % Ảnh màu
    total_pixels = m * n;
    for channel = 1:3
        for i = 1:m
            for j = 1:n
                pixel_index = (channel-1)*total_pixels + (i-1)*n + j;
                idx = (pixel_index - 1)*8 + 1;
                pixel_bits = bitstream(idx:idx+7);
                pixel_value = bi2de(pixel_bits', 'left-msb');
                reconstructed_img(i, j, channel) = pixel_value;
            end
        end
    end
    reconstructed_img = uint8(reconstructed_img);
end