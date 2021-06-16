-- Creating the database
CREATE DATABASE codecademy;
USE codecademy;

-- Creating users table
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
    first_name VARCHAR(100) NOT NULL COMMENT "имя пользователя",
    last_name VARCHAR(100) NOT NULL COMMENT "фамилия пользователя",
    email VARCHAR(100) NOT NULL UNIQUE COMMENT "электронная почта",
    phone VARCHAR(100) NOT NULL UNIQUE COMMENT "номер телефона",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 


-- Creating profiles table
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender VARCHAR(10) NOT NULL COMMENT "пол",
  birthday DATE COMMENT "дата рождения",
  country VARCHAR(130) COMMENT "страна",
  pro_user VARCHAR(10) COMMENT "есть подписка на про версию или нет",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "время обновления строки"
) COMMENT "Профили"; 


-- Creating courses table
DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор курса",
  course_name VARCHAR(50) NOT NULL UNIQUE COMMENT "название курса",
  course_length_hours INT UNSIGNED NOT NULL,
  career_path_id INT UNSIGNED NOT NULL,
  language_id INT UNSIGNED NOT NULL,
  subject_id INT UNSIGNED NOT NULL DEFAULT 1,
  feature INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "время обновления строки"  
);


-- Connecting users and courses tables
DROP TABLE IF EXISTS courses_users;
CREATE TABLE courses_users (
  course_id INT UNSIGNED NOT NULL COMMENT "ссылка на курс",
  user_id INT UNSIGNED NOT NULL COMMENT "ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (course_id, user_id) COMMENT "составной первичный ключ"
) COMMENT "ученики курсов, связь между курсами и учениками";


-- Creating career paths table
DROP TABLE IF EXISTS career_paths;
CREATE TABLE career_paths (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор строки",
  career_paths_name VARCHAR(255) NOT NULL UNIQUE COMMENT "название карьерного пути",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "время обновления строки"
);


-- Connecting users and "career paths" tables
DROP TABLE IF EXISTS career_paths_users;
CREATE TABLE career_paths_users (
  career_paths_id INT UNSIGNED NOT NULL COMMENT "ссылка на курс",
  user_id INT UNSIGNED NOT NULL COMMENT "ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (career_paths_id, user_id) COMMENT "составной первичный ключ"
) COMMENT "ученики карьерных путей, связь между карьерными путями и учениками";


-- Creating course subjects table
DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор строки",
  subject_name VARCHAR(255) NOT NULL UNIQUE COMMENT "название направления",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "время обновления строки"
);


-- Creating programming languages table
DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "идентификатор строки",
  language_name VARCHAR(255) NOT NULL UNIQUE COMMENT "название направления",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "время обновления строки"
);


-- Creating posts table
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  subject_id INT UNSIGNED NOT NULL,
  language_id INT UNSIGNED NOT NULL,
  body TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- Creating course features table
DROP TABLE IF EXISTS course_features;
CREATE TABLE course_features (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  feature_name VARCHAR(255) NOT NULL UNIQUE COMMENT "название особенности"
);



