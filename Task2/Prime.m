%Viết hàm xét số đầu vào là số âm hay dương nếu dương thì số đó có phải là số
%nguyên tố hay không?
function res = Prime(n)
if n < 2
    fprintf('Khong phai so nguyen to');
    res = NaN;
else
    for i = 2 : sqrt(n)
        if mod(n,i) == 0
            fprintf('Khong phai so nguyen to');
            res = NaN;
        end
    end
    res = n;
end
end