function [modulated, k, symbols] = modulate_64psk(bitstream, M)
    k = log2(M);
    symbols = bi2de(reshape(bitstream, k, []).', 'left-msb');
    modulated = pskmod(symbols, M, pi/M);
end