CREATE TABLE passenger (
    passengerid SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    money INTEGER NOT NULL,
    skill TEXT,
    allergy TEXT
);

CREATE TABLE plane (
    planeid SERIAL PRIMARY KEY,
    model TEXT NOT NULL,
    fuel_level NUMERIC(5,2) NOT NULL,
    fuel_min NUMERIC(5,2) NOT NULL,
    fuel_max NUMERIC(5,2) NOT NULL,
    altitude INTEGER NOT NULL,
    altitude_min INTEGER NOT NULL,
    altitude_max INTEGER NOT NULL,
    cabin_pressure NUMERIC(4,2) NOT NULL,
    cabin_pressure_min NUMERIC(4,2) NOT NULL,
    cabin_pressure_max NUMERIC(4,2) NOT NULL,
    speed INTEGER NOT NULL,
    speed_min INTEGER NOT NULL,
    speed_max INTEGER NOT NULL
);

CREATE TABLE meal (
    mealid SERIAL PRIMARY KEY,
    planeid INTEGER NOT NULL
        REFERENCES plane(planeid),
    name TEXT NOT NULL,
    contains TEXT
);

CREATE TABLE airport (
    airportid SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    distance INTEGER NOT NULL
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

INSERT INTO plane (model, fuel_level, fuel_min, fuel_max, altitude, altitude_min, altitude_max, cabin_pressure, cabin_pressure_min, cabin_pressure_max, speed, speed_min, speed_max)
VALUES
('Airbus A320', 62.50, 10.00, 100.00, 35000, 20000, 42000, 0.85, 0.75, 1.00, 480, 200, 575),
('Boeing 737', 45.30, 10.00, 100.00, 31000, 20000, 41000, 0.82, 0.75, 1.00, 460, 200, 544),
('Embraer E190', 78.10, 10.00, 100.00, 28000, 15000, 39000, 0.88, 0.75, 1.00, 430, 180, 510);

INSERT INTO meal (planeid, name, contains)
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
