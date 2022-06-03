CREATE DATABASE Test;
CREATE TABLE questions (id SERIAL NOT NULL UNIQUE,
q_text VARCHAR (255) NOT NULL);

CREATE TABLE answers (id SERIAL NOT NULL UNIQUE,
a_text VARCHAR (255) NOT NULL,
is_right BOOLEAN NOT NULL,
q_id BIGINT NOT NULL,
FOREIGN KEY (q_id) REFERENCES questions (id) ON DELETE CASCADE);

INSERT INTO questions (q_text) VALUES ('Столица ЮАР-это...');
INSERT INTO questions (q_text) VALUES ('Столица Канады-это...');
INSERT INTO questions (q_text) VALUES ('Единственное государство в мире, занимающее весь материк-это...');

INSERT INTO answers (a_text, is_right, q_id) VALUES ('Дакка', false, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Претория', true, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Йоханнесбург', false, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Луанда', false, 1);

INSERT INTO answers (a_text, is_right, q_id) VALUES ('Монреаль', false, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Калгари', false, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Оттава', true, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Торонто', false, 2);

INSERT INTO answers (a_text, is_right, q_id) VALUES ('Россия', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Китай', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Япония', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('Австралия', true, 3);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 1);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 2);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 3);