-- DML

/*INSERT INTO TipoUsuario(Titulo)
VALUES ('Administrador'),('Comum')*/

/*INSERT INTO Situacao(Titulo)
VALUES ('Fratura Interna')*/

/*INSERT INTO Especialidade(Tipo)
VALUES ('Cl�nico Geral')*/

/*INSERT INTO Clinica(Endereco,CNPJ,NomeFantasia,RazaoSocial,HorarioFuncionamento)
VALUES ('Rua Cabo Osvaldino','39217628000189','Senai_Clinic','Clinica M�dica','09 as 22')*/

/*INSERT INTO Usuario(IdTipoUsuario,Email,Senha,Nome)
VALUES (2, 'Matheus@gmail.com',5678,'Matheus')
VALUES (1, 'Catarina@gmail.com',1234,'Catarina'),
(2,'Enzo@gmail.com',4321,'Enzo')*/

/*INSERT INTO Pacientes(IdUsuario,RG,CPF,DataNascimento,Telefone,CEP,Endereco)
VALUES ('1','368708433','77518922002','29/06/2001','967711520','94440390','Rua Coliseu'),
(2,'267872082','21684769000','18/04/2000','947571710','78734572','Rua Quatro')*/

/*INSERT INTO Medicos(IdUsuario,IdClinica,IdEspecialidade,CRM)
VALUES (3,2,1,'588393105284')*/

/*INSERT INTO Consultas(IdPacientes,IdMedicos,IdSituacao,Prontuario,DataAgendamento,Descricao,HorarioConsulta)
VALUES (1,1,2,'Fratura f�mur dir. p/ cirurgia','28/08/2023','Paciente sofreu fratura no f�mur direito e ser� submetido a cirurgia','09:00'),
(2,1,1,'Febre alta, tosse persistente','19/08/2023','Paciente apresenta febre alta e tosse persistente indicando poss�vel infec��o','10:00')*/


/*INSERT INTO FeedBack(IdConsultas,Descricao)
VALUES (8,'Recebi um tratamento eficaz para minha infec��o respirat�ria.'),
(9,'A cirurgia no f�mur foi um sucesso! Equipe m�dica incr�vel.')*/

-------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM TipoUsuario
SELECT * FROM Situacao
SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM Usuario
SELECT * FROM Pacientes
SELECT * FROM Medicos
SELECT * FROM Consultas
SELECT * FROM FeedBack