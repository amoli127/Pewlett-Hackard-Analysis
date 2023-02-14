# Pewlett-Hackard-Analysis.

## Project Overview

### Purpose

Pewlett Hackard is a company preparing for a significant portion of its employees to retire in the next few years, and they need to know what positions need to be filled. This analysis aims to determine the number of employees who will retire based on titles and the eligibility of employees to participate in a mentorship program.

## Results


**The Number of Retiring Employees by Title**



  - We wrote a query to create a table containing the number of employees born between January 1, 1952, and December 31, 1955. The retirement_titles table below shows only the first ten rows; there was a total of 133,776.

   ![image](https://user-images.githubusercontent.com/117063056/218627832-e3a1918b-d148-4ffe-a887-7935ae3ae290.png)

  -  Using the first table, we created another table, removing employees who had already left the company and filtered them to remove duplicates and only account for their most recent title. The table below only shows the first ten rows. However, after applying the filters to the unique_titles table , there were only 72,458 rows. 
  
   ![image](https://user-images.githubusercontent.com/117063056/218628884-fcdfcb40-2c6b-426f-9706-b348247fc66b.png) 
   
  - Lastly, we wrote another query to identify the number of employees by title who are about to retire. The table below shows the count by title of employees who are about to retire. The retiring_titles table only contains seven rows since the results are grouped by title.
  
   ![image](https://user-images.githubusercontent.com/117063056/218630042-992b03d5-75d5-48d0-9714-c422716622bd.png)

  - After writing the various queries and modifying the first table, the retiring_titles table displays the number and type of positions the company needs to fill when employees retire.




**The Employees Eligible for the Mentorship Program**



