CREATE DATABASE Livraria DEFAULT CHARSET = utf8;

USE Livraria;

CREATE TABLE Livro(
Id_livro INT AUTO_INCREMENT NOT NULL,
 Livro VARCHAR(100) NOT NULL,
 Autor VARCHAR(50) NOT NULL,
 Sexo_do_autor VARCHAR(15) NOT NULL,
 Numero_de_paginas INT NOT NULL,
 Editora VARCHAR(30) not null,
 Valor_capa_comum DOUBLE NOT NULL,
 Valor_kindle DOUBLE NOT NULL,
 Ano_da_publicacao INT NOT NULL,
 
 PRIMARY KEY(Id_livro)
 )DEFAULT CHARSET = utf8;

INSERT INTO Livro(Livro, Autor, Sexo_do_autor, Numero_de_paginas, Editora, Valor_capa_comum, Valor_kindle, Ano_da_publicacao) 
VALUES('Pai Rico, Pai Pobre', 'Robert T.Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S.Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas','Dale Carnegie','Masculino',256,'Sextate',38.99,33.24,2019),
('A Cabana','Willian P.Young','Masculino',240,'Arqueiro',35.99,17.90,2008),
('O Poder do Hábito','Charles Duhigg','Masculino',408,'Objetiva',42.99,29.90,2012),
('Código Limpo','Robert C.Martin','Masculino',425,'Alta Books',91.99,87.30,2009),
('Essencialismo','Greg McKoewn','Masculino',272,'Sextante',53.58,33.24,2015),
('Me Poupe!','Nathalia Arcuti','Feminino',176,'Sextante',32.86,17.09,2018),
('Comece pelo Porquê','Simon Sinek','Masculino',256,'Sextante',50.58,24.90,2018),
('O Alquimista','Paulo Coelho','Masculino',206,'Paralela',24.70,14.70,2017);

-- Trazer todos os dados
SELECT * FROM Livro;

-- Trazer o nome do livro e o nome da editora
SELECT Livro, Editora FROM Livro;

-- Trazer o nime di livro, editora e autores do sexo masculino
SELECT Livro, Editora, Autor FROM Livro 
WHERE Sexo_do_autor = 'Masculino';

-- Trazer o nome do livro, numero de paginas e autores do sexo feminino
SELECT Livro, Numero_de_paginas, Autor FROM Livro
WHERE Sexo_do_autor = 'Feminino';

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017;
SELECT Autor, Editora, Ano_da_publicacao FROM Livro
WHERE Ano_da_publicacao >= 2017;

-- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books
SELECT Autor, Sexo_do_autor FROM Livro
WHERE Sexo_do_autor = 'Masculino' AND Editora = 'Sextante' OR Editora = 'Alta Books'; 

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
SELECT Livro, Autor, Numero_de_paginas, Editora, Ano_da_publicacao, Valor_capa_comum FROM Livro;

-- Trazer o nome do livro, autor, número de páginas e valor no Kindle
SELECT Livro, Autor, Numero_de_paginas, Valor_kindle FROM Livro;

-- Trazer o nome dos autores com livros publicados pela editora Sextante
SELECT Autor, Livro FROM Livro
WHERE Editora = 'Sextante';

-- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Livro, Autor, Valor_capa_comum, Valor_kindle FROM Livro;

-- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00
SELECT Livro, Autor, Valor_kindle FROM Livro
WHERE Valor_kindle < 40;

-- Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino
SELECT Livro, Autor FROM Livro
WHERE Ano_da_publicacao > 2017 AND Editora = 'Sextante' AND Sexo_do_autor = 'Feminino';

-- Trazer o nome do livro e editora de livros com mais de 200 páginas
SELECT Livro, Editora FROM Livro 
WHERE Numero_de_paginas > 200;

-- Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C"
SELECT Livro, Numero_de_paginas, Autor FROM Livro 
WHERE Autor LIKE 'C%';

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books
SELECT Autor, Editora, Ano_da_publicacao FROM Livro
WHERE Sexo_do_autor = 'Masculino' AND Editora = 'Alta Books';

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00
SELECT Livro, Autor, Numero_de_paginas, Editora, Ano_da_publicacao, Valor_capa_comum FROM Livro
WHERE Valor_capa_comum > 50;

-- Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia
SELECT Livro, Editora, Valor_capa_comum FROM Livro
WHERE Autor like 'Nathalia%';

-- Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017
SELECT Livro, Autor, Numero_de_paginas FROM Livro
WHERE Ano_da_publicacao <= 2017;

-- Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas
SELECT Autor FROM Livro 
WHERE Editora = 'Sextante' AND Numero_de_paginas >= 200;

-- Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante
SELECT Livro, Autor, Valor_capa_comum FROM Livro
WHERE Valor_capa_comum >= 30 AND Editora = 'Sextante';