create database fabula;
use fabula;

create table galaxias(
idgalaxia int auto_increment primary key,
nome varchar(50),
tamanho double
);

create table planetas(
idplaneta int auto_increment primary key,
nome varchar(50),
diametro double,
clima varchar(50),
gravidade double,
fkgalaxia int
);


alter table planetas add foreign key (fkgalaxia) references galaxias (idgalaxia);

create table satelites_naturais(
idsatelite int primary key auto_increment,
nome varchar(50),
distancia double,
populacao double,
fkplaneta int,
foreign key (fkplaneta) references planetas (idplaneta)
);

create table pais(
idpais  int primary key auto_increment,
nome varchar(50),
populacao double,
fkplaneta int,
foreign key (fkplaneta)  references planetas (idplaneta)
);

create table individuo(
idindividuo int primary key auto_increment,
nacionalidade varchar(45),
nome varchar (45),
naciscimento date,
raca varchar (20),
fkpais int,
foreign key (fkpais) references pais (idpais)
);

create table naves(
idnave int primary key auto_increment,
nome varchar(45),
fkcapitao int,
foreign key (fkcapitao) references individuo(idindividuo),
fkpais int,
foreign key (fkpais )references pais (idpais)
);


create table relacao_entre_planetas(
fkplaneta1 int,
fkplaneta2 int,
primary key(fkplaneta1,fkplaneta2),
foreign key (fkplaneta1) references planetas(idplaneta),
foreign key (fkplaneta2) references planetas(idplaneta),
numero_relacionamento int
);



 insert into galaxias values
 (null, 'via lactea', 105.700),
 (null, 'a-centauros',200.000),
 (null, 'noxus',500.000);
 
 alter table planetas add check (clima= 'temperado' or clima=  'equatorial' or clima= 'tropical' or clima= 'subtropical' 
 or clima= 'mediterraneo' or clima= 'frio' or clima= 'frio de montanha'or clima='polar' or clima= 'semiarido' or clima= 'desertico');
 
 insert into planetas values
 (null,'mercurio', 4.879, 'frio',3.7, 1),
 (null, 'venus',12.104, 'polar',8.87,1 ),
 (null,'terra',12.742, 'temperado',9.807,1),
 (null,'marte',6.779,'frio',3.721,1),
 (null,'jupiter',139.820,'desertico',27.79,1),
 (null,'saturno',116.460,'frio',10.44,1),
 (null,'urano',50.724,'frio',8.87,1),
 (null,'netuno',49.244,'frio',11.15,1);
 

 insert into planetas values
 (null,'gorgonas', 5.680,'tropical',1.7, 2),
 (null, 'quimera',22.104, 'polar',8.87,2 ),
 (null,'ninfas',2.742, 'temperado',10.807,2),
 (null,'aatxe',3.779,'frio',3.721,2),
 (null,'Dagr',139.820,'desertico',22.00,2),
 (null,'nott',116.460,'polar',30.44,2),
 (null,'aegir',250.350,'frio',9.87,2),
 (null,'angurboda',220.0650,'desertico',19.15,2),
  (null,'Durinn',500,'frio',9.87,2),
  (null,'Motsongir',650,'frio',9.87,2);


insert into satelites_naturais values
(null, 'lua',380.000,0, 3 ),
(null,'uratau',500.000,0, 15);
select * from relacao_entre_planetas;

alter table relacao_entre_planetas add column tipo_relacao varchar(50);
desc relacao_entre_planetas;

