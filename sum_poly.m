function [ res ] = sum_poly( p1, p2)
%       Performs the sum of polynomials p1 and p2.
        mx = max(length(p1), length(p2));
        mn = min(length(p1), length(p2));
        p12 = ones(1, mx) * -1;
        for k = 1: mn
            if(p1(k)== -1 && p2(k) == -1)
                continue;
            end
            if(p1(k)== -1)
                p12(k) = p2(k);
                continue;
            end
            
            if(p2(k)== -1)
                p12(k) = p1(k);
                continue;
            end
            p12(k) = sum_gf(p1(k),p2(k));
            
        end
        
        if(length(p1) > length(p2))
            for k = mn + 1 : mx
                p12(k) = p1(k);
            end
        end

        if(length(p1) < length(p2))
            for k = mn + 1 : mx
                p12(k) = p2(k);
            end
        end
        
        res = p12;
end

