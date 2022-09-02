CREATE DATABASE Usuarios;
use Usuarios;
create table cadastro(
id bigint auto_increment, 
nome varchar(255),
idade int,
cpf int,
cargo varchar(255),
salario decimal,
primary key(id)
);
insert into cadastro(nome,idade,cpf,cargo,salario)
values("Natalí",23,09847366,"Administração",3500.00);
select * from cadastro;

insert into cadastro(nome,idade,cpf,cargo,salario)
values("José",26,644665545,"Psicologo",1500.00);

insert into cadastro(nome,idade,cpf,cargo,salario)
values("Maria",24,566436446,"Professor",4500.00);



select * from cadastro where salario > 2000;
select * from cadastro where salario < 2000;--