insert into relacao_entre_planetas values 
(1,2,'comercio aberto',1),
(1,3,'comercio aberto',2),
(1,4,'comercio aberto',3),
(1,5,'comercio aberto',4),
(1,6,'comercio aberto',5),
(1,7,'comercio aberto',6),
(1,8,'comercio aberto',7),
(1,9, 'comercio fechado',8),
(1,10, 'comercio fechado',9),
(1,11, 'comercio fechado',10),
(1,12, 'comercio fechado',11),
(1,13, 'comercio fechado',12),
(1,14, 'comercio fechado',13),
(1,15, 'comercio fechado',14),
(1,16, 'comercio fechado',15),
(1,17, 'comercio fechado',16),
(1,18, 'comercio fechado',17),
(2,3, 'aliados em guerra',18),
(2,4, 'comercio aberto',19),
(2,5, 'aliados em guerra',20),
(2,6, 'aliados em guerra',21),
(2,7, 'aliados em guerra',22),
(2,8, 'aliados em guerra',23),
(2,9, 'guerra',24),
(2,10, 'guerra',25),
(2,11, 'guerra',26),
(2,12, 'guerra',27),
(2,13, 'guerra',28),
(2,14, 'guerra',29),
(2,15, 'guerra',30),
(2,16, 'guerra',31),
(2,17, 'guerra',32),
(2,18, 'guerra',33),
(3,4, 'comercio aberto',34),
(3,5, 'aliados em guerra',35),
(3,6, 'aliados em guerra',36),
(3,7, 'aliados em guerra',37),
(3,8, 'aliados em guerra',38),
(3,9, 'guerra',39),
(3,10, 'guerra',40),
(3,11, 'guerra',41),
(3,12, 'guerra',42),
(3,13, 'guerra',43),
(3,14, 'guerra',44),
(3,15, 'guerra',45),
(3,16, 'guerra',46),
(3,17, 'guerra',47),
(3,18, 'guerra',48),
(4,5,'comercio aberto',49),
(4,6,'comercio aberto',50),
(4,7,'comercio aberto',51),
(4,8,'comercio aberto',52),
(4,9, 'comercio fechado',53),
(4,10, 'comercio fechado',54),
(4,11, 'comercio fechado',55),
(4,12, 'comercio fechado',56),
(4,13, 'comercio fechado',57),
(4,14, 'comercio fechado',58),
(4,15, 'comercio fechado',59),
(4,16, 'comercio fechado',60),
(4,17, 'comercio fechado',61),
(4,18, 'comercio fechado',62),
(5,6, 'aliados em guerra',63),
(5,7, 'aliados em guerra',64),
(5,8, 'aliados em guerra',65),
(5,9, 'guerra',66),
(5,10, 'guerra',67),
(5,11, 'guerra',68),
(5,12, 'guerra',69),
(5,13, 'guerra',70),
(5,14, 'guerra',71),
(5,15, 'guerra',72),
(5,16, 'guerra',73),
(5,17, 'guerra',74),
(5,18, 'guerra',75),
(6,7, 'aliados em guerra',6),
(6,8, 'aliados em guerra',null),
(6,9, 'guerra',null),
(6,10, 'guerra',null),
(6,11, 'guerra',null),
(6,12, 'guerra',null),
(6,13, 'guerra',null),
(6,14, 'guerra',null),
(6,15, 'guerra',null),
(6,16, 'guerra',null),
(6,17, 'guerra',null),
(6,18, 'guerra',null),
(7,8, 'aliados em guerra',null),
(7,9, 'guerra',null),
(7,10, 'guerra',null),
(7,11, 'guerra'),
(7,12, 'guerra'),
(7,13, 'guerra'),
(7,14, 'guerra'),
(7,15, 'guerra'),
(7,16, 'guerra'),
(7,17, 'guerra'),
(7,18, 'guerra'),
(8,9, 'guerra'),
(8,10, 'guerra'),
(8,11, 'guerra'),
(8,12, 'guerra'),
(8,13, 'guerra'),
(8,14, 'guerra'),
(8,15, 'guerra'),
(8,16, 'guerra'),
(8,17, 'guerra'),
(8,18, 'guerra'),
(9,10, 'aliados em guerra'),
(9,11, 'aliados em guerra'),
(9,12, 'aliados em guerra'),
(9,13, 'aliados em guerra'),
(9,14, 'aliados em guerra'),
(9,15, 'aliados em guerra'),
(9,16, 'aliados em guerra'),
(9,17, 'comercio aberot'),
(9,18, 'comercio aberto'),
(10,11, 'aliados em guerra'),
(10,12, 'aliados em guerra'),
(10,13, 'aliados em guerra'),
(10,14, 'aliados em guerra'),
(10,15, 'aliados em guerra'),
(10,16, 'aliados em guerra'),
(10,17, 'comercio aberto'),
(10,18, 'comercio aberto'),
(11,12, 'aliados em guerra'),
(11,13, 'aliados em guerra'),
(11,14, 'aliados em guerra'),
(11,15, 'aliados em guerra'),
(11,16, 'aliados em guerra'),
(11,17, 'aliados em guerra'),
(11,18, 'aliados em guerra'),
(12,13, 'aliados em guerra'),
(12,14, 'aliados em guerra'),
(12,15, 'aliados em guerra'),
(12,16, 'aliados em guerra'),
(12,17, 'comercio aberto'),
(12,18, 'comercio aberto'),
(13,14, 'aliados em guerra'),
(13,15, 'aliados em guerra'),
(13,16, 'aliados em guerra'),
(13,17, 'comercio aberto'),
(13,18, 'comercio aberto'),
(14,15, 'aliados em guerra'),
(14,16, 'aliados em guerra'),
(14,17, 'comercio aberto'),
(14,18, 'comercio aberto'),
(15,16, 'aliados em guerra'),
(15,17, 'comercio aberto'),
(15,18, 'comercio aberto'),
(16,17, 'comercio aberto'),
(16,18, 'comercio aberto'),
(17,18, 'comercio aberto');




select * from planetas;
select * from galaxias;
select * from satelites_naturais;
select *  from relacao_entre_planetas; 

 


