Use T_OpFlix

Select * from Usuarios
Select * from Permissoes
Select * from Tipo
Select * from Categoria
Select * from Lancamentos
Select * from Plataformas
Select DISTINCT Lancamentos.Titulo, Lancamentos.DataLancamento, Categoria.Nome As Categoria , Tipo.Nome As Tipo From Lancamentos 
join Categoria on Lancamentos.IdCategoria = Categoria.IdCategoria join Tipo on Lancamentos.IdTipo = Tipo.IdTipo;

Exec ListarFilmesPorCategoriaId 5
Exec ListarFilmesPorCategoriaNome 'A��o'
Exec ContarFilmesPorCategoriaId 6
Exec ContarFilmesPorCategoriaNome 'A��o'

Select * from vwGenerosPlataformas

Select COUNT(*) AS QntdUsuarios from Usuarios

CREATE PROCEDURE ListarFilmesPorCategoriaId @IdCategoria Int
AS Select * from Lancamentos Where IdCategoria = @IdCategoria;

CREATE PROCEDURE ListarFilmesPorCategoriaNome @Categoria Varchar(15)
AS Select * from Lancamentos join Categoria on Lancamentos.IdCategoria = Categoria.IdCategoria Where Categoria.Nome = @Categoria;

CREATE PROCEDURE ContarFilmesPorCategoriaId @IdCategoria Int
AS Select COUNT(*) from Lancamentos Where IdCategoria = @IdCategoria

CREATE PROCEDURE ContarFilmesPorCategoriaNome @Categoria Varchar(15)
AS Select COUNT(*) from Lancamentos join Categoria on Lancamentos.IdCategoria = Categoria.IdCategoria Where Categoria.Nome = @Categoria


CREATE VIEW vwGenerosPlataformas
AS Select P.Nome AS Plataforma, C.Nome As Genero from Lancamentos L join Categoria C on L.IdCategoria = C.IdCategoria join Plataformas P on P.IdPlataforma = L.Plataforma
