-- INDICES

-- Index for finding a course by title
CREATE INDEX courses_course_name_idx ON courses(course_name);

-- Index to search by email address
CREATE INDEX users_email_idx ON users(email);




-- STORED PROCEDURES

-- The procedure produces the 10 shortest courses
DROP PROCEDURE IF EXISTS short_courses_description;
delimiter //
CREATE PROCEDURE short_courses_description()
BEGIN
  SELECT course_name, course_length_hours FROM courses ORDER BY course_length_hours LIMIT 10;
END //
delimiter ;

CALL short_courses_description();


-- The procedure returns all courses lasting less than or equal to a certain number of hours (specified in the parameter)
DROP PROCEDURE IF EXISTS courses_by_hours_description;
delimiter //
CREATE PROCEDURE courses_by_hours_description(hours INT)
BEGIN
  SELECT course_name, course_length_hours FROM courses WHERE course_length_hours <= hours ORDER BY course_length_hours;
END //
delimiter ;

CALL courses_by_hours_description(4);




-- TRIGGERS

-- Trigger for insertion into courses table
DROP TRIGGER IF EXISTS trigger_insert_null;
delimiter //
CREATE TRIGGER trigger_insert_null BEFORE INSERT ON courses
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.course_name) AND ISNULL(NEW.course_length_hours)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NULL value in course_name and course_length_hours fields';
	END IF;
END //
delimiter ;


-- Trigger to update the courses table
DROP TRIGGER IF EXISTS trigger_update_null;
delimiter //
CREATE TRIGGER trigger_update_null BEFORE UPDATE ON courses
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.course_name) AND ISNULL(NEW.course_length_hours)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NULL value in course_name and course_length_hours fields';
	END IF;
END //
delimiter ;

-- Check
SHOW TRIGGERS;




-- Views

-- View that displays the first and last names of all users
CREATE OR REPLACE VIEW all_users AS SELECT CONCAT(first_name, ' ', last_name) AS fullname FROM users ORDER BY fullname;

-- Check
SELECT * FROM all_users LIMIT 10;



-- A view that displays the number of courses per direction (Computer science, web-development ...)
CREATE OR REPLACE VIEW num_courses_per_subject AS SELECT subject_id, subjects.subject_name, COUNT(*) AS number_of_courses
	FROM courses
	JOIN subjects 
		ON subjects.id = courses.subject_id 
	GROUP BY subject_id
	ORDER BY subject_id;

-- Check
SELECT * FROM num_courses_per_subject;
