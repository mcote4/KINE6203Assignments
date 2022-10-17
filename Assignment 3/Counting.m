function Counting(lownum1,highnum2)
%functinos takes 2 numbers as input and displays a counter from the lower
%number to the higher number 
%input 2 numbers, function will display the 2 numbers
%will start at the lowest number and count up to the highest number by 1
disp (lownum1)
disp (highnum2)

if lownum1<highnum2 
    g=lownum1; 
    h=highnum2 ;
else 
    h=lownum1 ;
    g=highnum2 ;
end 

[g:h];
for i= g:h
    disp (g)
    g= g+1 ;
    
end 