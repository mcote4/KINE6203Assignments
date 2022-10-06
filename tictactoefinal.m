% Tic Tac Toe Game Code
% SectionKINE6203
% Mia Cote
% September 13, 2022
% Use this code to play a game of Tic Tac Toe! 
%Display welcome message to user in command window
disp("Welcome to Tic Tac Toe")
%Ask user if they want to play
doYouWanttoPlay= input ('Do you want to play? (yes/no)',"s"); %player types yes or no to play game
%if yes, board will display. if no, "have a nice day"

if strcmp (doYouWanttoPlay,'yes') %player types yes, continues to board

while doYouWanttoPlay==('yes') %plays tic tac toe
    board= [ '1' , '4' , '7' ; '2' , '5' , '8' ; '3' , '6' , '9' ];
    disp(board)
    
    i=1 ; %setting variable up for loop
   for i=1 %for loop
            '1'==board(1,1);                             
            '2' ==board(2,1);                            
            '3' ==board(3,1);                           
            '4' ==board(1,2);                            
            '5' ==board(2,2);                            %Variables that will be inputed by players
            '6' ==board(3,2);                             
            '7' ==board(1,3);                           
            '8' ==board(2,3);                           
            '9' ==board(3,3);  

%prompt user for move
%usermove1
availableMoves= 1:9; % 9 available moves 
    userMove= input ("Where do you want to move on the board? Write the number of the box."); %player types number in numerical form 
    board(userMove) = 'X'; %places an X in box chosen
disp (board)

availableMoves = setdiff(availableMoves,userMove); % Takes userMove out of available moves

disp ("Computer's turn") %computermove1
move=randi(9) ; % 9 random moves
checkmove= ismember(move,availableMoves) ;   %checks if first variable is in the second variable (checks to see if move is in available moves)
if checkmove== true %if move is available, computer places O in box
board(move) = 'O' ;

else 
    while checkmove== false            % if move not available, it will keep guessing moves until checkmove==true
        move= randi (9) ; %random move
        checkmove= ismember(move, availableMoves); %check if chosen move is available
    end 
    board(move) = 'O' ; %will place a O in the box
end 
disp (board)

    availableMoves = setdiff(availableMoves,move); %takes computer move out of available moves
%usermove2
userMove= input ("Where do you want to move on the board? Write the number of the box."); 
checkmove= ismember (userMove,availableMoves) ; %checks if first variable is in the second variable (checks to see if userMove is in available moves)
if checkmove== true %if userMove is in available moves, places an X in box
board(userMove) = 'X' ;
else 
    while checkmove==false %if userMove is no in avaialable moves, user is told to choose an available box
        userMove= input ('Box unavailable. Please choose an available box.'); %user inputs new number 
        checkmove= ismember (userMove,availableMoves) ; %checks to see if box is available
    end
    board(userMove) = 'X'; %places X when box is avaialble 
end 

disp(board)

availableMoves = setdiff(availableMoves,userMove); %Takes userMove out of availableMoves

disp ("Computer's turn") %computermove2
move=randi(9) ;
checkmove= ismember(move,availableMoves) ;   %checks if first variable is in the second variable
if checkmove== true 
board(move) = 'O' ;

else 
    while checkmove== false            %will keep guessing moves until checkmove==true
        move= randi (9) ;
        checkmove= ismember(move, availableMoves);
    end 
    board(move) = 'O' ;
end 
disp (board)
    availableMoves = setdiff(availableMoves,move);
%usermove3
userMove= input ("Where do you want to move on the board? Write the number of the box."); 
checkmove= ismember (userMove,availableMoves) ;
if checkmove== true 
board(userMove) = 'X' ;
else 
    while checkmove==false
        userMove= input ('Box unavailable. Please choose an available box.');
        checkmove= ismember (userMove,availableMoves) ;
    end
    board(userMove) = 'X';
end 

disp(board)
%check human win 
%all possible wins
if (board (1,1)=='X'&& board(2,1)=='X' && board(3,1)=='X') 
    disp ('Human Wins!')
    break 
