-- Query with SELECT
-- Selects all records from the 'Student' table
SELECT * FROM Student;

-- Query with WHERE
-- Selects students whose 'teacher_id' is 1 (teacher Antonia)
SELECT * FROM Student WHERE teacher_id = 1;

-- Query with ORDER BY
-- Selects students ordered by 'surname' in ascending order
SELECT * FROM Student ORDER BY surname ASC;

-- Query with AND
-- Selects students whose 'teacher_id' is 1 and 'employee_id' is 1
SELECT * FROM Student WHERE teacher_id = 1 AND employee_id = 1;

-- Query with OR
-- Selects students whose 'teacher_id' is 1 or 'employee_id' is 2
SELECT * FROM Student WHERE teacher_id = 1 OR employee_id = 2;

-- Query with NOT
-- Selects students whose 'teacher_id' is not 1
SELECT * FROM Student WHERE NOT teacher_id = 1;

-- Query with INSERT
-- Inserts a new record into the 'Student' table
INSERT INTO Student (id, name, surname, email, phone_number, teacher_id, employee_id) 
VALUES (16, 'Antonio', 'Blanco', 'antonio@cifpfbmoll.eu', '987654321', 2, 3);

-- Query with UPDATE
-- Updates the email of the student with id 1
UPDATE Student SET email = 'maria_updated@cifpfbmoll.eu' WHERE id = 1;

-- Query with DELETE
-- Deletes the student with id 16
DELETE FROM Student WHERE id = 16;

-- Functions: COUNT
-- Counts the total number of students
SELECT COUNT(*) FROM Student;

-- Functions: AVG
-- Calculates the average length of students' phone numbers
SELECT AVG(LENGTH(phone_number)) FROM Student;

-- Query with LIKE
-- Selects students whose 'name' starts with "M"
SELECT * FROM Student WHERE name LIKE 'M%';

-- Query with Wildcards
-- Selects students whose 'email' contains the word "cifpfbmoll"
SELECT * FROM Student WHERE email LIKE '%cifpfbmoll%';

-- Query with IN
-- Selects students whose 'teacher_id' is 1, 2, or 3
SELECT * FROM Student WHERE teacher_id IN (1, 2, 3);

-- Query with BETWEEN
-- Selects students whose 'id' is between 5 and 10
SELECT * FROM Student WHERE id BETWEEN 5 AND 10;

-- Query with ALIAS
-- Selects students' first and last names with aliases for the columns
SELECT name AS 'First Name', surname AS 'Last Name' FROM Student;

-- Extra Query with JOIN
-- Displays each student's assigned teacher, employee, and their company name
SELECT 
    Student.id AS StudentID,
    Student.name AS StudentName,
    Teacher.name AS TeacherName,
    Company.name AS CompanyName
FROM 
    Student
JOIN 
    Teacher ON Student.teacher_id = Teacher.id
JOIN 
    Employee ON Student.employee_id = Employee.id
JOIN 
    Company ON Employee.company_id = Company.id;
