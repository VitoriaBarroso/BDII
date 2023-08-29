use bdMusica

go

CREATE view vwMusica AS
 	SELECT COUNT(tbMusica.idMusica) 'Qtdade de Musicas', nomeAutor FROM tbMusica 
		INNER JOIN tbAutoria ON tbMusica.idMusica = tbAutoria.idMusica
			INNER JOIN tbAutor ON tbAutoria.idAutor = tbAutor.idAutor
				GROUP BY nomeAutor

			   SELECT * FROM vwMusica
			   Group BY tbMusica

CREATE VIEW  vwMaiorCompositor AS
	SELECT * FROM vwMusica
	WHERE [Qtdade de Musicas] = (SELECT MAX([Qtdade de Musicas]) FROM vwMusica)
	SELECT * FROM vwMaiorCompositor
	SELECT* FROM vwMusica

CREATE VIEW vwAutoria AS
	SELECT nomeMusica, nomeAutor FROM tbMusica 
	INNER JOIN tbAutoria ON tbMusica.idMusica =tbAutoria.idMusica
	INNER JOIN tbAutor ON tbAutoria.idAutor = tbAutor.idAutor
	WHERE MONTH (dtComposicao) =5 AND YEAR(dtComposicao)=2023
	
	SELECT * FROM vwAutoria


	CREATE VIEW vwMusicaLonga AS
		SELECT nomeMusica,duracaoMusica FROM tbMusica
				WHERE duracaoMusica = (SELECT MAX(duracaoMusica) FROM tbMusica)
		SELECT * FROM vwMusicaLonga

	CREATE VIEW vwGrana AS
		SELECT nomeAutor, valorDireitoAutoral From tbAutor
		INNER JOIN tbAutoria ON tbAutor.idAutor = tbAutoria.idAutor
		INNER JOIN tbMusica ON tbAutoria.idMusica =tbMusica.idMusica
		WHERE valorDireitoAutoral = (SELECT MAX (valorDireitoAutoral) FROM tbMusica)
		SELECT * FROM vwGrana