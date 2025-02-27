%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by:
%
% Due: September 15, 2022
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'https://www.mathworks.com/help/matlab/' ;

% 2. What does the command 'clear all' do?
%
% Answer: removes all items from workspace, freeing up system memory.
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

a = [1 7 21 32 67 32453];
averageAnswer= mean (a);


% 4. What command would you type to see a list of all installed toolboxes?

ver;

% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

help images; 

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
 plot (x,y);       %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: h= ttest(x)
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: for loops repeat specified number of times and while loops repeat
% when conditions are true.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: Not a number. 0/0.
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum (A, 'omitnan');


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs;


% 12. Create a variable myage and store your age. Subtract two from the value of the
% variable. Add one to the value of the variable. 

myAge= 22;
myAge = myAge - 2 ;
myAge = myAge + 1;

% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Store the value in a variable called myMaxNameLength

myMaxNameLength= namelengthmax; 

% 14. Create two variables to store a weight in pounds and ounces. Use who and whos
% to see the variables. Clear one of them and then use who and whos again.
% 1 lb= 16 oz

WeightinPounds= 5;
WeightinOunces = 5 * 16; 
who;
whos;
clear WeightinOunces ; 
who;
whos;

% 15. Store a number with a decimal place in a double variable (the default). Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming).

d = 4.6 ;
a = int32(d); 

% 16. Create a variable called pounds to store a weight in pounds. Convert this to 
% kilograms using an appropriate calculation or function and assign the result to a variable kilos.

pounds= 16;
kilos= pounds * 0.453592; 

% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) using an appropriate 
% calculation and store the result in a variable cTemp.

fTemp= 44 ; 
cTemp = (fTemp - 32) * (5/9);

% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA= 2:7;
vecB= 1.1:.2:1.7; 
vecC= 8:-2:2 ;

% 20. Give the MATLAB expression that would create a vector 
% (in a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi:

vec= linspace (0,2*pi,50) ; 

% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.

r= (-1:.5:1)' ;

% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called result of all zeros with the 
% dimensions given by the values of rows and cols. 

rows= randi (5) ;
cols= randi (5) ;
resultofallzeros= zeros ([rows, cols]); 

% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10. Perform each of the following and store your results in 
% appropriately named variables. (you should have a seperate line of code for each):
% - subtract 3 from each element n
% - count how many are positive
% - get the absolute value of each element
% - find the maximum.

RandFive= randi ([-10,10],1,5);
SubtractThree= RandFive - 3 ;
PositiveRandFive= length(nonzeros(RandFive(RandFive > 0))) ; 
AbsoluteValue= abs(RandFive); 
Maximum= max (RandFive); 

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 
% A= ((a+b/2)* h) 

base1= 2 ;          % Enter base length of trapezoid
base2= 4 ;          % Enter other base length of trapezoid 
height = 6 ;        % Enter height of trapezoid
trapArea = ((base1 + base2)/2) * height ; % Calculate area of trapezoid by adding base 1 and base 2 together, divide that number by 2, then multiple that nunmber by the height 


%%% Chose the question (a or b) that most closely relates to your area of study %%%
% 25a.) In biomechanics, a vector is a set of numbers that indicate 
% both magnitude and direction. Units such as velocity and force are vector 
% quantities. An example of a vector could be <2.34, 4.244, 5.323> meters/second. 
% This vector describes the velocity of an object at a certain point in 
% three-dimensional space, <x,y,z>. In solving problems related to vectors, 
% it is handy to know the unit vector of a certain measurement. 
% A unit vector is a vector that has a certain direction, but a magnitude of 1.
% The equation for a unit vector in three-dimensional space is:

% u = <x,y,z>/sqrt(x^2 + y^2 + z^2)

% Write some code that prompts the user for x, y, and z values, and then 
% calculates the unit vector and stores the value in a variable called
% unitVector. 

disp ('Input values and press enter to submit');
x = input ('Input an integer for X variable:');
y = input ('Input an integer for Y variable:');
z = input ('Input an integer for Z variable:');
unitVector = [x,y,z]/sqrt (x^2 + y^2 + z^2); 

% 25b.) In sports marketing and other areas of sports management, 
% ROI (return on investment) is a key metric when making organizational 
% decisions. The classic equation for ROI is:

% ROI = (Total Revenues – Total Costs) / Total Costs x 100

% Write some code that prompts the user to input revenues and cost and then 
% calculates the ROI and stores the value in a variable called
% ROI.

%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line
disp("Hello World")







%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)

load handel
sound (y,Fs) 
