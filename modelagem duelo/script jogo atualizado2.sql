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
alter table individuo rename column naciscimento to nascimento;
alter table individuo rename column fkpais to pais_atual;
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
tipo_relacao varchar(50),
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
(6,7, 'aliados em guerra',76),
(6,8, 'aliados em guerra',77),
(6,9, 'guerra',78),
(6,10, 'guerra',79),
(6,11, 'guerra',80),
(6,12, 'guerra',81),
(6,13, 'guerra',82),
(6,14, 'guerra',83),
(6,15, 'guerra',84),
(6,16, 'guerra',85),
(6,17, 'guerra',86),
(6,18, 'guerra',87),
(7,8, 'aliados em guerra',88),
(7,9, 'guerra',89),
(7,10, 'guerra',90),
(7,11, 'guerra',91),
(7,12, 'guerra',92),
(7,13, 'guerra',93),
(7,14, 'guerra',94),
(7,15, 'guerra',95),
(7,16, 'guerra',96),
(7,17, 'guerra',97),
(7,18, 'guerra',98),
(8,9, 'guerra',99),
(8,10, 'guerra',100),
(8,11, 'guerra',101),
(8,12, 'guerra',102),
(8,13, 'guerra',103),
(8,14, 'guerra',104),
(8,15, 'guerra',105),
(8,16, 'guerra',106),
(8,17, 'guerra',107),
(8,18, 'guerra',108),
(9,10, 'aliados em guerra',109),
(9,11, 'aliados em guerra',110),
(9,12, 'aliados em guerra',111),
(9,13, 'aliados em guerra',112),
(9,14, 'aliados em guerra',113),
(9,15, 'aliados em guerra',114),
(9,16, 'aliados em guerra',115),
(9,17, 'comercio aberot',116),
(9,18, 'comercio aberto',117),
(10,11, 'aliados em guerra',118),
(10,12, 'aliados em guerra',119),
(10,13, 'aliados em guerra',120),
(10,14, 'aliados em guerra',121),
(10,15, 'aliados em guerra',122),
(10,16, 'aliados em guerra',123),
(10,17, 'comercio aberto',124),
(10,18, 'comercio aberto',125),
(11,12, 'aliados em guerra',126),
(11,13, 'aliados em guerra',127),
(11,14, 'aliados em guerra',128),
(11,15, 'aliados em guerra',129),
(11,16, 'aliados em guerra',130),
(11,17, 'aliados em guerra',131),
(11,18, 'aliados em guerra',132),
(12,13, 'aliados em guerra',133),
(12,14, 'aliados em guerra',134),
(12,15, 'aliados em guerra',135),
(12,16, 'aliados em guerra',136),
(12,17, 'comercio aberto',137),
(12,18, 'comercio aberto',138),
(13,14, 'aliados em guerra',139),
(13,15, 'aliados em guerra',140),
(13,16, 'aliados em guerra',141),
(13,17, 'comercio aberto',142),
(13,18, 'comercio aberto',143),
(14,15, 'aliados em guerra',144),
(14,16, 'aliados em guerra',145),
(14,17, 'comercio aberto',146),
(14,18, 'comercio aberto',147),
(15,16, 'aliados em guerra',148),
(15,17, 'comercio aberto',149),
(15,18, 'comercio aberto',150),
(16,17, 'comercio aberto',151),
(16,18, 'comercio aberto',152),
(17,18, 'comercio aberto',153);



desc pais;
select * from planetas;
select * from galaxias;
select * from satelites_naturais;
select *  from relacao_entre_planetas; 
-- planeta1--
insert into pais values

