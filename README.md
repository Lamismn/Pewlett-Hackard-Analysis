# Pewlett-Hackard-Analysis
## Overview
This analysis uses PostgreSQL to determine the employess that are about to retire & the employees elegible for a mentorship program for a large company employing thousands of employees. The data used is from CSV excel files saved by the company, & the output shows the elegible employees that follow the company's criteria for a retirement package or for a mentorship program.
## Results
After filtering the data to get the desired outputs, the following was concluded:

1. after using the following code to retrieve the employees who are currently working for the comany and are about to retire, we can see that the output data has a lot of duplicate values for the employee number, that is because some employees have held several titles across the years.

<img width="408" alt="code 1" src="https://user-images.githubusercontent.com/79733383/115165783-9967b980-a07d-11eb-82a9-e882f8de8d9c.PNG">
2. After using the DISTINCT ON function, & sorting the output by the last to_date, we are able to create an output file with only one entry by employee, that has the current positio they hold. This file could be found in the following link. https://github.com/Lamismn/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv
3. To find the number of employees retiring from each title, we group the last table by title & count the number of employees for each title, to do this, we use the following code

<img width="194" alt="code 2" src="https://user-images.githubusercontent.com/79733383/115165957-a5a04680-a07e-11eb-8615-a8242aac824f.PNG">

The output file is in the following link https://github.com/Lamismn/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv

4. The final output is a file containing the data for the employees who are currently with the company & are eligible for a mentorship program. The output file is in the following link. https://github.com/Lamismn/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv

Note: to be able to get only one entry per employee & ensure it has the current title, we used the following code, the final line sorts by employee number with a descending order for the to_date column.

<img width="397" alt="code 3" src="https://user-images.githubusercontent.com/79733383/115166153-8d7cf700-a07f-11eb-9047-ff23c6183468.PNG">
## Summary

According to the analysis we performed, the following table shows the number of retiring employees from esch title:

<img width="206" alt="retiring titles" src="https://user-images.githubusercontent.com/79733383/115166242-26137700-a080-11eb-83a1-97d7c91946d5.PNG">

The following table shows the number of current employees eligible for the mentoring by title.

<img width="221" alt="mentoring" src="https://user-images.githubusercontent.com/79733383/115166307-873b4a80-a080-11eb-949f-015325dffc71.PNG">

As shown in the above table, the current employees that are eligible for the mentoring program based on the company's criteria will not cover the number of employees that are leaving for retirement, which will cause a huge drop soon. To overcome this, the criteria for selecting employees for the mentoship program should change, our advice is for the comapny to start considering younger people for senior positions, lowering the age needed for eligibility will increase the number of employees who can join.

The company also needs to start hiring new people soon, to allow for a smoother transition once older employees retire.




