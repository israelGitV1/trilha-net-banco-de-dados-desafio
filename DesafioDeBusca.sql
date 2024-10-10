--Selecionar banco
USE Filmes

-- Select Tabelas
SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos

--1-Bunscar o nome e ano dos Filmes
SELECT Nome,Ano FROM Filmes

--2-Buscar o nome e ano dos Filmes,ordenados por ordem crescente pelo ano
SELECT Nome,Ano FROM Filmes
ORDER BY Ano

--3-Buscar pelo filme De volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome,Ano,Duracao FROM Filmes
WHERE Nome = 'de volta para o futuro'

--4-Buscar os filmes lançados em 1997
SELECT Nome,Ano,Duracao FROM Filmes
WHERE Ano = 1997

--5-Buscar os filmes lançados Após o ano 2000
SELECT Nome, Ano, Duracao From Filmes
WHERE Ano > 2000

--6-Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7-Buscar a quantidade de filmes lançadas no ano, agrupando por ano,ordenando pela duracao em ordem decrescente
SELECT Ano,COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8-Buscar os Atores do Gènero masculino, retornando o PrimeiroNome, UltimoNOme
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

--9-Buscar os Atores do gêneor feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10-Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero FG ON Filmes.id = IdFilme 
INNER JOIN Generos ON FG.IdGenero = Generos.Id 

--11-Buscar o nome do filmes e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero FG ON Filmes.id = IdFilme 
INNER JOIN Generos ON FG.IdGenero = Generos.Id 
WHERE Generos.Genero = 'Mistério'

--12-Buscar nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, EF.Papel FROM Filmes 
INNER JOIN ElencoFilme EF ON Filmes.Id = EF.IdFilme
INNER JOIN Atores ON EF.IdAtor = Atores.Id
