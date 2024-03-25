#CRIAÇÃO BANCO#
create database Centro_Cirurgico;

#CRIAÇÃO TABELAS#
create table tbl_especialidades(
cod_especialidades INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 nome_especialidades VARCHAR(100) NOT NULL
);
create table tbl_paciente(
cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(500) NOT NULL,
telefone_paciente VARCHAR(10),
celular_paciente VARCHAR(11) NOT NULL,
email_paciente VARCHAR(100) NOT NULL,
nome_responsavel VARCHAR(500) NOT NULL,
telefone_responsavel VARCHAR(11) NOT NULL
);

#TABELA DE PACIENTE BACKUP#
create table tbl_paciente_bkp(
	cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome_paciente VARCHAR(500) NOT NULL,
    telefone_paciente VARCHAR(11) NOT NULL,
    celular_paciente VARCHAR(11) NOT NULL,
    email_paciente VARCHAR(100) NOT NULL,
    nome_responsavel VARCHAR(500) NOT NULL,
    telefone_responsavel VARCHAR(11) NOT NULL,
    date_delete DATETIME
);

create table tbl_medico(
cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidades INT UNSIGNED NOT NULL,
nome_medico VARCHAR(500) NOT NULL,
telefone_medico VARCHAR(10),
celular_medico VARCHAR(11) NOT NULL,
email_medico VARCHAR(100) NOT NULL
);
create table tbl_insumos(
cod_insumos INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT UNSIGNED NOT NULL,
nome_insumos VARCHAR(100) NOT NULL,
quantidade_insumos DECIMAL (10,2)
);
create table tbl_sala(
cod_sala INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidades INT UNSIGNED NOT NULL,
nro_sala VARCHAR(100) NOT NULL
);
create table tbl_agenda(
cod_agenda INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_sala INT UNSIGNED NOT NULL,
cod_medico INT UNSIGNED NOT NULL,
cod_paciente INT UNSIGNED NOT NULL,
data_cirurgia VARCHAR(10) NOT NULL,
status_cirurgia ENUM('AGENDADO', 'CONCLUIDO', 'CANCELADO')
);


