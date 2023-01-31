- - Jhulyellen Santos 

- - crud para as seguintes entidades:

- - cliente(id, nome, email, telefone)
- - veiculo(id, placa, ano, marca, id_cliente)
- - funcionario(id, nome, funcao, salario, matricula, status_funcionario)

- - professor@profadevairvitorio



- - criar uma base de dados

CREATE DATABASE empresa_locacao;


- - conectar na base de dados

USE empresa_locacao;


- - criar as tabelas e adicionar o id automático

a) clientes:

CREATE TABLE clientes(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telefone VARCHAR(12)
);


b) veiculos:

CREATE TABLE veiculos(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	placa VARCHAR(8) NOT NULL,
	ano INTEGER NOT NULL,
	marca VARCHAR(30),
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);


c) funcionarios:

CREATE TABLE funcionarios(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	funcao VARCHAR(8) NOT NULL,
	salario DOUBLE NOT NULL,
	matricula INTEGER,
	status_funcionario INTEGER NOT NULL
);


- - inserir dados na base de dados usando o comando INSERT

1. clientes: total 3

INSERT INTO clientes (nome, email, telefone) VALUES ("Joãozinho", "joao@uol.com", "27999885586");
INSERT INTO clientes (nome, email, telefone) VALUES ("Adevair", "adevair@mysql.com.br", "2799997965");
INSERT INTO clientes (nome, email, telefone) VALUES ("Odeio Bando de dados da silva", "mysql@mysql.com.br", "27999969965");

2. veiculos: total 3

INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("OKP-5558", 2022, "Gol", 1);
INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("JKL-5569", 2022, "Honda", 2);
INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("ADE-1234", 2022, "Gol", 3);

3. funcionarios: total 3

LEGENDA PARA status_funcionario: 0 - Inativo | 1 - Ativo

INSERT INTO funcionarios (nome,funcao,salario,matricula,status_funcionario) VALUES("Augusto","Gerente",5.502,12468,1);
INSERT INTO funcionarios (nome,funcao,salario,matricula,status_funcionario) VALUES("Beijamin","Vendedor",1.212,38476,0);
INSERT INTO funcionarios (nome,funcao,salario,matricula,status_funcionario) VALUES("Bethoven","Gerente",6.708,78969,1);


- - criar consultas usando o comando SELECT

a) clientes:

1. todos os campos de todos os clientes:

SELECT * FROM clientes;


2. email do cliente com id = 2:

SELECT email FROM clientes WHERE id=2;


3. todos os nomes dos clientes:

SELECT nome FROM clientes;

4. todos os emails e telefones dos clientes:

SELECT email,telefone FROM clientes;


extra: Lista telefônica

SELECT nome,telefone FROM clientes;


b) veiculos:

todos os campos de todos os veículos:

SELECT * FROM veiculos;


2. placa do veículo de id = 3:

SELECT placa FROM veiculos WHERE id = 3;


3. todas as placas dos veículos:

SELECT placa FROM veiculos;


4. todos os veículos do cliente com id=1:

SELECT * FROM veiculos WHERE id_cliente = 1;



c) funcionarios:

1. todos os funcionários:

SELECT * FROM funcionarios;


2. todos os funcionários ativos:

SELECT * FROM funcionarios WHERE status_funcionario = 1;


3. matricula de todos os funcionários:

SELECT matricula FROM funcionarios;


4. função e salário de todos os funcionários:

SELECT funcao, salario FROM funcionarios;


Extra: função, salário e status de todos os funcionários ativos:

SELECT funcao, salario, status_funcionario FROM funcionarios WHERE status_funcionario = 1;


- - atualizar os registro existentes usando o comando UPDATE

1. clientes

Atualize o nome do cliente de id = 6 para “Cliente Atualizado de Oliveira”:

UPDATE clientes SET nome = "Cliente Atualizado de Oliveira" WHERE id = 6;


2. veiculos 

Atualize o ano do veículo do cliente de id = 6 para 1997:

UPDATE veiculos SET ano = 1997 WHERE id_cliente = 6;


3. funcionarios

Atualize o nome do funcionário de id = 3 para “Amo Crud”:

UPDATE funcionarios SET nome = "Amp Crud" WHERE id = 3;


- - deletar alguns registros usando o comando DELETE

a) veiculos:

1. apagar o veículo de id = 2:

DELETE FROM veiculos WHERE id = 2;


2. apagar todos os veículos do cliente com id = 1:

DELETE FROM veiculos WHERE id_cliente = 1;


3. apagar todos os veículos:

DELETE FROM veiculos WHERE TRUE;


b) clientes:

1. apagar o cliente de id = 1:

DELETE FROM clientes WHERE id=1 ;


2. apagar todos os clientes com nome = “Adevair”:

DELETE FROM clientes WHERE nome = "Adevair";


3. apagar todos os clientes:

DELETE FROM clientes WHERE TRUE;


c) funcionarios:

1. apague o funcionário de id = 1:

DELETE FROM funcionarios WHERE id = 1;


2. apague todos os funcionários inativos:

DELETE FROM funcionarios WHERE status_funcionario = 0;


- - fim






