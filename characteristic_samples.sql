-- SCRIPTS OF CHARACTERISTIC SAMPLES

-- BASIC QUIRIES

-- Courses ftom the 4th career path
SELECT * FROM courses
	WHERE career_path_id = 4;


-- Users who are learning on 2 career paths
SELECT user_id FROM career_paths_users
	WHERE career_paths_id = 2;


-- Displaying the user's first and last name
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users;
  
	
 
 
-- COMPLEX QUERY

-- Displaying the number of men and women in courses using a nested query
SELECT
	(SELECT gender FROM profiles WHERE user_id = courses_users.user_id) AS gender, 
	COUNT(*) AS total
	FROM courses_users
	GROUP BY gender
	ORDER BY total DESC;




-- USING JOIN

-- Displaying the names of new courses (New), lasting more than 35 hours
SELECT course_length_hours, course_name 
	FROM courses
	JOIN course_features
		ON course_length_hours > 35
		AND feature_name = 'New';

	
-- Displaying custom IDs who are trained in the Data Science career path
SELECT DISTINCT user_id
	FROM career_paths_users 
	JOIN career_paths
		ON career_paths.id = career_paths_users.career_paths_id
		AND career_paths_name = 'Data Scientist';


-- Displaying users who are trained on the career paths Front-End Engineer and Back-End Engineer
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS fullname, career_paths_name 
	FROM users 
	JOIN career_paths_users 
		ON users.id = career_paths_users.user_id 
	JOIN career_paths
		ON career_paths.id = career_paths_users.career_paths_id
		AND career_paths_name = 'Front-End Engineer' OR career_paths_name = 'Back-End Engineer';

	
-- Display of the number of courses that users took (received 68 lines, therefore 32 users do not participate in any of the courses)
SELECT user_id, COUNT(courses.course_name) AS number_of_courses_taken
	FROM users 
	JOIN courses_users
		ON users.id = courses_users.user_id 
	JOIN courses 
		ON courses.id = courses_users.course_id
	GROUP BY user_id;


-- Grouping courses by direction, displaying the number of courses
SELECT subject_id, subjects.subject_name, COUNT(*) AS number_of_courses
	FROM courses
	JOIN subjects 
		ON subjects.id = courses.subject_id 
	GROUP BY subject_id
	ORDER BY subject_id;
