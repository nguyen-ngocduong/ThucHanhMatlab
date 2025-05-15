function [bitstream, m, n] = generate_source_bits(filename, M)
    k = log2(M);
    img = imread(filename);
    [m, n, ~] = size(img);
    bitstream = Convert_Binary(filename);
    L = floor(length(bitstream) / k) * k;
    bitstream = bitstream(1:L);
end