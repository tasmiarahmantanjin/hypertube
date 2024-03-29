-- CREATE DATABASE hypertube;
-- CREATE DATABASE hypertube;

-- Install the uuid-ossp extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create the users table
CREATE TABLE users (
	user_id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	user_name VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	verified SMALLINT NOT NULL DEFAULT 0,
	avatar varchar(255) DEFAULT NULL,
);


-- Insert predifined users for admin to use
INSERT INTO users (first_name, last_name, username, email, verified, password)
VALUES 
('admin', 'user', 'admin', 'admin@gmail.com', '1', '$2a$10$PAM0GqbRGkOS2bVupYY0he23LiSv2THGyfvtULZpcdRTzSM7BQ01u'),
-- ('demo', 'user', 'demo', 'demo@gmail.com', '1', '$2a$10$PAM0GqbRGkOS2bVupYY0he23LiSv2THGyfvtULZpcdRTzSM7BQ01u'),
-- ('Tasmia', 'Rahman', 'tasmia', 'tasmia@gmail.com', '1', '1234aA')
('Hyper', 'TUBE', 'tasmia', 'sdfasfd@gmail.com', '1', '$2a$10$PAM0GqbRGkOS2bVupYY0he23LiSv2THGyfvtULZpcdRTzSM7BQ01u')
('Tasmia', 'Rahman', 'tasmia', 'fadf@gmail.com', '1', '$2a$10$PAM0GqbRGkOS2bVupYY0he23LiSv2THGyfvtULZpcdRTzSM7BQ01u')