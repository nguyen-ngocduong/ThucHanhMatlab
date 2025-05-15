function [reconstructed_img] = Binary2Image(filename)
    % Đọc ảnh màu
    img = imread(filename);
    [m, n, ~] = size(img);

    % Lấy chuỗi nhị phân từ ảnh màu
    binary_matrix = Convert_Binary(filename);  % bạn cần có hàm này

    reconstructed_img = zeros(m, n, 3); % Khởi tạo ảnh màu tái tạo

    total_pixels = m * n;
    for channel = 1:3
        for i = 1:m
            for j = 1:n
                % Tính vị trí bit bắt đầu cho pixel (i,j) của kênh `channel`
                pixel_index = (channel-1)*total_pixels + (i-1)*n + j;
                idx = (pixel_index - 1)*8 + 1;
                pixel_bits = binary_matrix(idx:idx+7);
                pixel_value = bi2de(pixel_bits', 'left-msb');
                reconstructed_img(i, j, channel) = pixel_value;
            end
        end
    end

    reconstructed_img = uint8(reconstructed_img);

    % Hiển thị ảnh gốc và ảnh tái tạo
    figure;
    subplot(1, 2, 1); imshow(img); title('Ảnh gốc (màu)');
    subplot(1, 2, 2); imshow(reconstructed_img); title('Ảnh tái tạo (màu)');

    % Lưu ảnh tái tạo (nếu cần)
    imwrite(reconstructed_img, 'reconstructed_VinhHaLong_color.jpg');
end
