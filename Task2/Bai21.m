%Tính tổng từ 1 đến N của (-2)/(e^-n) lấy sau dấu phẩy b số
function tong = Bai21(N, b)
    s = 0;
    for i = 1 : N
        s  = s + (-2) / (exp(-i));
    end
    tong = s;
    fprintf("Tổng = %.*f\n", b, tong); % Hiển thị đúng số chữ số sau dấu phẩy
end