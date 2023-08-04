--DQL EXERCICIO 1.3

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)

SELECT
	V.Nome AS Nome_Veterinario,
	V.CRMV AS Numero_CRVM,
	C.Endereco AS Endere�o_Clinica

FROM Veterinario AS V
	INNER JOIN Clinica AS C ON V.IdClinica = C.IdClinica
---------------------------------------------------------------------

-- listar todas as ra�as que come�am com a letra S

SELECT 
	Raca.Nome

FROM 
	Raca WHERE Nome LIKE 'S%'

----------------------------------------------------------------------	

-- listar todos os tipos de pet que terminam com a letra O

SELECT 
	TipoPet.Nome

FROM
	TipoPet WHERE Nome LIKE '%O'
----------------------------------------------------------------------

-- listar todos os pets mostrando os nomes dos seus donos

SELECT
	Pets.Nome,
	Dono.Nome

FROM Pets
	INNER JOIN Dono ON Pets.IdDono = Dono.IdDono

----------------------------------------------------------------------

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu,
-- o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e 
-- o nome da cl�nica onde o pet foi atendido

SELECT 
	Atendimento.Registro,
	Veterinario.Nome AS Nome_Veterinario,
	Pets.Nome AS Nome_Pet,
	Raca.Nome AS Nome_Raca,
	TipoPet.Nome AS Tipo_Pet,
	Dono.Nome AS Nome_Dono,
	Clinica.Endereco

FROM Atendimento
	INNER JOIN Veterinario ON Atendimento.IdVeterinario = Veterinario.IdVeterinario
	INNER JOIN Pets ON Atendimento.IdPets = Pets.IdPets
	INNER JOIN Raca ON Pets.IdRaca = Raca.IdRaca
	INNER JOIN TipoPet ON Pets.IdTipoPet = TipoPet.IdTipoPet
	INNER JOIN Dono ON Pets.IdDono = Dono.IdDono
	INNER JOIN Clinica ON Veterinario.IdClinica = Clinica.IdClinica

