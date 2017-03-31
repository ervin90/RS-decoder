function [ derived ] = derive( res )
%   Computes the derivative of the 
%   res polynomial. Terms at even x
%   powers are removed. Others are 
%   shifted left by one.
    derived = res;
    for i = 1 : length(derived) - 1
        derived(i) = derived(i+1);
    end
    derived(length(derived)) = [];
    for i = 2 : 2 : length(derived)
        derived(i) = -1;
    end
    while length(derived) > 1 &&  derived(length(derived)) == -1
        derived(length(derived)) = [];
    end
end

