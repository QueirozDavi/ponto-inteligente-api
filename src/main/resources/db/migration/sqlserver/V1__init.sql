CREATE TABLE empresa (
	id bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
	cnpj varchar(255) NOT NULL,
	data_atualizacao datetime NOT NULL,
	data_criacao datetime NOT NULL,
	razao_social varchar(255) NOT NULL
);

CREATE TABLE funcionario (
 	id bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
 	cpf varchar(255) NOT NULL,
  	data_atualizacao datetime NOT NULL,
  	data_criacao datetime NOT NULL,
  	email varchar(255) NOT NULL,
  	nome varchar(255) NOT NULL,
  	perfil varchar(255) NOT NULL,
  	qtd_horas_almoco float DEFAULT NULL,
  	qtd_horas_trabalho_dia float DEFAULT NULL,
  	senha varchar(255) NOT NULL,
  	valor_hora decimal(19,2) DEFAULT NULL,
  	empresa_id bigint FOREIGN KEY REFERENCES empresa(id)
);

CREATE TABLE lancamento (
  id bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
  data datetime NOT NULL,
  data_atualizacao datetime NOT NULL,
  data_criacao datetime NOT NULL,
  descricao varchar(255) DEFAULT NULL,
  localizacao varchar(255) DEFAULT NULL,
  tipo varchar(255) NOT NULL,
  funcionario_id bigint FOREIGN KEY REFERENCES funcionario(id)
);