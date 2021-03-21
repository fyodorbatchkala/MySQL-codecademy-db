-- Таблица profiles

DESC profiles;
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
      

-- Таблица courses

DESC courses;
ALTER TABLE courses
  ADD CONSTRAINT courses_subject_id_fk 
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
      ON DELETE CASCADE;
      
ALTER TABLE courses
  ADD CONSTRAINT courses_language_id_fk 
    FOREIGN KEY (language_id) REFERENCES languages(id)
      ON DELETE CASCADE;

ALTER TABLE courses
  ADD CONSTRAINT courses_feature_id_fk 
    FOREIGN KEY (feature) REFERENCES course_features(id)
      ON DELETE CASCADE;
      
ALTER TABLE courses
  ADD CONSTRAINT courses_career_path_id_fk 
    FOREIGN KEY (career_path_id) REFERENCES career_paths(id)
      ON DELETE CASCADE;
     
     
-- Таблица posts
     
DESC posts;

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;

ALTER TABLE posts
  ADD CONSTRAINT posts_subject_id_fk 
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
      ON DELETE CASCADE;

ALTER TABLE posts
  ADD CONSTRAINT posts_language_id_fk 
    FOREIGN KEY (language_id) REFERENCES languages(id)
      ON DELETE CASCADE;
     
     
-- Таблица career_paths

DESC career_paths_users;

ALTER TABLE career_paths_users
  ADD CONSTRAINT career_paths_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     

-- Таблица courses_users

DESC courses_users;

ALTER TABLE courses_users
  ADD CONSTRAINT courses_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
 
     
      
