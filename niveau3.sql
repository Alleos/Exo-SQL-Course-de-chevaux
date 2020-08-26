Select cheval.nom
FROM cheval, jockey, courseparticipant, course
WHERE courseparticipant.casaque = "bleu cassis"
AND courseparticipant.course_id = course.id
AND courseparticipant.jockey_id = jockey.id
AND jockey.cheval_id = cheval.id


SELECT AVG(cheval.poid)
FROM cheval, jockey, courseparticipant, course
WHERE course.nomprix = "Z Fury"
AND course.id = courseparticipant.course_id
AND courseparticipant.jockey_id = jockey.id
AND jockey.cheval_id = cheval.id

DELETE FROM courseparticipant
WHERE courseparticipant.id = (SELECT id FROM course WHERE nomprix = "Final Strike")
AND courseparticipant.jockey_id = 1

SELECT cheval.nom, cheval.poid
FROM cheval, jockey, courseparticipant, course
WHERE course.nomprix = "Final Strike"
AND course.id = courseparticipant.course_id
AND courseparticipant.jockey_id = jockey.id
AND jockey.cheval_id = cheval.id
ORDER BY cheval.poid ASC