(null,'minas gerais',100000,1),
(null,'alemanha',150000,1),
(null,'brasil',300000,1),
(null,'armenia',500000,1),
(null,'argentina',10000000,1),
(null,'mexico',10400980,1),
(null,'groelandia',900000,1),
(null,'olimpia',1090000,1),
(null,'tasmania',1040000,1),
(null,'china',1355550,1),
(null,'coronga',156200,1),
(null,'japao',10686,1),
(null,'equador',10078,1),
(null,'fiory',170,1),
(null,'konoha',108653,1),
(null,'espanha',8990000,1),
(null,'coliseu',878000,1),
(null,'estador separados',1544440,1),
(null,'portugal',10000,1),
(null,'guiana francesa',199999,1),
(null,'frança',10000000,1),
(null,'canada',9898988,1),
(null,'marrocos',1045465,1),
(null,'avai',188877,1),
(null,'minas geral',100008740,1),
(null,'cabo verde',17777,1),
(null,'chile',109878,1),
(null,'dinamarca',1099999,1),
-- planeta2;
(null,'colombia',1004505700,2),
(null,'reino separado',1565500,2),
(null,'vila da chuva',3035410,2),
(null,'pais da terra',5024000,2),
(null,'reino do gigantes',15421000,2),
(null,'ostrols',10400980,2),
(null,'mindin',9354210,2),
(null,'olimpiacos',109500,2),
(null,'america',104210,2),
(null,'canavial',13553520,2),
(null,'network',15210,2),
(null,'japan',521086,2),
(null,'quadrados',10078,2),
(null,'triangulos',17100,2),
(null,'chavos',10523,2),
(null,'fastfoud',892100,2),
(null,'egit',8720,2),
(null,'estado gelado',1544440,2),
(null,'quente',15210,2),
(null,' vila francesa',1999,2),
(null,'estado frio',108952000,2),
(null,'estado molhado',989968,2);
-- planeta 3
insert into pais values
(null,'vila do siri',1078525,2),
(null,'fend\ do biquini',188897,2),
(null,'palmeiras',1000990,2),
(null,'itaquera',152,2),
(null,'paulista',10987788,2),
(null,'itaim',9,2),
(null,'yggbrasil',1004580,2),
(null,'reino viuvo',18500,2),
(null,'vila da casado',835410,2),
(null,'pais da fogo',5028840,2),
(null,'reino do elfos',181000,2),
(null,'osmagos',1700980,2),
(null,'anelar',935210,2),
(null,'izunos',10500,2),
(null,'nortmerica',1510,2),
(null,'carnaval',143520,2),
(null,'nettim',1550,2),
(null,'japones',5266,2),
(null,'triangulos',168,2),
(null,'redondos',17800,2),
(null,'chaves',1094,2),
(null,'festin',85100,2),
(null,'egito',851,2),
(null,'estado morno',11240,2),
(null,'quentao',510,2),
(null,' vila bahiana',194,2),
(null,'estado tropical',1000,2),
(null,'estado gelado',98568,2);
select * from pais;
-- planeta 5
insert into pais values 
(null,'vila do peixe',10788925,2),
(null,'fenda do shorts',18897,2),
(null,'palmeira',1097540,2),
(null,'itaquerao',8,2),
(null,'paulistanos',1788,2),
(null,'itaim bibi',9999,2),
(null,'vila samurai',10788925,2),
(null,'matrix',1417,2),
(null,'interestelar',41540,2),
(null,'ira',88,2),
(null,'estrela',166,2),
(null,'ilhas',889,2);
-- planeta6
insert into pais values 
(null,'vila da vila',108925,2),
(null,'vila da areia',177,2),
(null,'pais do gelo',109780,2),
(null,'itaquecetuba',9,2),
(null,'india',1555555555558,2),
(null,'iraque',98888888888,2),
(null,'saara',109999999,2),
(null,'pais vermelho',17717,2),
(null,'pais do ar',16168515520,2),
(null,'africa central',1,2),
(null,'inslandia',2,2),
(null,'jatoba',3,2);
-- planeta7
insert into pais values
(null,'carrao',1078525,2),
(null,'reino dos insetos',144497,2),
(null,'red line',1000990,2),
(null,'pari san germa',6666,2),
(null,'whole xcake',10987788,2),
(null,'dressrossa',855555421,2),
(null,'ygg',1066999666,2),
(null,'reino da guerra',8500,2),
(null,'vila dos talaricos',166666610,2),
(null,'pais do sql',100000,2),
(null,'reino da amazonia',1660,2),
(null,'os9s',1706,2),
(null,'indicador',660,2),
(null,'nikesss',60,2),
(null,'sulmerica',1510,2),
(null,'naval',6620,2),
(null,'nen',190,2),
(null,'quimera',66666666666,2),
(null,'x56s85',99,2),
(null,'incas',17800,2),
(null,'malaias',1094,2),
(null,'ford',85100,2),
(null,'paula souza',851,2),
(null,'rio de janeiro',11240,2),
(null,'são louis',510,2),
(null,' vila acaraje',194,2),
(null,'estado maritimo',1000,2),
(null,'estado terra',98568,2);
-- planeta8
insert into pais values
(null,'meteoro',1078525,2),
(null,'bloco',188997,2),
(null,'tijolao',1690,2),
(null,'it582a',15521,2),
(null,'itambe',1096532788,2),
(null,'ibituruna',852,2),
(null,'guerbites',1004580,2),
(null,'reino 66',18500,2),
(null,'vila chinesa',835410,2),
(null,'hong kong',5028840,2),
(null,'selvagens',181000,2),
(null,'osnija',1700980,2),
(null,'polegar',93525110,2),
(null,'iolis',1050510,2),
(null,'lestmerica',1521510,2),
(null,'aval',14352510,2),
(null,'fintim',1558510,2),
(null,'jhuyga',541266,2),
(null,'exagonos',16518,2),
(null,'re25',1780410,2),
(null,'ch555es',1094,2),
(null,'zinzan',85100,2),
(null,'yinyang',852,2),
(null,'filapinas',11330,2),
(null,'vinnox',552,2),
(null,' vila massa',632,2),
(null,'estado solido',1652,2),
(null,'estado liquidoo',96,2);
-- planeta9
insert into pais values
(null,'vila madeira',99925,2),
(null,'bestiais',66667,2),
(null,'dominios',109880,2),
(null,'nevascas',8882,2),
(null,'pais da montanha',1098778852,2),
(null,'morales',52,2),
(null,'yggbig',1004580,2),
(null,'reino bigmund',18500,2),
(null,'pais de ferro',835410,2),
(null,'pais da fruta',5028840,2),
(null,'reino do jogos',181000,2),
(null,'ossoldado',1700980,2),
(null,'central',935210,2),
(null,'pais adidas',10500,2),
(null,'oestemerica',1510,2),
(null,'ocidental',143520,2),
(null,'netao',15555,2),
(null,'shiriy',5266,2),
(null,'pentagonos',168,2),
(null,'pais das nuvens',166660,2),
(null,'angel',74444,2),
(null,'pais angelicais',8566100,2),
(null,'marons',55551,2),
(null,'jaygrey',44411240,2),
(null,'pais x',555510,2),
(null,' pais y',190004,2),
(null,'pais mongos',5500,2),
(null,'pais fungi',2888868,2);
-- planeta10 
insert into pais values
(null,'reino animalia',1078525,2),
(null,'reino dos fungos',15288897,2),
(null,'reino das plantas',1559041,2),
(null,'reino das bacterias',15442,2),
(null,'reino das aquatico',667788,2),
(null,'plates',99999999,2),
(null,'reino miudo',1000000000,2),
(null,'reino partes',1666333,2),
(null,'pais das maravalhas',835555410,2),
(null,'paisrabens',502884066,2),
(null,'angola',181000,2),
(null,'goias',1700980,2),
(null,'acre',935210,2),
(null,'salvador',10511500,2),
(null,'rio de fevereiro',6661510,2),
(null,'wano',143520,2),
(null,'reino da mentira',155740,2),
(null,'reino ingles',526651,2),
(null,'minoutar',168555999,2),
(null,'ratounim',17800,2),
(null,'sescha',1094,2),
(null,'shivas',85100,2),
(null,'columbia',851,2),
(null,'ilhados',11240,2),
(null,'pais da comida',510,2),
(null,'pais lunar',555878194,2),
(null,'pais lunar',1555000,2),
(null,'pais universal',9856558,2);
insert into pais values
(null,'reino da tecno',16697,2),
(null,'dinamarca',1522559041,2),
(null,'grecia',15444442,2),
(null,'poe',667788,2),
(null,'filipinas',99999999,2),
(null,'roma',1000000000,2),
(null,'pacifico',1666333,2),
(null,'pais salvador',835555410,2),
(null,'romanas',502884066,2),
(null,'amazon',181000,2),
(null,'shikigaki',1700980,2),
(null,'brasilandia',935210,2),
(null,'monkeys',10511500,2);
update pais set fkplaneta=2 where idpais> 25;
update pais set fkplaneta=3 where idpais> 50;
update pais set fkplaneta=4 where idpais> 75;
update pais set fkplaneta=5 where idpais> 84 and idpais <91;
update pais set fkplaneta=6 where idpais> 90;
update pais set fkplaneta=7 where idpais> 104 ;
update pais set fkplaneta=8 where idpais> 120;
update pais set fkplaneta=9 where idpais> 135;
update pais set fkplaneta=10 where idpais> 145;
select * from individuo;
alter table individuo add column sexo char(1);
alter table individuo add check (sexo ='m' or sexo = 'f' or sexo = 'i');
insert into  individuo values
(null,'argentina','daniel','2000-02-05','jagunços',3,'m'),
(null,'angola','sasuke','1190-03-25','jagunços',100,'m'),
(null,'africa do sul','sakura','1955-01-31','jagunços',3,'f'),
(null,'konoha','neji','1980-05-04','jagunços',3,'m'),
(null,'angola','solange','1450-12-20','jagunços',100,'f'),
(null,'estados separados','tenten','1950-11-25','jagunços',100,'f'),
(null,'pais de ferro','levy','2016-11-05','jagunços',5,'i'),
(null,'dinamarca','dan','1990-09-15','jagunços',5,'i');
insert into individuo values
(null,'pais salvador','amon','1955-12-30','jagunços',5,'i'),
(null,'minas gerais','chou','1999-11-29','jagunços',10,'m'),
(null,'rio de fevereiro','uranus','1995-11-20','jagunços',100,'m'),
(null,'poe','monf','1999-11-20','guerberti',110,'i'),
(null,'amazon','mingali','2001-06-16','guerberti',60,'i'),
(null,'shivas','marcel','1999-09-17','guerberti',50,'m'),
(null,'estado solido','diana','2015-11-15','guerberti',14,'f'),
(null,'estado liquido','amelia','1999-10-05','guerberti',55,'f'),
(null,'reino da mentira','michael','2011-11-10','guerberti',120,'m'),
(null,'konoha','diego','1984-09-16','guerberti',56,'m'),
(null,'plantes','loki','2021-12-31','guerberti',11,'m'),
(null,'reino bigmund','afrodite','1999-09-11','guerberti',10,'i');
select * from naves;
insert into naves(nome,fkcapitao,fkpais) values 
('aaa2506',1,null),
('bbb5000',2,null),
('spacex',3,null),
('estrela da morte',4,null),     
('nave instelar',5,null),
('pegasus',6,null),
('stars',7,null),
('raiox',8,null),
('linux',9,null),
('triturador',10,null),
('placa mae',11,100),
('luz',12,44),
('black',13,66),
('diamante negro',14,15),
('falcone x',15,13),
('b755',16,14),
('b2',17,17),
('robocop',18,121),
('transform',19,149),
('sintaxsql',20,114);
select * from pais;
-- inserts galaxia 2
insert into satelites_naturais ( nome, distancia, populacao, fkplaneta) values
('Mimas', 5123, 9123, 13),
('Encélado', 123, 2123, 14),
('Tétis', 5, 0, 15),
('Amalteia', 92174, 512312, 18),
('Himalia', 192174, 9871280, 18),
('Elara', 392174, 28014, 18),
('Pasife', 592174, 2169123, 18),
('Sinope', 692174, 128063, 18),
('Lisiteia', 1904, 128635, 18),
('Carme', 174, 213658, 18),
('Alanke', 2174, 21874, 18),
('Leda', 90, 218365, 18),
('Tebe', 1292174, 2134, 18),
('Adrasteia', 9252174, 21738, 18);




