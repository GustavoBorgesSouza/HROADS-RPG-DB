USE SENAI_HROADS_MANHA;
GO

--6. Selecionar todos os personagens;
SELECT * FROM personagem;
GO

--7. Selecionar todos as classes;
SELECT * FROM classe;
GO

--8. Selecionar somente o nome das classes;
SELECT nomeClasse 'Nome das classes' FROM classe;
GO

--9. Selecionar todas as habilidades;
SELECT nomeHab Habilidades FROM habilidade;
GO

--10. Realizar a contagem de quantas habilidades est�o cadastradas;
SELECT COUNT(nomeHab) FROM habilidade;
GO

--11. Selecionar somente os id�s das habilidades classificando-os por ordem
--crescente;
SELECT idClasse 'Id da classe' FROM classe
ORDER BY idClasse asc;
GO

--12. Selecionar todos os tipos de habilidades;
SELECT * FROM tipoHabilidade;
GO

--13. Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT nomeHab Habilidade, nomeTipoHab 'Tipo da Habilidade' FROM habilidade
LEFT JOIN tipoHabilidade
ON tipoHabilidade.idTipoHab = habilidade.idTipoHab;
GO

--14. Selecionar todos os personagens e suas respectivas classes;
SELECT idPersonagem 'Id do personagem', nome 'Nome do personagem', nomeClasse 'Nome da Classe', capVida 'Capacidade de vida', capMana 'Capacidade de mana'
FROM personagem
LEFT JOIN classe
ON classe.idClasse = personagem.idClasse;
GO

--15. Selecionar todos os personagens e as classes (mesmo que elas n�o tenham
--correspond�ncia em personagens);
SELECT nome Personagens, nomeClasse Classes FROM personagem
FULL OUTER JOIN classe
ON personagem.idClasse = classe.idClasse;
GO

--16. Selecionar todas as classes e suas respectivas habilidades;
SELECT nomeClasse AS [Nome da classe], nomeHab AS 'Nome da habilidade'
FROM classHab
LEFT JOIN classe 
ON classHab.idClasse = classe.idClasse
LEFT JOIN habilidade
on classHab.idHabilidade =habilidade.idHabilidade;
GO


--17. Selecionar todas as habilidades e suas classes (somente as que possuem
--correspond�ncia);
SELECT nomeClasse, nomeHab From classHab
INNER JOIN classe
ON classe.idClasse = classHab.idClasse
INNER JOIN habilidade
ON habilidade.idHabilidade = classHab.idHabilidade;
GO

--18. Selecionar todas as habilidades e suas classes (mesmo que elas n�o tenham
--correspond�ncia).
SELECT nomeHab 'Nome da habilidade', nomeClasse [Nome da classe]
FROM classHab
FULL OUTER JOIN habilidade
on classHab.idHabilidade =habilidade.idHabilidade
FULL OUTER JOIN classe 
ON classHab.idClasse = classe.idClasse;
GO