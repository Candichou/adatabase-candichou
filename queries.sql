/* SELECT * FROM themes;
SELECT * FROM resources;
SELECT * FROM skills;
SELECT * FROM resources_skills; */

/* Récupérer la liste des thèmes */
/* SELECT * FROM themes; */

/* Récupérer toutes les ressources triées par date de mise à jour */
/* SELECT *
FROM resources
ORDER BY update_at;  */

/* Récupérer uniquement le nom et l'url des ressources de type exercice */
/* SELECT title, url
FROM resources
WHERE type='exercice'; */

/* Récupérer le titre et la description des ressources d'Ada uniquement */
/* SELECT title, description
FROM resources
WHERE is_ada=TRUE */

/* Récupérer les ressources qui ont la compétence JavaScript associée */
/* SELECT *
FROM resources
JOIN resources_skills ON resources.id = resources_skills.resources_id
JOIN skills ON resources_skills.skill_id = skills.id
WHERE skills.name='JavaScript'; */

/* Récupérer les ressources dont le titre contient le mot "react" (avec ou sans majuscules) */
/* SELECT *
FROM resources
WHERE title ILIKE '%react%'; */

/* ----------BONUUUUS--------------- */

/*  Récupérer la liste des thèmes avec le nombre de ressources par thème */

/* SELECT themes.name, COUNT(resources.id) AS resource_count
FROM themes
LEFT JOIN resources
    ON resources.theme_id = themes.id
GROUP BY themes.name; */

/* Récupérer le nom et l'url de toutes les ressources avec un tableau/liste contenant l'ensemble de leurs skills associés */

SELECT name, url
FROM resources
JOIN resources_skills ON resources.id = resources_skills.resources_id
JOIN skills ON resources_skills.skill_id = skills.id
WHERE skills.name = 'JavaScript';

/* Récupérer les 5 ressources les plus récentes avec leur thème */
/* SELECT *
FROM resources
JOIN themes ON resources.theme_id = themes.id
ORDER BY resources.update_at DESC
LIMIT 5; */

/* Récupérer toutes les compétences qui ne sont associées à aucune ressource */
/* SELECT *
FROM skills
LEFT JOIN resources_skills ON skills.id = resources_skills.skill_id
WHERE resources_skills.resources_id IS NULL; */