function [day1toDay2,day2toDay3] = dayComparer(SubjectID,DayA,DayB)
%This function will take each SubjectID's Day A and Day B weights
%and determine if Day B improved from Day A. If Day B is bigger than Day A,
%it categorizes as improvement (variable). The SubjectIDs that improved
%between the days will be displayed.
%
    
improvement= DayB> DayA ;
day1toDay2= SubjectID (improvement) ;
day2toDay3= SubjectID (improvement) ;
end

