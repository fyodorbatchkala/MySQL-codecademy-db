-- ИНДЕКСЫ

-- Индекс для поиска курса по названию
CREATE INDEX courses_course_name_idx ON courses(course_name);

-- Индекс для поиска по адресу электронной почты
CREATE INDEX users_email_idx ON users(email);




-- ХРАНИМЫЕ ПРОЦЕДУРЫ

-- Процедура выдаёт 10 самых коротких курсов
DROP PROCEDURE IF EXISTS short_courses_description;
delimiter //
CREATE PROCEDURE short_courses_description()
BEGIN
  SELECT course_name, course_length_hours FROM courses ORDER BY course_length_hours LIMIT 10;
END //
delimiter ;

CALL short_courses_description();


-- Процедура выдаёт все курсы, длительностью меньше или равной определенному числу часов (заданному в параметре)
DROP PROCEDURE IF EXISTS courses_by_hours_description;
delimiter //
CREATE PROCEDURE courses_by_hours_description(hours INT)
BEGIN
  SELECT course_name, course_length_hours FROM courses WHERE course_length_hours <= hours ORDER BY course_length_hours;
END //
delimiter ;

CALL courses_by_hours_description(4);




-- ТРИГГЕРЫ

-- Триггер на вставку в таблицу courses
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


-- Триггер на обновление таблицы courses
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

-- Проверка
SHOW TRIGGERS;




-- ПРЕДСТАВЛЕНИЯ

-- Представление, которое выводит имена и фамилии всех пользователей
CREATE OR REPLACE VIEW all_users AS SELECT CONCAT(first_name, ' ', last_name) AS fullname FROM users ORDER BY fullname;

-- Проверка
SELECT * FROM all_users LIMIT 10;



-- Представление, которое выводит количество курсов на направление (Computer science, web-development ...)
CREATE OR REPLACE VIEW num_courses_per_subject AS SELECT subject_id, subjects.subject_name, COUNT(*) AS number_of_courses
	FROM courses
	JOIN subjects 
		ON subjects.id = courses.subject_id 
	GROUP BY subject_id
	ORDER BY subject_id;

-- Проверка
SELECT * FROM num_courses_per_subject;




