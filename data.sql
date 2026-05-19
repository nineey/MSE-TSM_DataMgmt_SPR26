CREATE TABLE passenger (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    money INTEGER NOT NULL CHECK (money >= 0),
    skill TEXT,
    allergy TEXT
);

CREATE TABLE plane (
    id SERIAL PRIMARY KEY,
    model TEXT NOT NULL,
    fuel_level NUMERIC(5,2) NOT NULL
);

CREATE TABLE meal (
    id SERIAL PRIMARY KEY,
    plane_id INTEGER NOT NULL
        REFERENCES plane(id),
    name TEXT NOT NULL,
    contains TEXT
);

CREATE TABLE airport (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    distance INTEGER NOT NULL CHECK (distance >= 0)
);

INSERT INTO passenger (name, money, skill, allergy)
VALUES
('Marco Zeller', 1200, 'first aid', NULL),
('Sandra Kluge', 3400, 'navigation', 'gluten'),
('Tomas Berger', 800, NULL, 'nuts'),
('Lina Fischer', 5200, 'mechanics', NULL),
('Reto Ammann', 150, 'cooking', 'dairy'),
('Julia Hartmann', 2750, 'first aid', 'shellfish'),
('Niklas Stein', 1100, NULL, NULL),
('Aisha Mirza', 4100, 'electronics', 'eggs');

INSERT INTO plane (model, fuel_level)
VALUES
('Airbus A320', 62.50),
('Boeing 737', 45.30),
('Embraer E190', 78.10);

INSERT INTO meal (plane_id, name, contains)
VALUES
(1, 'Grilled Chicken Wrap', 'gluten'),
(1, 'Vegetable Curry', NULL),
(1, 'Salmon Teriyaki', 'shellfish'),
(1, 'Fruit Plate', NULL),
(2, 'Beef Lasagna', 'gluten,dairy'),
(2, 'Thai Green Curry', 'nuts'),
(2, 'Caesar Salad', 'eggs,dairy'),
(3, 'Mushroom Risotto', 'dairy'),
(3, 'Grilled Tofu Bowl', NULL),
(3, 'Pancakes with Berries', 'gluten,eggs,dairy');

INSERT INTO airport (name, distance)
VALUES
('SQL Island', 0),
('G.F.L. Charles', 224),
('Maurice Bishop', 612),
('Princess Juliana', 305),
('Piarco', 688),
('Argyle Internati.', 843),
('Clayton J. Lloyd', 621),
('Miami Internat.', 1860);
