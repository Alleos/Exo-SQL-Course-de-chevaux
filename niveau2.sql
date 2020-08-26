SELECT nom from cheval WHERE sexe = "M"

SELECT id FROM jockey WHERE nom = "Midas" AND prenom = "Laurent"

SELECT SUM(distance) FROM course

UPDATE jockey
SET cheval_id = (SELECT id FROM cheval WHERE nom = "Digital Phoenix")
WHERE datenaissance = "5/04/1998