function check = checkPrime(n)

if(n<2) 
    check = 0;
    return;
end
for i = 2 : sqrt(n)
    if mod(n,i) == 0
        check = 0;
        return;
    end
end
check = 1;
end
