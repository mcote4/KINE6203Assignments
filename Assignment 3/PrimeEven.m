function [tf] = PrimeEven(x)
%determines if number is a prime number or not
% input- single number
%output- if number is prime, return will be 1=true
%if nunber is not prime, return will be 0=false 
if isprime(x) 
    tf= true; 
else 
    tf=false;

end