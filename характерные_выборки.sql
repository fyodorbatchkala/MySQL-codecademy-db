-- СКРИПТЫ ХАРАКТЕРНЫХ ВЫБОРОК (группировки есть в join-запросах)

-- БАЗОВЫЕ ЗАПРОСЫ

-- Курсы, относящиеся к 4 карьерному пути
SELECT * FROM courses
	WHERE career_path_id = 4;


-- Пользователи, которые учатся на 2 карьерном пути
SELECT user_id FROM career_paths_users
	WHERE career_paths_id = 2;


-- Вывод имени и фамилии пользователя
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users;
  
	
 
 
-- ВЛОЖЕННЫЙ ЗАПРОС

-- Вывод количества мужчин и женщин на курсах с помощью вложенного запроса
SELECT
	(SELECT gender FROM profiles WHERE user_id = courses_users.user_id) AS gender, 
	COUNT(*) AS total
	FROM courses_users
	GROUP BY gender
	ORDER BY total DESC;




-- ИСПОЛЬЗОВАНИЕ JOIN

-- Вывод названий новых курсов (New), длительностью более 35 часов
SELECT course_length_hours, course_name 
	FROM courses
	JOIN course_features
		ON course_length_hours > 35
		AND feature_name = 'New';

	
-- Вывод пользовательских идентификаторов, которые обучаются на карьерном пути Data Science
SELECT DISTINCT user_id
	FROM career_paths_users 
	JOIN career_paths
		ON career_paths.id = career_paths_users.career_paths_id
		AND career_paths_name = 'Data Scientist';


-- Вывод пользователей, которые обучаются на карьерных путях Front-End Engineer и Back-End Engineer
SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS fullname, career_paths_name 
	FROM users 
	JOIN career_paths_users 
		ON users.id = career_paths_users.user_id 
	JOIN career_paths
		ON career_paths.id = career_paths_users.career_paths_id
		AND career_paths_name = 'Front-End Engineer' OR career_paths_name = 'Back-End Engineer';

	
-- Вывод количества курсов, которые брали пользователи (получили 68 строк, следовательно 32 
-- пользователя не участвуют ни в одном из курсов)
SELECT user_id, COUNT(courses.course_name) AS number_of_courses_taken
	FROM users 
	JOIN courses_users
		ON users.id = courses_users.user_id 
	JOIN courses 
		ON courses.id = courses_users.course_id
	GROUP BY user_id;


-- Группировка курсов по направлению, вывод количества курсов
SELECT subject_id, subjects.subject_name, COUNT(*) AS number_of_courses
	FROM courses
	JOIN subjects 
		ON subjects.id = courses.subject_id 
	GROUP BY subject_id
	ORDER BY subject_id;




