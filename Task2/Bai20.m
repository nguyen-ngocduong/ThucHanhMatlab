%Tính giá trị thứ N của dãy Fibonnaci

function res = Bai20(n)
fibo = zeros(n);
fibo(1) = 1;
fibo(2) = 1;
for i = 3:n
    fibo(i) = fibo(i-1) + fibo(i-2);
end
res = fibo(n);
end