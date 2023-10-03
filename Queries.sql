--BOOTCAMP DIO / WEX | Desafio 04: Montando Consultas Relacionais no SQL Server 
--github.com/tnlima

--Query 1 - Buscar nome e ano dos filmes
SELECT
Nome, Ano
FROM
Filmes

--Query 2 - Buscar nome e ano, ordenado por ano (crescente)
SELECT
Nome, Ano, Duracao
FROM
Filmes
ORDER BY Ano 

--Query 3 - Buscar filme "De Volta Para o Futuro" (nome, ano e duração)
SELECT
Nome, Ano, Duracao
FROM
Filmes
WHERE Id = 28 

--Query 4 - Filmes lançados em 1997
SELECT
Nome, Ano, Duracao
FROM
Filmes
WHERE Ano = 1997

--Query 5 - Filmes lançados após os ano de 2000
SELECT
Nome, Ano, Duracao
FROM
Filmes
WHERE Ano > 2000

--Query 6 - Filmes com duração >100 e <150, ordenado pela duração (ordem crescente)
SELECT
Nome, Ano, Duracao
FROM
Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--Query 7 - Quantidade de filmes lançados no ano
--          *Agrupar por ano
--          *Ordenado de forma decrescente pela duração 
SELECT Ano, COUNT (Ano) Quantidade
FROM
Filmes
GROUP BY Ano
ORDER BY  Quantidade DESC

--Query 8 - Buscar atores do gênero masculino, retornando o PrimeiroNome e UltimoNome
SELECT
*
FROM
Atores
WHERE Genero = 'M'

--Query 9 - Buscar atores do gênero feminino, retornando o PrimeiroNome e UltimoNome
--          *Ordenar pelo primero nome
SELECT
*
FROM
Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Query 10 - Buscar o nome do filme e o gênero
SELECT 
Nome, 
Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Query 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
Nome, 
Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--Query 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
Nome, 
PrimeiroNome, 
UltimoNome, 
Papel
FROM Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme