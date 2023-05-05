create database cargos;
create user cargos;
grant all privileges on cargos.* to cargos;

CREATE TABLE departamento(
	cod_depto INT(3) PRIMARY KEY,
	nome_depto VARCHAR(30)
);

CREATE TABLE funcionario (
	cod_func INT(3) PRIMARY KEY,
	nome_func Varchar(40),
	salario_func DECIMAL(10, 2),
	cargo_func VARCHAR(30),
	cod_depto INT(3),
	comissao_func DECIMAL(10, 2),
	KEY cod_depto (cod_depto),
	FOREIGN KEY (cod_depto) REFERENCES departamento (cod_depto)
);


CREATE TABLE requisicao (
	cod_req INT(3) PRIMARY KEY,
	cod_func INT(3),
	data_req DATE,
	KEY cod_func (cod_func),
	CONSTRAINT FOREIGN KEY (cod_func) REFERENCES funcionario (cod_func)
);

INSERT INTO departamento VALUES (111, 'Administração');
INSERT INTO departamento VALUES (222, 'Gerência');
INSERT INTO departamento VALUES (333, 'Projetos');
INSERT INTO departamento VALUES (123, 'Recursos');
INSERT INTO departamento VALUES (132, 'Pesquisa');


INSERT INTO funcionario VALUES (111, 'Joao', 1000.00, 'Analista de sistemas', 111, 100.00);
INSERT INTO funcionario VALUES (222, 'Ana', 2000.00, 'Vendedor', 222, 200.00);
INSERT INTO funcionario VALUES (333, 'Luis', 3000.00, 'Analista de sistemas', 111, 300.00);
INSERT INTO funcionario VALUES (112, 'Pedro', 1500.00, 'Analista de sistemas', 111, 250.00);
INSERT INTO funcionario VALUES (113, 'Carlos', 1600.00, 'Vendedor', 222, 300.00);
INSERT INTO funcionario VALUES (221, 'Antonio', 1550.00, 'Vendedor', 333, 450.00);
INSERT INTO funcionario VALUES (332, 'José', 1300.00, 'Vendedor', 222, 120.00);
INSERT INTO funcionario VALUES (331, 'Mário', 1600.00, 'Analista de sistemas', 333, 250.00);


INSERT INTO requisicao VALUES (1, 111, '2010/02/01');
INSERT INTO requisicao VALUES (2, 222, '2010/02/15');
INSERT INTO requisicao VALUES (3, 111, '2010/02/10');
INSERT INTO requisicao VALUES (4, 112, '2010/02/12');
INSERT INTO requisicao VALUES (5, 113, '2010/02/11');
INSERT INTO requisicao VALUES (6, 221, '2010/02/10');
INSERT INTO requisicao VALUES (7, 332, '10/02/2010');
INSERT INTO requisicao VALUES (8, 331, '2010/02/10');
INSERT INTO requisicao VALUES (9, 222, '2010/02/12');
INSERT INTO requisicao VALUES (10, 333, '2010/02/13');


/*A)*/ 
SELECT cod_func AS 'Funcionarios com Requisicao'
FROM requisicao;


/*B)*/
SELECT DISTINCT cod_func AS 'Funcionarios com Requisicao'
FROM requisicao;


/*C)*/
SELECT * FROM requisicao;


/*D)*/
SELECT cod_func, nome_func, salario_func
FROM funcionario;


/*E)*/
SELECT nome_depto
FROM departamento;