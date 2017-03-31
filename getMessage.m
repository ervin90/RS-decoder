function [ message ] = getMessage( corrected_msg )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    global n t;
    message = ones(1, n) * -1;
    for i = 2*t + 1 : n
        message(i-2*t) = corrected_msg(i);
    end
    
    while length(message) > 1 && message(length(message)) == -1
        message(length(message)) = [];
    end
end

