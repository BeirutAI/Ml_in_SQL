--Get Minimum age and Maximum
Select 
	min(age) as Age_Minimum,
	max(age) as Age_Maximum
	From Wrangle.vwTrainTest
 
--We will divide the age by 5 range
Select
	*,
	Case 
		when Age > 0 and Age <= 16 then '0'
		when Age > 16 and Age <= 32 then '1'
		when Age > 0 and Age <= 48 then '2'
		when Age > 0 and Age <= 64 then '3'
		else '4' End AgeBand
From Wrangle.Train


--Update Age to replace age band
Update T
Set T.Age = Case 
		when Age > 0 and Age <= 16 then '0'
		when Age > 16 and Age <= 32 then '1'
		when Age > 0 and Age <= 48 then '2'
		when Age > 0 and Age <= 64 then '3'
		else '4' End
From Wrangle.Train T

Update T
Set T.Age = Case 
		when Age > 0 and Age <= 16 then '0'
		when Age > 16 and Age <= 32 then '1'
		when Age > 0 and Age <= 48 then '2'
		when Age > 0 and Age <= 64 then '3'
		else '4' End
From Wrangle.Test T

Select
	top 5 *
From Wrangle.Train