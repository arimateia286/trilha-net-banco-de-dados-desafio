-- 1 - Buscar o nome e ano dos filmes

SELECT
	Nome,
	Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
-- * Corre��o: Pede apenas Nome e Ano, mas na imagem tamb�m mostra a Duracao,
-- por isso estou seguindo a imagem

SELECT
	*
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- * Correc�o: � para ser ordenado pela Quantidade em ordem decrescente, pela Duracao n�o � poss�vel

SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
-- * Corre��o: Pede para retornar apenas PrimeiroNome e UltimoNome, mas na imagem tamb�m mostra o Genero,
-- ent�o vou fazer de acordo com a imagem

SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
-- * Corre��o: Novamente pede s� PrimeiroNome e UltimoNome, mas na imagem mostra o Genero,
-- ent�o vou fazer de acordo com a imagem

SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero

SELECT
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM ElencoFilme EF
INNER JOIN Filmes F ON EF.IdFilme = F.Id
INNER JOIN Atores A ON EF.IdAtor = A.Id