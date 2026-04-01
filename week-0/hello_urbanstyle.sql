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

-- Kustutan topelt saanud read

DELETE FROM team_members
WHERE id BETWEEN 82 AND 89;

-- Vaatan uuesti muudetud tabelit
SELECT * FROM team_members ORDER BY joined_at;

-- Kuna dublikaate ehk korduseid on lisatud liiga palju
-- Siis arvutan kõigepealt dublikaatide arvu
SELECT 
    COUNT(*) AS ridu_kokku, 
    COUNT(DISTINCT name) AS unikaalseid_nimesid,
    COUNT(*) - COUNT(DISTINCT name) AS duplikaatide_arv
FROM team_members;

-- Sain, et dublikaate on 16
-- Kuna week-0 ja week-1 ma ei muuda andmeid, vaid ainult analüüsin
-- Siis valin ainult id 1-5
SELECT *
FROM team_members
WHERE id BETWEEN 1 AND 5;