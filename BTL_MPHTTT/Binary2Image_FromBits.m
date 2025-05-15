function [reconstructed_img] = Binary2Image_FromBits(bitstream, m, n)
    reconstructed_img = zeros(m, n);
    for i = 1:m
        for j = 1:n
            idx = ((i-1)*n + (j-1))*8 + 1;
            pixel_bits = bitstream(idx:idx+7);
            pixel_value = bi2de(pixel_bits', 'left-msb');
            reconstructed_img(i, j) = pixel_value;
        end
    end
    reconstructed_img = uint8(reconstructed_img);
end
