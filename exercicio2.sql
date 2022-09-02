
CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
Cpf varchar (90),
idade int,
Contato VARCHAR (255),
Turma int,
Matricula int,
Sexo varchar(30),
Nota DECIMAL,
PRIMARY KEY (id)
);

INSERT INTO  estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Natalí", "354262-75",23, "1197253637",3,124,"F",10.0);

INSERT INTO   estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Marcos", "99262-59",27, "1197259937",7,666,"M",10.0);

INSERT INTO   estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Robson", "894262-99",24, "11977653637",3,124,"M",11.0);

INSERT INTO   estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Jonas", "54772262-79",22, "11972587457",4,564,"M",14.0);

INSERT INTO   estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Rinhanna",  "376647-09",36, "11972438957",14,777,"F",30.0);

INSERT INTO   estudantes( Nome, Cpf,Idade, contato,Turma, Matricula,Sexo, Nota)
VALUES ("Lady Gaga",  "456732-96",23, "119757884637",3,777,"F",30.0);


SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota >7.0;

SELECT * FROM estudantes WHERE nota <7.0;

ALTER TABLE estudantes MODIFY nota decimal (4,2);

UPDATE estudantes SET nota = 7.5 WHERE id= 1;

UPDATE estudantes SET nota = 9.4 WHERE id = 4;
