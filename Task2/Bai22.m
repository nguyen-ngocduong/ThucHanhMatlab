%Tính tích từ 1 -> n của (căn((n+1)/2) + n^2) lấy sau dấu phẩy b số

function tich = Bai22(N, b)
mul = 1;
for i = 1 : N
    mul = mul * (sqrt(i+1)/2 + i^2);
end
tich = mul;
fprintf("Tích của biểu thức(làm tròn sau 2 dấu phẩy): %.*f", b, tich);
end