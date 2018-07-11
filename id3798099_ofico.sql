-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Jul-2018 às 13:28
-- Versão do servidor: 10.2.12-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3798099_ofico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `oficio`
--

CREATE TABLE `oficio` (
  `id` int(11) NOT NULL,
  `assunto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia` date NOT NULL,
  `texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `responsavel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diretor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `destinatario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `orgao` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oficio`
--

INSERT INTO `oficio` (`id`, `assunto`, `dia`, `texto`, `responsavel`, `diretor`, `destinatario`, `orgao`, `endereco`) VALUES
(1, '', '2018-02-28', 'testando aplicação', 'guilherme frossard', '', 'comandante', '', ''),
(2, '', '2018-02-28', 'À Secretaria de Saneamento Município de (cidade) - (UF)  (nome), (nacionalidade), (estado civil), (profissão), inscrito(a) no CPF sob o nº (informar) e no RG nº (informar), residente e domiciliado à (rua), nº (número) - (bairro), Cep (CEP), nesta cidade de (município) - (UF), vem respeitosamente à presença de Vossa Senhoria solicitar providências no sentido de que sejam regularizado o serviço de coleta de lixo no Bairro (informar), tendo em vista que a mais de um mês a mesma passou a ser realizada apenas uma vez por semana, trazendo transtornos a todos os moradores.  Certo de que a solicitação será atendida, fique com meus votos de estima e consideração.', 'guilherme frossard', '', 'Adalmir Neres Matos', '', ''),
(3, '', '2018-02-28', 'tefceiro testod e teste', 'guilherme frossard', '', 'Quelasquery', '', ''),
(4, '', '2018-02-28', 'quarto teste desse idiota , cansando já ', 'guilherme frossard', '', 'treta', '', ''),
(5, '', '2018-03-08', 'errado', 'guilherme frossard ', '', 'portaria', '', ''),
(6, '', '2018-03-14', '', 'eu', '', 'alguem', '', ''),
(7, '', '2018-03-14', '', 'eu', '', 'somebody', '', ''),
(8, '', '2018-03-15', '', 'eu', '', 'alguem', '', ''),
(9, '', '2008-03-16', 'dificil essa query', 'nos', '', 'vos', '', ''),
(10, '', '2008-03-16', 'dificil essa query', 'nos', '', 'vos', '', ''),
(11, '', '2018-03-16', 'resolvido se der certo', 'outrem', '', 'qualquer um', '', ''),
(12, '', '2018-04-05', 'Eu amo a Lili de montão', 'Eu', '', 'Liliane', '', ''),
(13, '', '2018-04-06', 'Wegton cantor', 'Adalmir', '', 'Smcel', '', ''),
(14, '', '2018-04-10', 'falei do programa para a Maysa', 'Adalmir', '', 'Smcel', '', ''),
(15, '', '2018-04-11', 'teste do programa', 'adalmir', '', 'Rejane', '', ''),
(16, '', '2018-04-13', 'hojé é sexta -feira', 'Adalmir', '', 'Somebody', '', ''),
(17, 'policiamento', '2018-04-13', 'último teste de hoje', 'Adalmir', '', 'Lucas', '', ''),
(18, 'limpeza praça pioneiros', '2018-04-13', 'Solicitamos de V.Sa. a limpeza da Praça acima citada à partir das 14h do próximo sábado. ', 'Guilherme Frossard', '', 'Carlos M. Ferreira Chaia - Secretário Municipal de Serviços Urbanos', '', ''),
(19, 'Solicita McDonalds GRATUITO', '2018-04-13', 'Solicitamos de V.Sa. a limpeza da Praça acima citada à partir das 14h do próximo sábado. ', 'Guilherme Frossard', '', 'Kevin Nilton - Diretor de Cultura', '', ''),
(20, 'solicita', '2018-04-13', 'para Belu', 'Guilherme Frossard', '', 'Chaia - smo', '', ''),
(21, 'solicita', '2018-04-16', 'um desenvolvedor competente', 'Guilherme Frossard Filho', 'Kevin Nilton dos Santos', 'Alguém', 'tu', 'rua dos bobos'),
(22, 'Solicitação', '2018-04-17', 'Praça dos Pioneiros', 'Guilherme Frossard', 'Kevin Newton dos Santos', 'Secretario Comunicação', 'SECOM', 'PREFEITUTA'),
(23, 'Ligação de Provisória', '2018-04-19', 'Solicitamos de V.Sas. a ligação de uma provisória bifásica no seguinte endereço: Av. Brasil, 2920, no dia 29 de maio de 2018. Sem mais para o momento, agradecemos a atenção.', 'Guilherme Frossard Filho', 'Clero Jr', 'Carlos Maia Ferreira Chaia', 'Secretaria Municipal de Obras', 'R. Aluísio Esteves, 53 - Lourdes, Gov. Valadares - MG, 35032-010'),
(24, 'Solicitação', '2018-04-20', 'Tinta para teatro atiaia', 'Eu', 'Kevin', 'Mercadão das cores', 'Empresa', 'Rua são paulo'),
(25, 'Solicitação ', '2018-04-20', 'Solicito transporte', 'Mirianje ', 'Guilherme', 'Smed', 'Prefeitura ', 'Av Nacle Milguel Habib'),
(26, 'Solicitação', '2018-04-20', 'Venho por meio deste, solicitar do Sr. Adalmir Neres de Matos...', 'Secretário', 'Kevin', 'Departamento de Cultura', 'SMCEL', 'Av. Brasil'),
(27, 'Solicita empréstimo de quadra', '2018-04-24', 'Tendo em vista a realização dos Jogos escolares de Minas Gerais-JEMG/2018, venho por meio deste solicitar a cessão do ginásio coberto desta entidade para realização de jogos desta competição.', 'Guilherme Frossard Filho', 'Rosely Conceição Oliveira', 'Serviço Social do Comércio', 'Sesc-GV', 'Avenida Veneza, 766 - Bairro Grã Duquesa'),
(28, 'Solicita', '2018-04-28', 'Camisa Verde clara', 'Adakmir', 'Lincoln ', 'Lagar', 'Empresa', 'Israel  Pinheiro '),
(29, 'Dia da Mulher Brasileira', '2018-05-10', 'com cordiais cumprimentos', 'Guilherme Frossard Filho', 'Kevin Nilto santos figueiredo', 'Hannah', 'smcel', 'a'),
(30, 'solicita', '2018-05-30', 'técnico informática', 'Guilherme Frossard Filho', 'Kevin Nilton', 'Informática Prefeitura', 'smcel', 'av brasil'),
(31, 'solicita', '2018-07-04', 'banheiro quimico', 'triade', 'namaste', 'sala', 'indrustir', 'CÍCERO SIQUEIRA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oficio`
--
ALTER TABLE `oficio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oficio`
--
ALTER TABLE `oficio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