elseif (board (1,1)=='X'&& board(1,2)=='X' && board(1,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,1)=='X'&& board(2,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (3,1)=='X'&& board(3,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,3)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,2)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,2)=='X'&& board(2,2)=='X' && board(3,2)=='X')
    disp ('Human Wins!')
    break
elseif  (board (2,1)=='X'&& board(2,2)=='X' && board(2,3)=='X')
    disp ('Human Wins!')
    break
end
%check computer win
%all possible wins
if (board (1,1)=='O'&& board(2,1)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break 
elseif (board (1,1)=='O'&& board(1,2)=='O' && board(1,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)=='O'&& board(2,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (3,1)=='O'&& board(3,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,3)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,2)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,2)=='O'&& board(2,2)=='O' && board(3,2)=='O')
    disp ('Computer Wins!')
    break
elseif  (board (2,1)=='O'&& board(2,2)=='O' && board(2,3)=='O')
    disp ('Computer Wins!')
    break
end

availableMoves = setdiff(availableMoves,userMove);
disp ("Computer's turn") %computermove3
move=randi(9) ;
checkmove= ismember(move,availableMoves) ;   %checks if first variable is in the second variable
if checkmove== true 
board(move) = 'O' ;

else 
    while checkmove== false            %will keep getting moves until checkmove==true
        move= randi (9) ;
        checkmove= ismember(move, availableMoves);
    end 
    board(move) = 'O' ;
end 
disp (board)
    availableMoves = setdiff(availableMoves,move);
%check human win 
if (board (1,1)=='X'&& board(2,1)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break 
elseif (board (1,1)=='X'&& board(1,2)=='X' && board(1,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,1)=='X'&& board(2,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (3,1)=='X'&& board(3,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,3)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,2)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,2)=='X'&& board(2,2)=='X' && board(3,2)=='X')
    disp ('Human Wins!')
    break
elseif  (board (2,1)=='X'&& board(2,2)=='X' && board(2,3)=='X')
    disp ('Human Wins!')
    break
end
%check computer win
if (board (1,1)=='O'&& board(2,1)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break 
elseif (board (1,1)=='O'&& board(1,2)=='O' && board(1,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)=='O'&& board(2,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (3,1)=='O'&& board(3,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,3)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,2)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,2)=='O'&& board(2,2)=='O' && board(3,2)=='O')
    disp ('Computer Wins!')
    break
elseif  (board (2,1)=='O'&& board(2,2)=='O' && board(2,3)=='O')
    disp ('Computer Wins!')
    break
end
%usermove4
userMove= input ("Where do you want to move on the board? Write the number of the box."); 
checkmove= ismember (userMove,availableMoves) ;
if checkmove== true 
board(userMove) = 'X' ;
else 
    while checkmove==false
        userMove= input ('Box unavailable. Please choose an available box.');
        checkmove= ismember (userMove,availableMoves) ;
    end
    board(userMove) = 'X';
end 

disp(board)
%check human win 
if (board (1,1)=='X'&& board(2,1)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break 
elseif (board (1,1)=='X'&& board(1,2)=='X' && board(1,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,1)=='X'&& board(2,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (3,1)=='X'&& board(3,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,3)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,2)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,2)=='X'&& board(2,2)=='X' && board(3,2)=='X')
    disp ('Human Wins!')
    break
elseif  (board (2,1)=='X'&& board(2,2)=='X' && board(2,3)=='X')
    disp ('Human Wins!')
    break
end
%check computer win
if (board (1,1)=='O'&& board(2,1)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break 
elseif (board (1,1)=='O'&& board(1,2)=='O' && board(1,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)=='O'&& board(2,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (3,1)=='O'&& board(3,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,3)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,2)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,2)=='O'&& board(2,2)=='O' && board(3,2)=='O')
    disp ('Computer Wins!')
    break
elseif  (board (2,1)=='O'&& board(2,2)=='O' && board(2,3)=='O')
    disp ('Computer Wins!')
    break
