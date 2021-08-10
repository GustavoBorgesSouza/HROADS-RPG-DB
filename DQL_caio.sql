USE SENAI_HROADS_MANHA;
GO


SELECT nomeClasse Classes FROM classe

SELECT nomeHab Habilidades FROM habilidade

SELECT idClasse 'Id da classe' FROM classe
ORDER BY idClasse

SELECT nomeHab Habilidade, nomeTipoHab 'Tipo da Habilidade' FROM habilidade
LEFT JOIN tipoHabilidade
ON tipoHabilidade.idTipoHab = habilidade.idTipoHab

SELECT nome Personagens, nomeClasse Classes FROM personagem
FULL OUTER JOIN classe
ON personagem.idClasse = classe.idClasse

SELECT nomeClasse, nomeHab From classHab
INNER JOIN classe
ON classe.idClasse = classHab.idClasse
INNER JOIN habilidade
ON habilidade.idHabilidade = classHab.idHabilidade
