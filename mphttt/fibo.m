function res = fibo(n)
    tmp = zeros(n);
    tmp(1) = 1;
    tmp(2) = 1;
    for i = 3 : n
        tmp(i) = tmp(i-1) + tmp(i-2);
    end
    res = tmp(n);
end