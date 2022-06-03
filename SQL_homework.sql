CREATE DATABASE Test;
CREATE TABLE questions (id SERIAL NOT NULL UNIQUE,
q_text VARCHAR (255) NOT NULL);

CREATE TABLE answers (id SERIAL NOT NULL UNIQUE,
a_text VARCHAR (255) NOT NULL,
is_right BOOLEAN NOT NULL,
q_id BIGINT NOT NULL,
FOREIGN KEY (q_id) REFERENCES questions (id) ON DELETE CASCADE);

INSERT INTO questions (q_text) VALUES ('������� ���-���...');
INSERT INTO questions (q_text) VALUES ('������� ������-���...');
INSERT INTO questions (q_text) VALUES ('������������ ����������� � ����, ���������� ���� �������-���...');

INSERT INTO answers (a_text, is_right, q_id) VALUES ('�����', false, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('��������', true, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('������������', false, 1);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('������', false, 1);

INSERT INTO answers (a_text, is_right, q_id) VALUES ('��������', false, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('�������', false, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('������', true, 2);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('�������', false, 2);

INSERT INTO answers (a_text, is_right, q_id) VALUES ('������', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('�����', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('������', false, 3);
INSERT INTO answers (a_text, is_right, q_id) VALUES ('���������', true, 3);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 1);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 2);

SELECT questions.id, questions.q_text, answers.id, answers.a_text FROM
questions JOIN answers ON (questions.id = answers.q_id) AND
(questions.id = 3);