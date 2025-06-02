CREATE database quimica_naval;

use quimica_naval;

CREATE TABLE dica(
idDica int not null auto_increment,
elemento varchar (100) not null, 
familia varchar (50) not null, 
descricaoDica varchar (500) not null, 
constraint pk_dica primary key (idDica)
);

CREATE TABLE jogador(
idJogador int not null auto_increment,
nome varchar (100) not null, 
constraint pk_jogador primary key (idJogador)
);

CREATE TABLE jogada(
idJogada int not null auto_increment,
idJogador1 int not null, 
idJogador2 int not null, 
idElemento1 int not null, 
idElemento2 int not null, 
constraint pk_jogada primary key (idJogada), 
constraint fk_jogada_jogador1 foreign key (idJogador1) references jogador(idJogador), 
constraint fk_jogada_jogador2 foreign key (idJogador2) references jogador(idJogador),
constraint fk_jogada_elemento1 foreign key (idElemento1) references dica(idDica),
constraint fk_jogada_elemento2 foreign key (idElemento2) references dica(idDica)
);

select d.descricaodica from jogada j
inner join dica d on d.iddica = idelemento1
where j.idjogada = 1;

select * from dica;





