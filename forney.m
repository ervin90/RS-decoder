function [ err_magn ] = forney( omega_x2t, sigma_der, err_locs)
%   Finds the error magnitueds with usage
%   of Forney algorithm,
%   Ei = (omega(x) / sigma_der) | x=inverse(err_loc(i))
    global n;
    for i = 1 : length(err_locs)
        %first deal with the numerator
        inv = n - err_locs(i);
        numerator = 0;
        for j = 1 : length(omega_x2t)
            if omega_x2t(j) == -1
                continue;
            end
            
            if j == 1
                numerator = omega_x2t(j);
            else
                next = mod(((j-1) * inv + omega_x2t(j)), n);
                numerator = sum_gf(numerator, next);
            end
        end
        
        %now the denominator
        denominator = 0;
        for j = 1 : length(sigma_der)
            if sigma_der(j) == -1
                continue;
            end
            
            if j == 1
                denominator = sigma_der(j);
            else
                next = mod(((j-1) * inv + sigma_der(j)), n);
                denominator = sum_gf(denominator, next);
            end
        end
        
        err_value = numerator - denominator;
        if err_value < 0
            err_value = err_value + n;
        end
        err_magn(i) = err_value;
    end
    
end

