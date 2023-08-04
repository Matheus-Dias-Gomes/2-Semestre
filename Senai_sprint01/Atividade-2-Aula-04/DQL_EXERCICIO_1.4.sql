--DQL
USE O_EXERCICIO_1_4

-- listar todos os usu�rios administradores, sem exibir suas senhas

SELECT
	Usuario.Nome,
	Usuario.Email,
	Usuario.TipoUsuario

FROM Usuario WHERE TipoUsuario = 'adm'

------------------------------------------------------------------------------------

-- listar todos os �lbuns lan�ados ap�s um determinado ano de lan�amento

SELECT
	Album.Titulo AS Nome,
	Album.QuantidadeMinutos,
	Album.Localiza��o AS Local_Lan�ado,
	Album.EstaAtivo AS Ativo,
	Album.DataLancamento AS Data_de_Lancamento

FROM Album WHERE DataLancamento > '02/12/2011'
-- FROM Album WHERE DataLancamento > '02/12/2012'

------------------------------------------------------------------------------------

-- listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT
	Usuario.Nome,
	Usuario.Email,
	Usuario.TipoUsuario,
	Usuario.Senha

FROM Usuario WHERE Email = 'vic@gmail.com' AND Senha = 'vicvic'
--FROM Usuario WHERE Email = 'eduardo@gmail.com' AND Senha = 'dudu'

------------------------------------------------------------------------------------

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT
	Album.Titulo AS Nome,
	Album.QuantidadeMinutos,
	Album.Localiza��o AS Local_Lan�ado,
	Album.EstaAtivo AS Ativo,
	Album.DataLancamento AS Data_de_Lancamento,
	Artistas.Nome AS Nome_Artista,
	Estilo.Tipo AS Nome_Estilo

FROM Album
	INNER JOIN Artistas ON Album.IdArtistas = Artistas.IdArtistas
	INNER JOIN AlbumEstilo ON Album.IdAlbum = AlbumEstilo.IdAlbum
	INNER JOIN Estilo ON AlbumEstilo.IdEstilo = Estilo.IdEstilo

WHERE EstaAtivo = 'sim'
--WHERE EstaAtivo = 'nao'




------------------------------------------------------------------------------------