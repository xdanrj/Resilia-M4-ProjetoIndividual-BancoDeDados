# Resilia Módulo 4: Projeto Individual "Sistema Resilia"
Um modelo de banco de dados para o sistema educacional do Resilia.

## ⇨ Existem outras entidades além dessas três?
Sim. São as entidades de Professores e Disciplinas.

## ⇨ Quais são os principais campos e tipos?
* Nome, CPF, endereço e sexo ```(VARCHAR)```
* Data de nascimento ```(DATE)```
* Telefone ```(BIGINT)```
* IDs de chaves primárias e estrangeiras ```(INT)```

## ⇨ Como essas entidades estão relacionadas?
* Um aluno pode estudar em um curso. ```(1,1)```
* Um aluno pode estar em uma turma. ```(1,1)```
* Um curso pode ser ministrado em várias turmas. ```(1,N)```
* Um curso pode ter várias disciplinas. ```(1,N)```
* Um professor pode ministrar várias disciplinas. ```(1,N)```
* Uma turma contém um curso. ```(1,1)```

![Modelo Lógico](https://user-images.githubusercontent.com/116215888/222848095-548dd2d0-74e6-4b43-99a3-0e4d7d7ddd90.png)