end
availableMoves = setdiff(availableMoves,userMove);
disp ("Computer's turn") %computermove4
move=randi(9) ;
checkmove= ismember(move,availableMoves) ;   %checks if first variable is in the second variable
if checkmove== true 
board(move) = 'O' ;

else 
    while checkmove== false            %will keep getting moves until checkmove==true
        move= randi (9) ;
        checkmove= ismember(move, availableMoves);
    end 
    board(move) = 'O' ;
end 
disp (board)
    availableMoves = setdiff(availableMoves,move);
    %check human win 
if (board (1,1)=='X'&& board(2,1)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break 
elseif (board (1,1)=='X'&& board(1,2)=='X' && board(1,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,1)=='X'&& board(2,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (3,1)=='X'&& board(3,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,3)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,2)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,2)=='X'&& board(2,2)=='X' && board(3,2)=='X')
    disp ('Human Wins!')
    break
elseif  (board (2,1)=='X'&& board(2,2)=='X' && board(2,3)=='X')
    disp ('Human Wins!')
    break
end
%check computer win
if (board (1,1)=='O'&& board(2,1)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break 
elseif (board (1,1)=='O'&& board(1,2)=='O' && board(1,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)=='O'&& board(2,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (3,1)=='O'&& board(3,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,3)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,2)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,2)=='O'&& board(2,2)=='O' && board(3,2)=='O')
    disp ('Computer Wins!')
    break
elseif  (board (2,1)=='O'&& board(2,2)=='O' && board(2,3)=='O')
    disp ('Computer Wins!')
    break
end
    %usermove5
userMove= input ("Where do you want to move on the board? Write the number of the box."); 
checkmove= ismember (userMove,availableMoves) ;
if checkmove== true 
board(userMove) = 'X' ;
else 
    while checkmove==false
        userMove= input ('Box unavailable. Please choose an available box.');
        checkmove= ismember (userMove,availableMoves) ;
    end
    board(userMove) = 'X';

end 
disp(board)
%check human win 
if (board (1,1)=='X'&& board(2,1)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break 
elseif (board (1,1)=='X'&& board(1,2)=='X' && board(1,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,1)=='X'&& board(2,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (3,1)=='X'&& board(3,2)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,3)=='X' && board(3,3)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,3)=='X'&& board(2,2)=='X' && board(3,1)=='X')
    disp ('Human Wins!')
    break
elseif (board (1,2)=='X'&& board(2,2)=='X' && board(3,2)=='X')
    disp ('Human Wins!')
    break
elseif  (board (2,1)=='X'&& board(2,2)=='X' && board(2,3)=='X')
    disp ('Human Wins!')
    break
end
%check computer win
if (board (1,1)=='O'&& board(2,1)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break 
elseif (board (1,1)=='O'&& board(1,2)=='O' && board(1,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)=='O'&& board(2,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (3,1)=='O'&& board(3,2)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,3)=='O' && board(3,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,3)=='O'&& board(2,2)=='O' && board(3,1)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,2)=='O'&& board(2,2)=='O' && board(3,2)=='O')
    disp ('Computer Wins!')
    break
elseif  (board (2,1)=='O'&& board(2,2)=='O' && board(2,3)=='O')
    disp ('Computer Wins!')
    break
elseif (board (1,1)~= board(2,1)~= board(3,1)~=board (2,1)~= board (2,2)~= board (2,3) ~= board (3,1)~= board(3,2) ~=board (3,3))
    disp ('Tie Game! Try again!') 
    i=2 ; %ending for loop after tie game
end 
    end

doYouWanttoPlay= input ('Do you want to play again? yes or no.',"s"); %asking player if they want to play again
if strcmp (doYouWanttoPlay,'yes') %yes will generate new board 
elseif strcmp (doYouWanttoPlay,'no') %no will end game 
    disp ('Thank you for playing.')
    break 
else 
    disp ('please insert yes or no next time') %will exit game
    break 
end 
end 
elseif strcmp (doYouWanttoPlay,'no')  %end of the if loop at beginning of code 
    disp ('Have a nice day. Go Raiders!')
else
    disp ('please insert yes or no next time') %will exit game
end 
