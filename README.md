# SQL
Collection Of SQL Files.

SQLQUERYMODULE_1 FILE CONSISTS OF THE FOLLOWING SQL TOPICS WITH SQL QUERIES.

CREATING DATABASE.
USE DATABASE
COMMENTS IN SQL
DATA TYPES
CREATING TABLES IN SQL
CREATING SCHEMA
REMOVING SCHEMA
INSERTING VALUES INTO TABLES
KEY CONSTRAINTS
RETRIEVING DATA USING SELECT QUERY
USING WHERE CLAUSE
DISTINCT FUNCTION
TOP CLAUSE
LIKE OPERATOR
WILD CARDS
ASSIGNMENT-1

SQL ASSIGNMENT:

Q1: Create Tables

Create the following 3 tables with appropriate constraints:

Students

StudentID (INT, Primary Key)

Name (VARCHAR(50), NOT NULL)

Age (INT, check Age >= 17)

DepartmentID (INT, Foreign Key → Departments.DepartmentID)

Departments

DepartmentID (INT, Primary Key)

DepartmentName (VARCHAR(50), NOT NULL, UNIQUE)

Courses

CourseID (INT, Primary Key)

CourseName (VARCHAR(50), NOT NULL)

DepartmentID (INT, Foreign Key → Departments.DepartmentID)

Q2: Insert Data

Insert at least 5 records in each table. Example:

Departments: Computer Science, Mechanical, Electrical, Civil, Electronics.

Students: Insert students with different ages and departments.

Courses: Insert courses like DBMS, Thermodynamics, Circuits, Structures, AI, mapped to their departments.

Q3: Apply WHERE & Operators

Write SQL queries for the following:

Display all students whose age is greater than 20.

Display all courses of the "Computer Science" department.

Display all students who belong to the "Electronics" department.

Display students whose age is between 18 and 22.

Q4: Joins

Perform joins on the tables:

INNER JOIN Students with Departments (to show student names with their department names).

LEFT JOIN Courses with Departments (to show all courses, even if some department does not exist).

RIGHT JOIN Students with Courses (to show all courses, even if no student has enrolled in them).
