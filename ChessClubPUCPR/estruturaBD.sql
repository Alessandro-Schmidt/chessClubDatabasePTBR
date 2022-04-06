create database ChessClub;
use ChessClub;
create table membros(
	cod_membro int primary key auto_increment,
    nome varchar(15),
    sobrenome varchar(15), 
    matricula int,
    cod_curso int
);

alter table membros
add foreign key (cod_curso)
references cursos(cod_curso);


create table cursos(
	cod_curso int primary key auto_increment,
    curso varchar(40)
);

create table eventos(
	cod_evento int primary key auto_increment,
    descricao varchar(50), 
	data date, 
    cod_membro int, 
    horario_entrada time, 
    horario_saida time
);

alter table eventos
add foreign key (cod_membro)
references membros(cod_membro); 

