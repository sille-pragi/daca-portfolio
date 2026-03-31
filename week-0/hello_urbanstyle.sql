-- Minu esimene UrbanStyle päring
-- Nimi: Sille Pragi
-- Kuupäev: 31.03.2026

-- Loon meeskonnaliikmete tabeli
CREATE TABLE IF NOT EXISTS team_members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    week INT DEFAULT 0,
    joined_at TIMESTAMP DEFAULT NOW()
);

-- Lisan andmed tabelisse
INSERT INTO team_members (name, role, week)
VALUES ('Sille Pragi', 'Data Analyst', 0);
INSERT INTO team_members (name, role, week)
VALUES ('Toomas Kask', 'IT Director', 0);
INSERT INTO team_members (name, role, week)
VALUES ('Kristi Tamm', 'CEO', 0);
INSERT INTO team_members (name, role, week)
VALUES ('Anna Mets', 'Marketing Lead', 0);

-- Vaatan tulemust
SELECT * FROM team_members ORDER BY joined_at;
