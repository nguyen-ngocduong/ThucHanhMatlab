function res = Bisection_Method(f,a,b,e,N)
%N so lan lap tim ra nghiem
%e sai so
if f(a)*f(b) > 0 
    res = NaN;
    fprintf('Khong co nghiem trong khoang a va b');
    return;
end
count = 0;
while (count < N) && ((b-a)/2 > e)
    c = (a+b)/2;
    if (f(c) == 0)
        res = c;
        return;
    elseif f(a)*f(c) < 0
        b = c;
    else 
        a = c;
    end
    count = count +1;
end
res = (a+b)/2;
fprintf("Nghiệm gần đúng: %.6f sau %d lần lặp\n", res,count);
end