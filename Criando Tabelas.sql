USE MCU;

--Tabela Fase: Em uma Fase ha 'n' Filmes
CREATE TABLE tblfase
(
	idFase				int		identity
	Constraint PK_tblfase_idfase
	Primary Key(idfase),
	NomeFase		varchar
)

--Tabela Diretor
CREATE TABLE tbldiretor
(
	idDiretor		int
	Constraint PK_tbldiretor_idDiretor
	Primary Key(idDiretor),
	NomeDiretor		varchar
)
--Tabela Projeto: Filme ou Serie, informando qual seu Diretor(a) e qual a Fase pertence
CREATE TABLE tblprojeto
(
	idProjeto			int
	Constraint PK_tblprojeto_idProjeto
	Primary Key (idProjeto),
	NomeProjeto			varchar		unique,
	DataLancamento		Date,
	idFase				int			not null
	Constraint FK_tblprojeto_tblfase_idFase
	Foreign Key (idFase)
	References tblfase(idFase),
	idDiretor			int		not null
	Constraint FK_tblprojeto_tbldiretor_idDiretor
	Foreign Key (idDiretor)
	References tbldiretor(idDiretor),
)

