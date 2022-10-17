function [lengthnum,firstcharacter,lastcharacter] = StringValue(word)
%function will take a word and count the number of letters, display only
%the first and last character of the word
%output= length of word, first letter in word, last letter in word
% Input is word entered in '  ' ex. ('Halloween')
% Count number of letters
% Display first letter of word, then display last letter of word
lengthnum= strlength (word) ;
firstcharacter= word (1,1) ;
lastcharacter= word (1,lengthnum) ;

disp (lengthnum)
disp (firstcharacter)
disp (lastcharacter)
end 