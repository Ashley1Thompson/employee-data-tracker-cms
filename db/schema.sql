DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE movies_db;

CREATE TABLE department (
  id INT NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE jobrole (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);
