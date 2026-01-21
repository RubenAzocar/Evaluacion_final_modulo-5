-- ============================================================
-- PARTE 1 - CONSULTAS CON JOIN
-- ============================================================

-- 1. Obtener todos los actores que participaron en ambas teleseries,
--    el sueldo que obtuvieron en cada una y la suma de ambos sueldos,
--    ordenado por el nombre del actor.

SELECT
    s.nombre,
    s.sueldo AS sueldo_soltera_otra_vez,
    p.sueldo AS sueldo_papi_ricky,
    (s.sueldo + p.sueldo) AS suma_sueldos
FROM reparto_soltera_otra_vez s
INNER JOIN reparto_papi_ricky p ON s.nombre = p.nombre
ORDER BY s.nombre;


-- 2. Obtener todos los actores que participaron exclusivamente en
--    "Soltera Otra Vez", con un sueldo mayor a 90.

SELECT
    s.nombre,
    s.temporadas,
    s.protagonico,
    s.sueldo
FROM reparto_soltera_otra_vez s
LEFT JOIN reparto_papi_ricky p ON s.nombre = p.nombre
WHERE p.nombre IS NULL
  AND s.sueldo > 90
ORDER BY s.sueldo DESC;


-- 3. Obtener solo los actores con sueldo inferior a 85 que actuaron en
--    cualquiera de las dos teleseries, pero no en las dos.

-- Actores de Soltera Otra Vez con sueldo < 85 que NO están en Papi Ricky
SELECT
    s.nombre,
    'Soltera Otra Vez' AS teleserie,
    s.sueldo
FROM reparto_soltera_otra_vez s
LEFT JOIN reparto_papi_ricky p ON s.nombre = p.nombre
WHERE p.nombre IS NULL
  AND s.sueldo < 85

UNION

-- Actores de Papi Ricky con sueldo < 85 que NO están en Soltera Otra Vez
SELECT
    p.nombre,
    'Papi Ricky' AS teleserie,
    p.sueldo
FROM reparto_papi_ricky p
LEFT JOIN reparto_soltera_otra_vez s ON p.nombre = s.nombre
WHERE s.nombre IS NULL
  AND p.sueldo < 85

ORDER BY sueldo DESC, nombre;
