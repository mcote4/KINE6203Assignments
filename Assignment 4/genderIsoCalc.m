function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender)
%This function will take day 1, day2, and day 3 of each individual and will find the average iso strength of that individual male or female, as well as the overall average for the males and
%females
%Will first sort gender into two categories: female or male
%IsoIndMean is the average of the 3 days for each subject
%GroupIsoMean is the overall average of each gender 

for i = 1:length(Gender) % for loop will go through all SubjectIDs and sort the males and females. 
    %as it sorts, each subjectID will have its 3day average iso strength
    %calculated

if Gender(i)== "M"
    maleIsoIndMeans(i)= ((Day1(i)+Day2(i)+Day3(i))/3) ; 
    %individual male sorted and will take average iso strength of the 3 days  

elseif Gender(i)== "F"
    femaleIsoIndMeans(i)= ((Day1(i)+Day2(i)+Day3(i))/3) ; 
    %individual female sorted and will take average iso strength of the 3 days 
end 
end 

maleIsoIndMeans= maleIsoIndMeans' ;
%transpose the vector's rows and columns. Making the 1x26 to 26x1 
femaleIsoIndMeans= femaleIsoIndMeans' ;
%transpose the vector's rows and columns. Making the 1x26 to 26x1 

maleGroupIsoMean = mean(nonzeros(maleIsoIndMeans)) ; 
%takes the average of all male iso individual strengths means to calculate the mean of the male group
%by not taking the zeros into consideration
femaleGroupIsoMean = mean(nonzeros(femaleIsoIndMeans)) ; 
%takes the average of all female iso individual strengths means to calculate the mean of the female
%group by not taking the zeros into consideration
end
