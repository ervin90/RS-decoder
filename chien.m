function [ err_locs ] = chien( sigma )
%   Returns the error locations from the 
%   sigma error polynomial.

    global n;

    deg = length(sigma) - 1;
    
    if deg == 0
        err_locs = [];
    end
    
    if deg == 1
        err_locs = sigma(2);
    end
    
    if deg == 2
        for i = 0 : n
            b1 = i;
            b2 = sigma(3) - b1;
            if b2 < 0
                b2 = b2 + n;
            end
            s = sum_gf(b1, b2);
            if s == sigma(2)
                err_locs = [ b1 b2 ];
                break;
            end
        end
    end
end

