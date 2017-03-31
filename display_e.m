function [  ] = display_e( what, poly )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    fprintf('\n%s:           ', what);
    for i = 1 : length(poly);
        fprintf('A^%d  ', poly(i));
    end
    fprintf('\n');
end

