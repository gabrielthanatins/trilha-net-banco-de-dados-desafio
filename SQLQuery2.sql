--1
SELECT
	Nome,
	Ano
FROM Filmes
--2
SELECT
	Nome,
	Ano
FROM Filmes ORDER BY Ano ASC;
--3
SELECT
	Nome,
	Ano,
	Duracao 
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'
--4
SELECT
	Nome,
	Ano
FROM Filmes WHERE Ano = 1997
--5
SELECT
	Nome,
	Ano
FROM Filmes WHERE Ano > 2000
--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC
--7
SELECT Ano, COUNT(*)AS Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC
--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'
--9
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes 
JOIN Generos ON Filmes.Nome = Filmes.Nome
--11
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM Filmes
JOIN Generos ON Filmes.Nome = Filmes.Nome
WHERE Generos.Genero = 'Mistério'
--12
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id