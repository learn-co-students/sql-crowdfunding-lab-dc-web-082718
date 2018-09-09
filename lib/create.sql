CREATE TABLE projects(
    title text,
    category text,
    funding_goal REAL,
    start_date text,
    end_date text,
    id INTEGER primary key
);

CREATE TABLE users (
    name text,
    age integer,
    id INTEGER primary key
);

CREATE TABLE pledges (
    id INTEGER PRIMARY KEY,
    amount REAL,
    user_id INTEGER,
    project_id INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id)
    FOREIGN KEY(project_id) REFERENCES projects(id)
);
