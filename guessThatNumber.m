function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Mia Cote
%
%         DUE: November 17
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3):'); 

while level ~= beginner && level ~= moderate && level ~= advanced   %Bug found. all || should be swithced to &&. Found while trying to use code, kept getting "sorry..." when entering 1,2,3. 
fprintf('Sorry, that is not a valid level selection.\n')

level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else 
highest = advancedHighest;  % Bug found. I noticed it when reading through the code. The h in highest my be capitalized so it matches the variable.       
    
end

% randomly select secret number between 1 and highest for level of play

%secretNumber = floor(rand() + 1 * highest); 
secretNumber = randi(highest) ; %bug found. above statement was allowing numbers to be guessed outside the designated highest number (depended on mode level). The code also chose the same "random" number everytime. Had to replace that line of code to make sure the limit was the highest number and the number was random every trial. Found while running code and putting 11 at beginner level and guessing 10 in level 1 several times. 

% initialize number of guesses and User_guess

numOfTries = 0; %Bug found. numOfTries should be set to 0 instead of 1 because once someone plays, it'll start at 1 and then go to 2 when it's been 1 try. By changing to 0, it will count tries correctly. Found using code. 
userGuess = 0;
% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest %Bug found. userGuess was equal to or more than highest number when it should just be if the userGuess is higher. I deleted = to make it just >. This way, anything under 1 or higher than highest number will display that message.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop
% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %Bug found. Sign was contradicting statement because it was saying if guess number is higher than secret number, it'll display number is too low. So I switched the sign. Found when running code. 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber,numOfTries); %Bug found. Found when looking through the code, there are two numbers supposed to be printed but there was only 1 variable being displayed. I added numOfTries to display as the 2nd variable. 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop 

% end of game
end %bug found. function needs an end. Found looking through code. end function was added.