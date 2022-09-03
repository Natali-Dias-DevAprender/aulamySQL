create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes(
id bigint auto_increment,
habilidades varchar (100),
times varchar (100),
primary key (id)
);

insert into tb_classes(habilidades,times)
values("Força","Habbit"),
("inteligençia","Macaco"),
("Velocidades","Fox"),
("invisibilidade","Coruja"),
("Magia elemental","Gato");

create table tb_personagem(
id bigint auto_increment,
nome varchar (100),
ataque int not null,
defesa int not null,
mira int not null,
times_id bigint,
primary key (id),
foreign key (times_id) references tb_classes(id));

insert into tb_personagem(nome,ataque,defesa,mira,times_id)
values("Adan sandler",1000,3000,7,1),
("Marcos",2000,1300,3,5),
("Tobias",2000,2300,3,4),
("José",2000,1300,6,2),
("Marta",2000,1300,8,3),
("Ana",2000,1300,9,4), 
("Jemeremias",2000,1300,2,1),
("Carlos",2000,1300,3,4);

select * from tb_personagem  where ataque >=2000 ;
select * from tb_personagem  where defesa between 1000 and 2000;
select * from tb_personagem  where nome like "%c%";
select  nome,ataque,defesa,mira,tb_classes.times
from tb_personagem inner join tb_classes
on tb_classes.id = tb_personagem.times_id;

select  nome,ataque,defesa,mira,tb_classes.times
from tb_personagem inner join tb_classes
on tb_classes.id = tb_personagem.times_id
where times = "Macaco";





