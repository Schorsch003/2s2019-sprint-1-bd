USE T_SSolve

-- Inserir Clientes na tabela

Insert into Clientes (NomeFantasia,CNPJ,RazaoSocial,Endereco) 
Values ('Aurora Pizzaria','12.586.132/0001-26','Melissa e Aurora Pizzaria Delivery ME','Rua Cl�udio Abramo,678');
Insert into Clientes (NomeFantasia,CNPJ,RazaoSocial,Endereco) 
Values ('Padaria D&S','85170440000140','Daiane e Simone Padaria ME','Rua Capit�o Jorge Dias Velho,265');
Insert into Clientes (NomeFantasia,CNPJ,RazaoSocial,Endereco) 
Values ('A&P Entulhos','54293231000160','Arthur e Pietra Entulhos Ltda','Rua Santo Ant�nio do Aracuai,571');

-- Inserir Servicos na tabela

Insert into Servico Values('Limpeza'),('Conserto');
Insert into Servico Values ('Reposi��o');
Insert into Funcionarios Values ('Jo�o'),('Gabriel'),('Mariana');

-- Inserir Pedidos na tabela

Insert into Pedidos (IdCliente,IdServico,Descricao,Preco,HorarioInicio,HorarioFim) Values (1,2,'Conserto do cano da cozinha',100.00,'2019-08-07T15:00:00' ,CURRENT_TIMESTAMP);
Insert into Pedidos (IdCliente,IdServico,Descricao,Preco,HorarioInicio,HorarioFim) Values (3,3,'Reposi��o da pia do banheiro',150.00,'2019-08-01T12:00:00' ,'2019-08-01T14:00:00');

-- Inserir Funcionarios e Pedidos na tabela intermedi�ria

Insert into FuncionariosPedido (IdFuncionario, IdPedido) Values (2,3),(1,3)
