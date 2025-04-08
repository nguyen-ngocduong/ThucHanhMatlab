function res = Bai18(n)
    if n < 0
        disp('Bạn nhập sai n');
        res = NaN; % Trả về NaN nếu nhập sai
    else
        res = 1;
        for i = 1:n
            res = res * i;
        end
    end
end
