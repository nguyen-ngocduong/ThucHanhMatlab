%Tìm giá trị lớn nhất của n để tổng 1^2 + 2^2 + . . . + n^2 bé hơn N*100
%Giải pt 
function res = Bai19(N)
sum = 0;
n = 0;
while sum < N*100
    n = n+1;
    sum = sum + n*n;
end
res = n -1;
end