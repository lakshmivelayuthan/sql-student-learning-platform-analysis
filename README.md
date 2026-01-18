# Student Learning Platform Analytics

## Project Overview
This is a SQL mini-project analysis of a learning platform on instructor credibility, candidate performance, program completion, and engagement patterns.

## Table Structure

| Table Name       | Columns |
|------------------|---------|
| Students         | Student_id, Student_name, City, DOJ |
| Programs         | Program_id, Title, Category, Instructor_id, Rating |
| Instructors      | Instructor_id, Instructor_name, Experience |
| Enrolments       | Enrolment_id, Student_id, Program_id, Date_enrolled, Status_ |
| Course Progress  | Student_id, Program_id, Completion_percentage, Last_date_accessed |

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

