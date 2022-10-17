function [answer] = WOOHAH(num1, num2)
%function will determine if sum of numbers is even or odd
% input 2 numbers 
%output- display Wooo if sum of numbers is even
%output-display Hah is sum of numbers is odd
Sum= num1 + num2 ;
if mod(Sum,2)==0 
    answer='Wooo';
    
elseif mod(Sum,2)~= 0
    answer='Hah';
end 
