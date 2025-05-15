function [binary_matrix] = Convert_Binary(filename)
    % Đọc ảnh màu
    img = imread(filename);
    [m, n, ~] = size(img);

    % Tách 3 kênh: R, G, B
    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);

    % Chuyển sang double để xử lý
    R = double(R); G = double(G); B = double(B);

    % Tổng số bit: m x n x 8 x 3 = m*n*24
    binary_matrix = zeros(m * n * 8 * 3, 1);

    % Ghi lần lượt R → G → B vào binary_matrix
    for channel = 1:3
        if channel == 1
            channel_data = R;
        elseif channel == 2
            channel_data = G;
        else
            channel_data = B;
        end

        for i = 1:m
            for j = 1:n
                pixel_value = channel_data(i, j);
                pixel_bits = de2bi(pixel_value, 8, 'left-msb');
                pixel_idx = (channel-1)*m*n + (i-1)*n + j;
                idx = (pixel_idx - 1)*8 + 1;
                binary_matrix(idx:idx+7) = pixel_bits;
            end
        end
    end
end
