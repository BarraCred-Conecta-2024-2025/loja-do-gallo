USE lojinha;
GO

-- Comandos DML - Data Manipulation Language
-- Inserir dados
INSERT INTO Categoria(Nome, ExibirHome, Foto) VALUES 
('Lazer', 1, 'img/categorias/1.jpg'),   -- 1
('Casa', 1, null);						-- 2

INSERT INTO Produto(
Nome,
Descricao,
QtdeEstoque,
ValorCusto,
ValorVenda,
Destaque,
CategoriaId) VALUES 
('Paleta Sombras Oc�ane Edition 6 Eyeshadow Palette Glorious 7,8g',
'Procurando uma paleta de sombras vers�til e moderna? A 6 Palette Edition Glorious � perfeita para te acompanhar nas makes mais b�sicas e nas mais elaboradas, com cores modernas, muita pigmenta��o e fixa��o.',
6, 20.0, 79.90, 1, 1),
(nome, descricao, qtde, custo, venda, destaque, categoriaid); 

INSERT INTO ProdutoFoto (ProdutoId, Foto, Descricao) VALUES
(1, 'img\produtos\1\1.jpg', null),
(1, 'img\produtos\1\2.jpg', null),
(2, 'img\produtos\2\1.jpg', null);