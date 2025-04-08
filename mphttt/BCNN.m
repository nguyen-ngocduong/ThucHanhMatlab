function n = BCNN(a,b)
    if a == 0 && b == 0
        n = 0;
        return;
    end
    ucln = gcd(a,b);
    n = (a*b) / ucln;
end