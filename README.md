# Student Learning Platform Analytics

## Project Overview
This is a SQL mini-project analysis of a learning platform on instructor credibility, candidate performance, program completion, and engagement patterns.

## Table Structure
  Table Name:  Students 
  Column 			    Description
-	Student_id		  Student’s Unique ID (INT) (PRIMARY KEY)
-	Student_name		Name of the student (VARCHAR(50))
-	City			      Student’s Location (VARCHAR(50))
-	DOJ			        Date of Joining (DATE)

	Table Name:  Programs
	Column			    Description
-	Program_id		  Unique ID (INT) (PRIMARY KEY)
-	Title			      Program Name (VARCHAR(50))
-	Category		    Domain (SQL, Python, ML) (VARCHAR(50))
-	Instructor_id		Instructor handling the program (INT)
-	Rating			    Rating of the program (INT)

	Table Name:  Instructors
	Column			    Description
-	Instructor_id		Instructor handling the program (INT) (PRIMARY KEY)
-	Instructor_name	Name of the instructor (VARCHAR(50))
-	Experience		  Years of teaching experience (INT)

	Table Name:  Enrolments
	Column			    Description
-	Enrolment_id		Unique ID (INT) (PRIMARY KEY)	
-	Student_id		  Student’s Unique ID (INT) (FOREIGN KEY)
-	Program_id		  Unique ID (INT) (FOREIGN KEY)
-	Date_enrolled		Date of Enrolment (DATE)
-	Status			    “Enrolled”,”In Progress”,”Completed”,”Discontinued”

	Table Name – Course Progress
	Column			          Description
-	Student_id		        Student’s Unique ID (INT) (FOREIGN KEY)
-	Program_id		        Unique ID (INT) (FOREIGN KEY)
-	Completion            percentage	Completion status in percentage (INT) (1-100)
-	Last_date_accessed	  Latest date of accessing the program

## Business Questions (Tasks)
1.	List the top 10 students with the most completed courses.
2.	Find the total number of Enrolments per course.
3.	Which category has the highest average completion percentage?
4.	Identify inactive students (not accessed in last 30 days).
5.	Instructor-wise average course rating.
6.	Courses with highest drop rate.
7.	Students who have completed ALL courses offered.
8.	Most popular course category
9.	Monthly new student registrations.
10.	Average completion percentage per student.
11.	Find students who dropped more than 3 courses.
12.	Instructor with highest student engagement (total Enrolments across their courses).

## Approach
-SQL queries include joins, group by, subqueries, and aggregations.
-Each query is designed to answer a specific business question.
-Table structures are defined in comments within each SQL file.

## Note
This project was created as part of self-learning and hands-on SQL practice
inspired by online learning platform such as DataCamp.
The datasets are not proprietary and are represented through table structures
and SQL queries written independently for learning purposes.

