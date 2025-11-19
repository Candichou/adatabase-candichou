-- Create a new table 'themes' with a primary key and columns
CREATE TABLE themes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP,
    update_at TIMESTAMP
);

-- Create a new table 'resources' with a primary key and columns
CREATE TABLE resources (
    id INTEGER PRIMARY KEY,
    type TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL, 
    url TEXT NOT NULL, 
    is_ada BOOLEAN,
    theme_id INTEGER REFERENCES themes (id),
    created_at TIMESTAMP,
    update_at TIMESTAMP
);

-- Create a new table 'skills' with a primary key and columns
CREATE TABLE skills (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE resources_skills (
    resources_id INTEGER REFERENCES resources(id),
    skill_id INTEGER REFERENCES skills(id) 
)

