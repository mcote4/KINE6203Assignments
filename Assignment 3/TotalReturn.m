function [totalmoney] = TotalReturn(Q,D,N,P)
%function will return total amount of money
% input-number of quarters, dimes, nickels, pennies
% output-return total amount of money
totalmoney=((Q*.25)+(D*.10)+(N*.05)+(P*.01)) ; 
end