CREATE DATABASE bdMusica
go
USE bdMusica

CREATE table  tbMusica(
 idMusica int primary key IDENTITY (1,1)
 ,nomeMusica VARCHAR (50) not null
 , duracaoMusica SMALLDATETIME NOT NULL
 ,dtComposicao SMALLDATETIME NOT NULL
 ,valorDireitoAutoral SMALLMONEY NOT NULL
)
CREATE TABLE tbAutor(
	idAutor INT PRIMARY KEY IDENTITY (1,1)
	,nomeAutor VARCHAR (50) NOT NULL
)
CREATE TABLE tbAutoria(
	idAutoria INT PRIMARY KEY IDENTITY (1,1)
	,idAutor INT FOREIGN KEY REFERENCES tbAutor(idAutor)
	,idMusica INT FOREIGN KEY REFERENCES tbMusica (idMusica)

)
