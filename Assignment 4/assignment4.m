
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv') ;
% data from isok_data_6803.csv file is imported. 

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender);

%averages of iso strength for each individual male and female are
%calculated, as well as the mean iso strength for all males and for all females

day1toDay2 = dayComparer (SubjectID,Day1,Day2); %uses dayComparer function to determine if score increased from day 1 to day 2
day2toDay3 = dayComparer (SubjectID,Day2,Day3); %uses dayComparer function to determine if score increased from day 2 to day 3

averageWeight= mean(Weight,'omitnan'); %calculates mean of all iso strength weights across the 3 days from all subjects
day1Weight= mean(Day1,'omitnan') ; %calculates mean of all day 1 iso strength weight
day2Weight= mean(Day2,'omitnan'); %calculates mean of all day 2 iso strength weight
day3Weight= mean(Day3,'omitnan') ; %calculates mean of all day 3 iso strength weight

normDay1mean = (day1Weight ./ averageWeight) ; %calculates normalized mean of day1 weights
normDay2mean = (day2Weight ./ averageWeight) ; %calculates normalized mean of day2 weights
normDay3mean = (day3Weight ./ averageWeight) ; %calculates normalized mean of day3 weights

%Puts all variables in a 28x1 vector
%numel returns the number of elements in SubjectID length (28) and adds zeros to the end of the
%vector until the variable reaches 26 spots to make all rows equivalent. 
maleIsoIndMeans(numel(SubjectID)) = 0 ;  
femaleIsoIndMeans(numel(SubjectID)) = 0 ;
maleGroupIsoMean(numel(SubjectID)) = 0 ;
maleGroupIsoMean= maleGroupIsoMean' ;
femaleGroupIsoMean(numel(SubjectID))= 0 ;
femaleGroupIsoMean= femaleGroupIsoMean' ;
%transpose the vector's rows and columns. Making the 1x28 to 28x1 
day1toDay2(numel(SubjectID))= 0 ;
day2toDay3(numel(SubjectID))= 0 ;
normDay1mean(numel(SubjectID))= 0 ;
normDay1mean= normDay1mean' ;
%transpose the vector's rows and columns. Making the 1x28 to 28x1 
normDay2mean(numel(SubjectID))= 0 ;
normDay2mean = normDay2mean' ;
%transpose the vector's rows and columns. Making the 1x28 to 28x1 
normDay3mean(numel(SubjectID))= 0 ;
normDay3mean = normDay3mean' ;
%transpose the vector's rows and columns. Making the 1x28 to 28x1 

results = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
%creates a 28x9 table of the data calculated for those variables

writetable(results,'iso_results.csv') %stores the created table of results into a file named iso_results.csv
