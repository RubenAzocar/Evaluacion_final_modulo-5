-- ============================================================
-- PARTE 2 - MODELO ENTIDAD RELACIÓN
-- ============================================================

-- DIAGRAMA COMPLETADO:
--
-- TABLA: actores
--   - id_actor (PK, SERIAL)
--   - nombre (VARCHAR(255), NOT NULL, UNIQUE)
--
-- TABLA: teleseries
--   - id_teleserie (PK, SERIAL)
--   - nombre (VARCHAR(255), NOT NULL, UNIQUE)
--   - tipo_medicion (VARCHAR(50)) -- 'temporadas' o 'capitulos'
--
-- TABLA: reparto_actores (Tabla intermedia/relación)
--   - id_reparto (PK, SERIAL)
--   - id_actor (FK -> actores.id_actor)
--   - id_teleserie (FK -> teleseries.id_teleserie)
--   - protagonico (BOOLEAN, NOT NULL)
--   - sueldo (INTEGER)
--   - cantidad (INTEGER) -- número de temporadas o capítulos

-- ============================================================
-- 1. CREACIÓN DE TABLAS
-- ============================================================

-- Eliminar tablas si existen (en orden inverso por dependencias)
DROP TABLE IF EXISTS reparto_actores;
DROP TABLE IF EXISTS teleseries;
DROP TABLE IF EXISTS actores;

-- Tabla actores
CREATE TABLE actores (
    id_actor SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE
);

-- Tabla teleseries
CREATE TABLE teleseries (
    id_teleserie SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE,
    tipo_medicion VARCHAR(50) -- 'temporadas' o 'capitulos'
);

-- Tabla reparto_actores (relación muchos a muchos)
CREATE TABLE reparto_actores (
    id_reparto SERIAL PRIMARY KEY,
    id_actor INTEGER NOT NULL,
    id_teleserie INTEGER NOT NULL,
    protagonico BOOLEAN NOT NULL,
    sueldo INTEGER,
    cantidad INTEGER, -- temporadas o capítulos según la teleserie
    FOREIGN KEY (id_actor) REFERENCES actores(id_actor) ON DELETE CASCADE,
    FOREIGN KEY (id_teleserie) REFERENCES teleseries(id_teleserie) ON DELETE CASCADE,
    UNIQUE(id_actor, id_teleserie) -- Un actor no puede aparecer dos veces en la misma teleserie
);

-- ============================================================
-- 2. INSERCIÓN DE DATOS
-- ============================================================

-- Insertar teleseries
INSERT INTO teleseries (nombre, tipo_medicion) VALUES
    ('Soltera Otra Vez', 'temporadas'),
    ('Papi Ricky', 'capitulos');

-- Insertar actores (sin duplicados)
INSERT INTO actores (nombre) VALUES
    ('Paz Bascuñán'),
    ('Pablo Macaya'),
    ('Cristián Arriagada'),
    ('Josefina Montané'),
    ('Loreto Aravena'),
    ('Lorena Bosch'),
    ('Nicolás Poblete'),
    ('Héctor Morales'),
    ('Aranzazú Yankovic'),
    ('Luis Gnecco'),
    ('Catalina Guerra'),
    ('Solange Lackington'),
    ('Ignacio Garmendia'),
    ('Julio González'),
    ('Antonella Orsini'),
    ('Tamara Acosta'),
    ('Silvia Santelices'),
    ('Alejandro Trejo'),
    ('Grimanesa Jiménez'),
    ('Jorge Zabaleta'),
    ('Belén Soto'),
    ('María Elena Swett'),
    ('Juan Falcón'),
    ('Leonardo Perucci'),
    ('Teresita Reyes'),
    ('Remigio Remedy'),
    ('María Paz Grandjean'),
    ('César Caillet'),
    ('José Tomás Guzmán'),
    ('Manuel Aguirre');

-- Insertar reparto de "Soltera Otra Vez" (id_teleserie = 1)
INSERT INTO reparto_actores (id_actor, id_teleserie, protagonico, sueldo, cantidad) VALUES
    ((SELECT id_actor FROM actores WHERE nombre = 'Paz Bascuñán'), 1, true, 100, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Pablo Macaya'), 1, true, 100, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Cristián Arriagada'), 1, true, 95, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Josefina Montané'), 1, true, 90, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Loreto Aravena'), 1, true, 95, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Lorena Bosch'), 1, true, 90, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Nicolás Poblete'), 1, true, 85, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Héctor Morales'), 1, true, 80, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Aranzazú Yankovic'), 1, true, 80, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Luis Gnecco'), 1, true, 95, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Catalina Guerra'), 1, true, 90, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Solange Lackington'), 1, true, 70, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Ignacio Garmendia'), 1, true, 70, 2),
    ((SELECT id_actor FROM actores WHERE nombre = 'Julio González'), 1, true, 75, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Antonella Orsini'), 1, true, 70, 3),
    ((SELECT id_actor FROM actores WHERE nombre = 'Tamara Acosta'), 1, false, 60, 1),
    ((SELECT id_actor FROM actores WHERE nombre = 'Silvia Santelices'), 1, false, 55, 1),
    ((SELECT id_actor FROM actores WHERE nombre = 'Alejandro Trejo'), 1, false, 55, 1),
    ((SELECT id_actor FROM actores WHERE nombre = 'Grimanesa Jiménez'), 1, false, 60, 1);

-- Insertar reparto de "Papi Ricky" (id_teleserie = 2)
INSERT INTO reparto_actores (id_actor, id_teleserie, protagonico, sueldo, cantidad) VALUES
    ((SELECT id_actor FROM actores WHERE nombre = 'Jorge Zabaleta'), 2, true, 100, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Belén Soto'), 2, true, 100, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Tamara Acosta'), 2, true, 100, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'María Elena Swett'), 2, true, 100, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Juan Falcón'), 2, true, 95, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Silvia Santelices'), 2, true, 85, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Leonardo Perucci'), 2, true, 85, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Teresita Reyes'), 2, true, 80, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Luis Gnecco'), 2, true, 75, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Alejandro Trejo'), 2, true, 65, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Grimanesa Jiménez'), 2, true, 60, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Remigio Remedy'), 2, true, 60, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'María Paz Grandjean'), 2, true, 55, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Héctor Morales'), 2, true, 50, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'César Caillet'), 2, true, 40, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'José Tomás Guzmán'), 2, true, 25, 135),
    ((SELECT id_actor FROM actores WHERE nombre = 'Manuel Aguirre'), 2, true, 30, 135);

-- ============================================================
-- 3. CONSULTA: Mostrar todas las teleseries y actores de reparto
--    (solo protagónicos, no secundarios)
-- ============================================================

SELECT
    t.nombre AS teleserie,
    a.nombre AS actor,
    r.sueldo,
    r.cantidad,
    t.tipo_medicion,
    CASE
        WHEN t.tipo_medicion = 'temporadas' THEN CONCAT(r.cantidad, ' temporadas')
        WHEN t.tipo_medicion = 'capitulos' THEN CONCAT(r.cantidad, ' capítulos')
    END AS participacion
FROM teleseries t
INNER JOIN reparto_actores r ON t.id_teleserie = r.id_teleserie
INNER JOIN actores a ON r.id_actor = a.id_actor
WHERE r.protagonico = true
ORDER BY t.nombre, r.sueldo DESC, a.nombre;
