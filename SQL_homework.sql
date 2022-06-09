CREATE DATABASE Test;

CREATE TABLE Questions (id SERIAL PRIMARY KEY,
question VARCHAR (100) NOT NULL UNIQUE);

CREATE TABLE Answers (id SERIAL PRIMARY KEY,
answer VARCHAR (100) NOT NULL UNIQUE);

CREATE TABLE question_to_answer (question_id SERIAL,
answers_id SERIAL,
FOREIGN KEY (question_id) REFERENCES questions (id),
FOREIGN KEY (answers_id) REFERENCES answers (id));

INSERT INTO Questions (question) VALUES ('The capital of Republic of South Africa is...');
INSERT INTO Questions (question) VALUES ('The capital of Canada is...');
INSERT INTO Questions (question) VALUES ('Only country in the world occupated whole continent is...');

INSERT INTO Answers (answer) VALUES ('Dhaka');
INSERT INTO Answers (answer) VALUES ('Pretoria');
INSERT INTO Answers (answer) VALUES ('Johannesburg');
INSERT INTO Answers (answer) VALUES ('Luanda');

INSERT INTO Answers (answer) VALUES ('Montreal');
INSERT INTO Answers (answer) VALUES ('Vancouver');
INSERT INTO Answers (answer) VALUES ('Ottawa');
INSERT INTO Answers (answer) VALUES ('Toronto');

INSERT INTO Answers (answer) VALUES ('Russia');
INSERT INTO Answers (answer) VALUES ('China');
INSERT INTO Answers (answer) VALUES ('Japany');
INSERT INTO Answers (answer) VALUES ('Australia');

INSERT INTO Question_to_answer (question_id, answers_id) VALUES (1, 1);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (1, 2);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (1, 3);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (1, 4);

INSERT INTO Question_to_answer (question_id, answers_id) VALUES (2, 5);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (2, 6);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (2, 7);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (2, 8);

INSERT INTO Question_to_answer (question_id, answers_id) VALUES (3, 9);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (3, 10);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (3, 11);
INSERT INTO Question_to_answer (question_id, answers_id) VALUES (3, 12);

SELECT Questions.id, Questions.question, Answers.id, Answers.answer 
FROM Questions JOIN question_to_answer ON 
Questions.id = question_to_answer.question_id JOIN Answers ON question_to_answer.answers_id = Answers.id WHERE Questions.id = 1;

SELECT Questions.id, Questions.question, Answers.id, Answers.answer 
FROM Questions JOIN question_to_answer ON 
Questions.id = question_to_answer.question_id JOIN Answers ON question_to_answer.answers_id = Answers.id WHERE Questions.id = 2;

SELECT Questions.id, Questions.question, Answers.id, Answers.answer 
FROM Questions JOIN question_to_answer ON 
Questions.id = question_to_answer.question_id JOIN Answers ON question_to_answer.answers_id = Answers.id WHERE Questions.id = 3;