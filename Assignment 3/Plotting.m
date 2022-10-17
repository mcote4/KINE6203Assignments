function [plotfigure] = Plotting(a,b)
%Function will plot 2 vectors on a figure with titles on each axis
% user needs to make an a=[vector] and b=[vector] in command window
%once 2 vectors are entered in command window
% user then changes title, xlabel,and ylabel within the function
%title, xlabel, ylabel entered in apostrophes and paranthesis ex. ('')
% Use Plotting (a,b)function
%Figure will open with labels and vectors that were inputted 
plotfigure=plot (a,b) ;
title ('Line Plot of Two Vectors')
xlabel('Hours Spent on MATLAB')
ylabel ('MATLAB Grade')

end