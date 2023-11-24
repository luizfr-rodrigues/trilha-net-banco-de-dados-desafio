USE FIlmes
GO

--1
SELECT
  Nome,
  Ano
FROM Filmes

--2
SELECT
  Nome,
  Ano,
  Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Nome LIKE '%de volta para o futuro%'

--4
SELECT
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Duracao > 100
  AND Duracao < 150
ORDER BY Duracao

--7
SELECT
  Ano,
  Count(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE Genero = 'M'

--9
SELECT
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
  f.Nome, g.Genero
FROM Filmes F
  INNER JOIN FilmesGenero FG ON fg.IdFilme = f.Id
  INNER JOIN Generos G ON g.Id = fg.IdGenero

--11
SELECT
  f.Nome,
  g.Genero
FROM Filmes F
  INNER JOIN FilmesGenero FG ON fg.IdFilme = f.Id
  INNER JOIN Generos G ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

--12
SELECT
  f.Nome,
  a.PrimeiroNome,
  a.UltimoNome,
  e.Papel
FROM Filmes F
  INNER JOIN ElencoFilme E ON e.IdFilme = f.Id
  INNER JOIN Atores A ON a.Id = e.IdAtor