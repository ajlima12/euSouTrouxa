-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2022 às 14:28
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_empresa`
--
CREATE DATABASE IF NOT EXISTS `bd_empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_empresa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bd_empresa`
--

CREATE TABLE `bd_empresa` (
  `Cod_produto` int(11) NOT NULL,
  `Descricao` varchar(50) NOT NULL,
  `Unidade` varchar(2) NOT NULL,
  `Qtde_Estoque` double NOT NULL,
  `Caracteristicas` varchar(50) NOT NULL,
  `Cod_Fornecedor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `bd_empresa`
--

INSERT INTO `bd_empresa` (`Cod_produto`, `Descricao`, `Unidade`, `Qtde_Estoque`, `Caracteristicas`, `Cod_Fornecedor`) VALUES
(1, 'Caneta', 'un', 100, 'cor azul', 2),
(2, 'Caneta', 'un', 85, 'cor vermelha', 2),
(3, 'Caneta', 'un', 60, 'cor preta ', 2),
(4, 'Lápis', 'un', 150, 'sem borracha', 3),
(5, 'Lápis', 'un', 100, 'com borracha', 4),
(6, 'Lápis de cor', 'cx', 25, '12 cores', 4),
(7, 'Lápis de cor', 'cx', 50, '24 cores', 4),
(8, 'Lápis de cor', 'cx', 35, '36 cores', 5),
(9, 'Borracha', 'dz', 35, 'azul/vermelha', 6),
(10, 'Borracha', 'dz', 25, 'Branca', 7),
(11, 'Papel sulfite', 'pc', 100, 'Colorido', 8),
(12, 'Caderno Universitário', 'pc', 25, '1 matéria', 9),
(13, 'Caderno Universitário', 'pc', 150, '10 matérias', 9),
(14, 'Régua', 'un', 250, 'Acrílica - 30 cm', 10),
(15, 'Lapiseira', 'pc', 86, 'Grafite 0.5', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `Cod_Fornecedor` int(11) NOT NULL,
  `Razao_Social` varchar(70) NOT NULL,
  `Nome_Fantasia` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Num` varchar(7) NOT NULL,
  `Bairro` varchar(25) NOT NULL,
  `Cidade` varchar(25) NOT NULL,
  `Fone` varchar(18) NOT NULL,
  `Nome_contato` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`Cod_Fornecedor`, `Razao_Social`, `Nome_Fantasia`, `CNPJ`, `Endereco`, `Num`, `Bairro`, `Cidade`, `Fone`, `Nome_contato`, `Email`, `Site`) VALUES
(1, 'Comércio de papéis Yuki Ltda.', 'Yuki Papéis', '03.847.655/0001-98', 'Rua das Ameireiras ', '21', 'Penha', 'São Paulo', '(11) 2695 6398', 'Sr Pedro', 'yuki@provedor.com.br', 'yuki.com.br'),
(2, 'Comércio de Papéis ABC Ltda.', 'Papelaria ABC', '14.218.835/0001-27', 'Av. Iguapé', '1696', 'Tatuapé', 'São Paulo', '(11)23699685', 'Sra. Bete', 'p_ABC@provedor.com.br', 'papelariaabc.com.br'),
(3, 'Distribuidora Kalunga S.A.', 'Kalunga', '23.222.835/0001-07', 'Av. Rio das pedras', '1752', 'Itaquera', 'São Paulo', '(11)2596-9586', 'Sr. Marcos', 'kalunga@provedor.com.br', 'kalunga.com.br'),
(4, 'Indústria e Comércio Nobel S.A.', 'Nobel', '07.256.898/0001-10', 'Rua das Bolhas ', '900', 'Itaquera', 'São Paulo', '(11)24756598', 'Sr. Paulo', 'nobel@provedor.com.br', 'comercionobel.com.br'),
(5, 'Papelaria Americanas Ltda.', 'Americanas', '01.659.427/0001-04', 'Rua das ovelhas', '21', 'Pari', 'São Paulo', '(11) 2456-9874', 'Sr. Antonio', 'americanas@provedor.com.br', 'americanas.com.br'),
(6, 'Distribuidora Brasileiras S.A.', 'Brasileiras S.A.', '01.326.265/0001-04', 'Av. Brasil', '12', 'Brás', 'São Paulo', '(11)6598-6958', 'Sra.Paula', 'brasileiras@provedor.com.br', 'brasileiras.com.br'),
(7, 'Ind. e Comércio de Papéis OI Ltda.', 'Papéis OI', '01.362.126/0001-04', 'Av. dos Trilhos ', '1362', 'Pari', 'São Paulo', '(11)2365-2154', 'Sra. Ana', 'oi@provedor.com.br', 'papeisoi.com.br'),
(8, 'Armarinhos Fernando Ltda', 'Fernando', '01.956.236/0001-04', 'Alameda Santos', '362', 'Centro', 'São Paulo', '(11)2362-3659', 'Sr. Matheus', 'fernando@provedor.com.br', 'armarinhosfernando.com.br'),
(9, 'Armarinhos Alegria S.A. ', 'Alegria', '14.632.326/0001-14', 'Rua das Fagulhas', '12', 'Cambuci', 'São Paulo', '(11) 2362 - 5487', 'Sr. Alegrete', 'alegria@provedor.com.br', 'armarinhosalegria.com.br'),
(10, 'Comércio de Papéis Tchau Ltda', 'Tchau', '11.659.652/0001-04', 'Alameda dos Anhambiguaras', '326', 'Morumbi', 'São Paulo', '(11) 3265 6958', 'Sr. Bento', 'tchau@provedor.com.br', 'papeistchau.com.br');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bd_empresa`
--
ALTER TABLE `bd_empresa`
  ADD PRIMARY KEY (`Cod_produto`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`Cod_Fornecedor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bd_empresa`
--
ALTER TABLE `bd_empresa`
  MODIFY `Cod_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `Cod_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Banco de dados: `bd_escola`
--
CREATE DATABASE IF NOT EXISTS `bd_escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `matrícula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`matrícula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('10002', 'Maria Conceição Lopes', 'Rua Araras 23', 'Mogi Guaçu', '01'),
('10003', 'Ana Carina Lopes teste', 'Rua Peraltas, 222', 'Santos', '01'),
('10004', 'Carlos Aguiar', 'Rua Botafogo, 33', 'Santos', '01'),
('10005', 'André Luiz dos Santos', 'Rua Lopes Conte, 3343 ', 'Sapucaí', '01'),
('10006', 'Pedro Antonio Pimenta', 'Rua Altair Lopes, 33', 'Itapira', '02'),
('10007', 'Rita de Cássia da Silva', 'Rua Eletromais, 33', 'Itapira', '02'),
('10008', 'Caique dos Santos', 'Rua das Amoreiras, 55', 'Campinas', '02'),
('10009', 'Carlos Tavares', 'Rua Peixe, 99', 'Santos', '02'),
('10010', 'Antonio Carlos Caetano', 'Rua Josefina Alface, 987', 'Campinas ', '02'),
('10011', 'Ricardo Moreira', 'Rua do Pinhal, 332', 'Aparecida', '03'),
('10012', 'Richardson S. P. Campeao', 'Rua do Tricolor, 433', 'São Paulo', '03'),
('10013', 'Junior Camisa Seis', 'Rua do Morumbi, 433', 'São Paulo', '03'),
('10014', 'Carina Melo', 'Rua Osvaldo Ramos, 88', 'Mogi Guaçu', '03'),
('10015', 'Pedro Mello', 'Rua Itororó, 3999', 'Mogi Mirim', '03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codcurso` char(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `coddisc1` char(2) NOT NULL,
  `coddisc2` char(2) NOT NULL,
  `coddisc3` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codcurso`, `nome`, `coddisc1`, `coddisc2`, `coddisc3`) VALUES
('02', 'Programador de Computadores', '21', '22', '23'),
('03', 'Técnico em Informática teste', '31', '32', '33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `CodDisciplina` char(2) NOT NULL,
  `NomeDiscplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`CodDisciplina`, `NomeDiscplina`) VALUES
('12', 'Lógica de Programação ds1'),
('13', 'Desenvolvimento de Software 1'),
('21', 'Banco de Dados 1'),
('22', 'Desenvolvimento de Software 2'),
('23', 'Programação de computadores 1'),
('31', 'Banco de Dados 3'),
('32', 'Programação de Software 2'),
('33', 'Desenvolvimento de software 33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(20) NOT NULL,
  `senha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`) VALUES
('biancafariassf', 123),
('ednarodriguess', 456);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matrícula`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`CodDisciplina`);
--
-- Banco de dados: `bd_musicscore_1`
--
CREATE DATABASE IF NOT EXISTS `bd_musicscore_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_musicscore_1`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblalunos`
--

CREATE TABLE `tblalunos` (
  `CodAluno` int(11) NOT NULL,
  `NomeAluno` varchar(100) NOT NULL,
  `CPFAluno` varchar(50) NOT NULL,
  `FoneAluno` varchar(50) NOT NULL,
  `EmailAluno` varchar(100) NOT NULL,
  `DataNascAluno` varchar(50) NOT NULL,
  `EnderecoAluno` varchar(150) NOT NULL,
  `CEPAluno` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblalunos`
--

INSERT INTO `tblalunos` (`CodAluno`, `NomeAluno`, `CPFAluno`, `FoneAluno`, `EmailAluno`, `DataNascAluno`, `EnderecoAluno`, `CEPAluno`) VALUES
(1, 'Ana Julia Lima ', '49416089843', '11987775643', 'analima@gmail.com', '27/02/2006', 'Rua Arnold Lima 56', '08027654'),
(2, 'Bianca Farias', '78653456523', '11956778342', 'bfarias@gmail.com', '14/11/2005', 'Rua Rio Campanha 75', '08097542'),
(3, 'Bruno Portugal', '24256789243', '11956772342', 'bportugal@gmail.com', '24/11/2004', 'Rua Catléias 900', '76784432'),
(4, 'Giovanna da Silva', '89816049424', '11956477890', 'giosilva@gmail.com', '28/05/2005', 'Rua Carvalho do Brasil 38', '08765432'),
(5, 'Ana Beatriz Batista', '59416089843', '11956776543', 'anabatista@gmail.com', '12/09/2005', 'Rua João Dias 45', '65443213');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcurso`
--

CREATE TABLE `tblcurso` (
  `CodCurso` int(11) NOT NULL,
  `NomeCurso` varchar(100) NOT NULL,
  `CargaHCurso` varchar(50) NOT NULL,
  `GradeHCurso` varchar(50) NOT NULL,
  `DescricaoCurso` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblcurso`
--

INSERT INTO `tblcurso` (`CodCurso`, `NomeCurso`, `CargaHCurso`, `GradeHCurso`, `DescricaoCurso`) VALUES
(1, 'Canto', '280 horas', '2 horas', 'Aprender a cantar e/ou aperfeiçoar suas habilidades.'),
(2, 'Violino', '320 horas', '3 horas', 'Aprender a tocar o instrumento e/ou aperfeiçoar suas habilidades.'),
(3, 'Guitarra', '280 horas', '2 horas', 'Aprender a tocar o instrumento e/ou aperfeiçoar suas habilidades.'),
(4, 'Bateria', '220 horas', '2 horas', 'Aprender a tocar o instrumento e/ou aperfeiçoar suas habilidades.'),
(5, 'Piano', '400 horas', '4 horas', 'Aprender a tocar o instrumento e/ou aperfeiçoar suas habilidades.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldisciplina`
--

CREATE TABLE `tbldisciplina` (
  `CodDisc` int(11) NOT NULL,
  `CodCurso` int(11) NOT NULL,
  `NomeDisc` varchar(100) NOT NULL,
  `DescricaoDisc` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbldisciplina`
--

INSERT INTO `tbldisciplina` (`CodDisc`, `CodCurso`, `NomeDisc`, `DescricaoDisc`) VALUES
(11, 1, 'Arranjo', 'Aprenda a fazer o uso do arranjo musical para trazer uma canção de um determinado estilo para outro gênero totalmente diferente.'),
(12, 2, 'História', 'Aprenda sobre as origens de cada instrumento e música estudado.'),
(13, 3, 'Harmonia', 'Aprenda a usar suas habilidades em conjunto com outras vozes e/ou instrumentos.'),
(14, 4, 'Acústica', 'Aprenda sobre som, ruído e série harmônica.'),
(15, 2, 'Notas musicais', 'Conheça as notas musicais.'),
(16, 1, 'Acordes e escalas', 'Aprenda sobre acordes e escalas.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblprofessor`
--

CREATE TABLE `tblprofessor` (
  `CodProf` int(11) NOT NULL,
  `NomeProf` varchar(100) NOT NULL,
  `CPFProf` varchar(50) NOT NULL,
  `DataNascProf` varchar(50) NOT NULL,
  `EmailProf` varchar(100) NOT NULL,
  `CEPprof` varchar(50) NOT NULL,
  `EnderecoProf` varchar(150) NOT NULL,
  `Telefone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblprofessor`
--

INSERT INTO `tblprofessor` (`CodProf`, `NomeProf`, `CPFProf`, `DataNascProf`, `EmailProf`, `CEPprof`, `EnderecoProf`, `Telefone`) VALUES
(100, 'Edna Rodrigues     ', '49416089832', '30/10/1990', 'ednarod@gmail.com', '08072215', 'Rua Camélia 123', '11982223168'),
(101, 'Carlos Alberto', '67654321343', '10/03/1980', 'carlosalb@gmail.com', '98765789', 'Rua Sonho Gaúcho 67', '11945227340'),
(102, 'Rogério Costa', '56543215432', '14/05/1981', 'rogcosta@gmail.com', '87654324', 'Rua Rio Campanha 67', '11945667432'),
(103, 'Jeferson Roberto', '76547809087', '05/02/1979', 'jefersonrob@gmail.com', '45467543', 'Rua Figo de Pinheiro 78', '11987665432'),
(104, 'Vilma Cardoso', '35367898032', '07/09/1988', 'vilmacard@gmail.com', '65432214', 'Rua João Firmino 56', '11978553421');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblusualuno`
--

CREATE TABLE `tblusualuno` (
  `NomeUsuAln` varchar(50) NOT NULL,
  `EmailUsuAln` varchar(50) NOT NULL,
  `SenhaUsuAln` varchar(5) NOT NULL,
  `RaUsu` varchar(5) NOT NULL,
  `FoneUsuAln` varchar(11) NOT NULL,
  `NascUsuAln` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblusualuno`
--

INSERT INTO `tblusualuno` (`NomeUsuAln`, `EmailUsuAln`, `SenhaUsuAln`, `RaUsu`, `FoneUsuAln`, `NascUsuAln`) VALUES
('Maria da Silva', 'mariasilva@gmail.com', '12345', '54321', '11956775432', '13.11.06'),
('João da Silva', 'joaosilva@gmail.com', '67890', '09876', '11954667432', '24.05.04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblusuprofessor`
--

CREATE TABLE `tblusuprofessor` (
  `NomeUsuPrf` varchar(50) NOT NULL,
  `EmailUsuPrf` varchar(50) NOT NULL,
  `SenhaUsuPrf` varchar(5) NOT NULL,
  `LicenciaturaUsu` varchar(5) NOT NULL,
  `FoneUsuPrf` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblusuprofessor`
--

INSERT INTO `tblusuprofessor` (`NomeUsuPrf`, `EmailUsuPrf`, `SenhaUsuPrf`, `LicenciaturaUsu`, `FoneUsuPrf`) VALUES
('Jaqueline Costa', 'jaquelinecosta@gmail.com', '12345', '54321', '11956443212'),
('Francisco Brito', 'franciscobrito@gmail.com', '67890', '09876', '11987665432');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tblalunos`
--
ALTER TABLE `tblalunos`
  ADD PRIMARY KEY (`CodAluno`);

--
-- Índices para tabela `tblcurso`
--
ALTER TABLE `tblcurso`
  ADD PRIMARY KEY (`CodCurso`);

--
-- Índices para tabela `tbldisciplina`
--
ALTER TABLE `tbldisciplina`
  ADD PRIMARY KEY (`CodDisc`);

--
-- Índices para tabela `tblprofessor`
--
ALTER TABLE `tblprofessor`
  ADD PRIMARY KEY (`CodProf`);
--
-- Banco de dados: `bd_rh`
--
CREATE DATABASE IF NOT EXISTS `bd_rh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_rh`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `Codigo_Cargo` int(6) NOT NULL,
  `Descricao` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`Codigo_Cargo`, `Descricao`) VALUES
(1, 'Consultor de recursos humanos'),
(2, 'Gestor de recrutamento e seleção'),
(3, 'Assistente de departamento de pessoal'),
(4, 'Supervisor'),
(5, 'Analista de cargos'),
(6, 'Analista de treinamento e capacitação'),
(7, 'Analista de recursos humanos'),
(8, 'Gerente'),
(9, 'Analista fiscal '),
(10, 'Analista de contas a pagar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `Codigo_Depto` int(6) NOT NULL,
  `Descricao` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`Codigo_Depto`, `Descricao`) VALUES
(1, 'Departamento de recrutamento e seleção de colabora'),
(2, 'Departamento pessoal'),
(3, 'Departamento Cargos e salários'),
(4, 'Departamento serviço social e benefícios'),
(5, 'Departamento de treinamento e desenvolvimento'),
(6, 'Departamento de relações trabalhistas e sindicais'),
(7, 'Departamento de segurança do trabalho'),
(8, 'Departamento de medicina no trabalho'),
(9, 'Departamento de comunicação e endomarketing'),
(10, 'Departamento jurídico');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `Matricula` int(11) NOT NULL,
  `Nome_dependente` varchar(45) NOT NULL,
  `Dt_nascimento` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`Matricula`, `Nome_dependente`, `Dt_nascimento`) VALUES
(1, 'dependente1', '2005-11-14'),
(2, 'dependente2', '2006-02-27'),
(3, 'dependente3', '2006-01-27'),
(4, 'dependente4', '2016-08-24'),
(5, 'dependente5', '2006-02-15'),
(6, 'dependente6', '2004-11-24'),
(7, 'dependente7', '2005-01-17'),
(8, 'dependente8', '2005-12-20'),
(9, 'dependente9', '2005-12-15'),
(10, 'dependente10', '2005-04-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Matricula` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Data_nasc` date NOT NULL,
  `Nacionalidade` varchar(20) NOT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Estado_civil` varchar(20) NOT NULL,
  `Rg` varchar(20) NOT NULL,
  `Cic` varchar(20) NOT NULL,
  `Endereco` varchar(20) NOT NULL,
  `Telefone` varchar(20) NOT NULL,
  `Dt_Admissao` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`Matricula`, `Nome`, `Data_nasc`, `Nacionalidade`, `Sexo`, `Estado_civil`, `Rg`, `Cic`, `Endereco`, `Telefone`, `Dt_Admissao`) VALUES
(1, 'Bianca Farias da Silva', '2006-08-24', 'Brasileira', 'Feminino', 'Solteira', '01.000.000-0', '296.657.928-57', 'Rio campanha 75', '(11)94522-7342', '2005-11-14'),
(2, 'nome01', '2000-08-24', 'Brasileiro', 'Feminino', 'Casada', '13.000.001-3', '130.000.000-13', 'endereço1', 'telefone1', '2018-11-14'),
(3, 'nome02', '1999-08-24', 'Brasileiro', 'Masculino', 'Casado', '02.000.000-2', '002.000.000-02', 'endereço02', 'telefone02', '2018-12-11'),
(4, 'nome03', '1981-02-06', 'Brasileira', 'Feminino', 'Divorciada', '03.000.000-3', '003.000.000-03', 'endereço03', 'telefone03', '2005-08-09'),
(5, 'nome04', '1980-09-09', 'Brasileiro', 'Masculino', 'Solteiro', '04.000.000-4', '004.000.000-04', 'endereço04', 'telefone04', '2008-04-04'),
(6, 'nome05', '2000-07-17', 'Brasileira', 'Feminino', 'Solteira', '05.000.000-5', '005.000.000-05', 'endereço05', 'telefone05', '2019-09-08'),
(7, 'nome06', '2001-09-01', 'Brasileiro', 'Masculino', 'Casado', '06.000.000-6', '006.000.000-06', 'endereço06', 'telefone06', '2020-05-05'),
(8, 'nome07', '2002-02-02', 'Brasileiro', 'Masculino', 'Casado', '07.000.000-7', '007.000.000-07', 'endereço07', 'telefone07', '2020-09-08'),
(9, 'nome08', '1987-11-09', 'Brasileira', 'Feminino', 'Viúva', '08.000.000-8', '008.000.000-08', 'endereço08', 'telefone08', '2000-06-06'),
(10, 'nome09', '2003-06-05', 'Brasileira', 'Feminino', 'Casada', '09.000.000-9', '009.000.000-09', 'endereço09', 'telefone09', '2022-02-03'),
(11, 'nome010', '1976-10-12', 'Brasileira', 'Feminino', 'Casada', '10.000.001-0', '010.000.000-10', 'endereço010', 'telefone010', '1999-09-10'),
(12, 'nome011', '1970-12-13', 'Brasileiro', 'Masculino', 'Divorciado', '11.000.001-1', '011.000.000-11', 'endereço011', 'telefone011', '1990-12-05'),
(13, 'nome012', '1990-12-04', 'Brasileiro', 'Masculino', 'Solteiro', '12.000.001-2', '012.000.000-12', 'endereço012', 'telefone012', '2011-09-05'),
(14, 'nome014', '1986-11-11', 'Brasileira', 'Feminino', 'Solteira', '14.000.001-4', '014.000.000-14', 'endereço014', 'telefone014', '1997-12-11'),
(15, 'Edna Rodrigues', '1998-12-04', 'Brasileira', 'Feminino', 'Casada', '12.345.678-9', '987.654.321-00', 'Av. Águia de Haia 29', '(11)91234-5678', '2022-05-24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lotacao`
--

CREATE TABLE `lotacao` (
  `Matricula` int(11) NOT NULL,
  `Codigo_Depto` int(6) NOT NULL,
  `Dt_Inicio` date NOT NULL,
  `Dt_Fim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lotacao`
--

INSERT INTO `lotacao` (`Matricula`, `Codigo_Depto`, `Dt_Inicio`, `Dt_Fim`) VALUES
(0, 1, '2019-01-05', '2021-05-01'),
(0, 2, '2019-02-20', '2021-02-05'),
(0, 3, '2018-06-05', '2020-03-28'),
(0, 4, '2019-12-12', '2022-02-03'),
(0, 5, '2015-09-08', '2019-04-02'),
(0, 6, '2019-03-03', '2020-11-16'),
(0, 7, '2017-09-30', '2018-01-21'),
(0, 8, '2018-11-20', '2019-01-03'),
(0, 9, '2016-10-11', '2021-09-11'),
(0, 10, '2013-09-04', '2022-03-05'),
(0, 11, '2020-03-26', '2022-02-12'),
(0, 12, '2019-02-08', '2020-09-27'),
(0, 13, '2011-09-10', '2021-12-09'),
(0, 14, '2020-05-12', '2020-11-14'),
(0, 15, '0000-00-00', '2020-03-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocupacao`
--

CREATE TABLE `ocupacao` (
  `Matricula` int(11) NOT NULL,
  `Codigo_Cargo` int(6) NOT NULL,
  `Dt_Inicio` date NOT NULL,
  `Dt_Fim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ocupacao`
--

INSERT INTO `ocupacao` (`Matricula`, `Codigo_Cargo`, `Dt_Inicio`, `Dt_Fim`) VALUES
(15, 8, '2019-01-05', '2021-05-01'),
(1, 5, '2019-02-20', '2021-02-05'),
(2, 10, '2018-06-05', '2020-03-28'),
(3, 2, '2019-12-12', '2022-02-03'),
(4, 4, '2015-09-08', '2019-04-02'),
(5, 3, '2019-03-03', '2020-11-16'),
(6, 9, '2017-09-30', '2018-01-21'),
(7, 6, '2018-11-20', '2019-01-03'),
(8, 1, '2016-10-11', '2021-09-11'),
(9, 5, '2013-09-04', '2022-03-05'),
(10, 10, '2020-03-26', '2022-02-12'),
(11, 7, '2019-02-08', '2020-09-27'),
(12, 3, '2011-09-10', '2021-12-09'),
(13, 9, '2020-05-12', '2020-11-14'),
(14, 7, '0000-00-00', '2020-03-02');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`Codigo_Cargo`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Codigo_Depto`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`Matricula`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `Matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Banco de dados: `exemplocurso`
--
CREATE DATABASE IF NOT EXISTS `exemplocurso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exemplocurso`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET latin1 NOT NULL,
  `estoque` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `estoque`) VALUES
(1, 'Corretivo', 30),
(2, 'Batom', 40),
(3, 'Rimel', 60),
(4, 'Delineador', 50),
(5, 'Pó translúcido teste', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(20) NOT NULL,
  `senha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`) VALUES
('biancafariassf', 123),
('ajlimaa', 456),
('giovannasilvagx', 789),
('bportugal', 12);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

