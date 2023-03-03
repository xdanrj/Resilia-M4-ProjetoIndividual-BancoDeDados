create database resiliam4;
use resiliam4;

# ÚLTIMA EDIÇÃO: 03/03/2023 19h30

# TABELAS 

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL PRIMARY KEY auto_increment,
  `nome` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `sexo` varchar(16) DEFAULT NULL,
  `telefone` bigint(11) DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL
);


CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL PRIMARY KEY auto_increment,
  `nome_curso` varchar(50) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  `id_disciplina` int(11) DEFAULT NULL
);


CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL PRIMARY KEY auto_increment,
  `nome_disciplina` varchar(50) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  `id_professor` int DEFAULT NULL
);


CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL PRIMARY KEY auto_increment,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `telefone` bigint(11) DEFAULT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `sexo` varchar(16) DEFAULT NULL,
  `data_nascimento` DATE DEFAULT NULL,
  `formacao` varchar(50) DEFAULT NULL
);


CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL PRIMARY KEY auto_increment,
   nome_turma varchar(30),
  `turno` varchar(20) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL
);





# CHAVES ESTRANGEIRAS

ALTER TABLE turma
add constraint alun foreign key (id_aluno) references aluno (id_aluno),
add constraint curs foreign key (id_curso) references curso (id_curso);
  
  
alter table curso
add constraint dscp foreign key (id_disciplina) references disciplina (id_disciplina);


alter table disciplina
add constraint prof foreign key (id_professor) references professor (id_professor);



# INSERIR DADOS

insert into aluno(id_aluno, nome, data_nascimento, cpf, sexo, telefone, endereco)
values
(1, "Emerson Bento Silva", "2000-05-15", "263.716.439-02", "masculino", 21123456789, "1461 Av. Dantas Armação dos Búzios - Rio de Janeiro"),
(2, "Lucas Rolemberg Mendonça", "2000-10-19", "562.774.341-01", "masculino", 21987654321, "561 R. Duque de Caxias Três Rios - Rio de Janeiro");



insert into professor(id_professor, nome, cpf, salario, telefone, endereco, sexo, data_nascimento, formacao)
values
(1, "Jose Carlos Rodrigues Souza", "163.426.743-01", 4100.60, 21143466789, "16 R. Rio Piracicaba - Rio de Janeiro", "masculino", "1986-06-01", "Análise e Desenvolvimento de Sistemas"),
(2, "Ana Vasconcelos Almeida", "649.966.432-02", 5610.20, 21943436782, "25 R. da Comunidade - Rio de Janeiro", "feminino", "1992-01-09", "Engenharia de Software");

insert into disciplina(id_disciplina, nome_disciplina, carga_horaria, id_professor)
values
(1, "JavaScript", 400, 1),
(2, "React", 100, 1),
(3, "Java", 500, 2),
(4, "JavaScript, React", 500, 1),
(5, "JavaScript, React, Java", 1000, 2); 



insert into curso(id_curso, nome_curso, carga_horaria, id_disciplina)
values
(1, "Desenvolvedor Web Full Stack", 1000, 5),
(2, "Desenvolvedor Back End", 500, 3),
(3, "Desenvolvedor Front End", 500, 4);


insert into turma(id_turma, nome_turma, turno, id_curso, id_aluno)
values
(1, "Turma Campo Grande T1", "manhã", 2, 1),
(2, "Turma Campo Grande T2", "noite", 3, 2);




