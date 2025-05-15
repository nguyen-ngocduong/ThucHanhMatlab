function [bitstream, m , n] = generate_source_bits(filename, M)
    k = log2(M);
    [gray_img, m, n] = read_image(filename);
    [bitstream] = Convert_Binary(filename);
    L = floor(length(bitstream) / k) * k;
    bitstream = bitstream(1:L);
end