/* Insert thème */
INSERT INTO themes (id, name, description, created_at, updated_at)
VALUES
(1, 'Frontend', 'La salle du restaurant', '2025-06-13 12:05','2025-06-13 13:10'),
(2, 'Backend', 'La cuisine', '2025-06-13 12:10','2025-06-13 12:45'),
(3, 'Base de données', 'Le garde-manger / frigo du restaurant','2025-06-13 12:05','2025-06-13 13:10'),
(4, 'DevOps', 'Le gestionnaire du restaurant et son organisation', '2025-06-13 08:30','2025-06-13 23:30');

INSERT INTO resources (id, type, title, description, url, is_ada, theme_id, created_at, updated_at)
VALUES
(1, 'guide', 'introduction à React', 'Guide officiel React', 'https://react.dev',  false, 1, '2025-06-13 12:05','2025-06-13 12:05'),
(2,  'video', 'SQL pour débutant', 'Cours SQL complet','https://example.com/sql', true, 3, '2025-08-18 12:05','2025-08-18 12:05'),
(3, 'exercice', 'Exercices JavaScript', 'Pratique JS', 'https://example.com/js',  true, 1,'2025-12-01 12:05','2025-12-01 12:05'),
(4, 'project', 'Créer une API en node', 'Projet node', 'https://example.com/node',  false, 2,'2025-02-28 12:05','2025-02-28 12:05');

INSERT INTO skills (id, name)
VALUES
(1, 'JavaScript'),
(2, 'React'),
(3, 'SQL'),
(4, 'PostgreSQL'),
(5, 'Node.js');

INSERT INTO resources_skills (resources_id, skill_id)
VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,1),
(4,1),
(4,5);