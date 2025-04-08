function year(thang,nam)
    if(thang < 0 || thang > 12 || nam <= 0)
        disp('Ban nhap sai thang va nam');
    elseif ((mod(nam,400)~=0 && mod(nam,4)==0) || mod(nam,400)==0 ) && thang==2
        disp('29');
    else
        if (thang == 1 || thang == 3 || thang == 5 || thang == 7 || thang == 8 || thang == 10 || thang == 12)
            disp('31');
        elseif thang == 2
            disp('28');
        else
            disp('30');
        end
    end
end