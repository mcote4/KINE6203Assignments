function [Sum, Difference, Product, Max] = SDPM (num1, num2)
%Outputs sum, difference, product of 2 numbers along with displaying the highest number 
% Input- enter 2 numbers 
%function will take sum, difference, and product of the 2 numbers
%will also display highest number out of the 2 numbers 

Sum= num1+num2;

if (num1>=num2) 
Difference= num1-num2 ;
else 
    Difference= num2-num1 ; 
end 

Product= num1*num2 ;

if (num1>num2)
    Max=num1 ;
elseif (num2>num1)
 Max=num2;
elseif (num1==num2)
    Max=(num1); 
    
end 
disp (Sum)
disp (Difference)
disp (Product)
disp (Max)
end 