function [Valid] = TriangleSides(triangleArray)
%function will determine if triangle is valid
% input- single 3-elementary array in [] ex. ([3,4,5])
%output- returns logical value of 0 or 1 to indicate if the 3-element array represents the sides of a valid triangle 
%0= false 1=true
%note: valid triangle is when the sum of the 2 shorter lengths are greater than the longest side 
B =sort (triangleArray);
if B(1,1)+ B(1,2) > B(1,3)
    Valid=1;
elseif  B(1,1)+ B(1,2) < B(1,3)
    Valid=0 ;
end 
end