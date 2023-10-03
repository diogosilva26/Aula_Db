CREATE DATABASE Loja;

USE Loja;

CREATE TABLE Produtos(
ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
NomeProduto VARCHAR(255) NOT NULL,
Descricao VARCHAR(255) NOT NULL,
Preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Comentarios(
ComentarioID INT PRIMARY KEY AUTO_INCREMENT,
ProdutoID INT, 
Autor VARCHAR(255) NOT NULL,
TextoComentario VARCHAR(255) NOT NULL,
DataComentario DATE NOT NULL,
FOREIGN KEY(ProdutoID) REFERENCES Produtos(ProdutoID)
);

INSERT INTO Loja.Produtos(NomeProduto, Descricao, Preco) VALUES 
('Produto1', 'Descrição1', 1.99),
('Produto2', 'Descrição2', 2.99),
('Produto3', 'Descrição3', 3.99),
('Produto4', 'Descrição4', 4.99),
('Produto5', 'Descrição5', 5.99);

INSERT INTO Loja.Comentarios(ProdutoID, Autor, TextoComentario,DataComentario) VALUES 
(1, 'Autor1', 'Texto1', '2019-08-23'),
(2, 'Autor2', 'Texto2', '2018-08-23'),
(1, 'Autor3', 'Texto3', '2017-08-23'),
(1, 'Autor4', 'Texto4', '2016-08-23'),
(5, 'Autor5', 'Texto5', '2015-08-23');

SELECT Produtos.NomeProduto, COUNT(ComentarioID) AS 'Numero de comentarios'
FROM Produtos
INNER JOIN Comentarios ON Produtos.ProdutoID = Comentarios.ProdutoID
GROUP BY Produtos.NomeProduto;

SELECT * FROM Produtos;







