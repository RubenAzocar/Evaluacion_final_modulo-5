# Evaluación Final - Módulo 5

## 📋 Descripción

Evaluación final del Módulo 5 del curso Fullstack de Talento Digital, enfocada en bases de datos relacionales con PostgreSQL. El proyecto trabaja con datos de dos teleseries chilenas: "Soltera Otra Vez" y "Papi Ricky".

## 🎯 Objetivos

Esta evaluación demuestra competencias en:
- Consultas SQL con JOINs
- Diseño de modelos entidad-relación
- Normalización de bases de datos
- Operaciones CRUD
- Relaciones muchos a muchos

## 📁 Estructura del Proyecto

```
├── complemento evaluacion módulo 5.sql    # Datos iniciales (tablas y registros)
├── Parte_1_Join.sql                       # Consultas con JOIN
├── Parte_2_modelo_entidad_relacion.sql    # Modelo normalizado
├── diagrama.md                            # Diagrama entidad-relación
└── README.md                              # Documentación del proyecto
```

## 📝 Contenido de la Evaluación

### Parte 1: Consultas con JOIN

Implementación de consultas SQL utilizando diferentes tipos de JOIN:

1. **Actores en ambas teleseries**: Muestra actores que participaron en las dos teleseries con la suma de sus sueldos
2. **Actores exclusivos**: Obtiene actores que solo participaron en "Soltera Otra Vez" con sueldo > 90
3. **Actores con sueldo bajo**: Encuentra actores con sueldo < 85 que actuaron solo en una teleserie

### Parte 2: Modelo Entidad-Relación

Diseño e implementación de un modelo normalizado con:

- **Tabla `actores`**: Información de los actores
- **Tabla `teleseries`**: Información de las teleseries
- **Tabla `reparto_actores`**: Relación muchos a muchos entre actores y teleseries

Incluye:
- Creación de tablas con constraints
- Migración de datos desde las tablas originales
- Consultas sobre el modelo normalizado

## 🗄️ Modelo de Datos

### Diagrama Entidad-Relación

```
ACTORES (1) ──────< REPARTO_ACTORES >────── (1) TELESERIES
```

**Cardinalidad**: Relación muchos a muchos (N:M)
- Un actor puede participar en múltiples teleseries
- Una teleserie puede tener múltiples actores

## 🚀 Cómo Usar

### Prerrequisitos

- PostgreSQL instalado
- Cliente SQL (pgAdmin, DBeaver, o psql)

### Ejecución

1. **Cargar datos iniciales**:
   ```sql
   \i 'complemento evaluacion módulo 5.sql'
   ```

2. **Ejecutar Parte 1 - Consultas JOIN**:
   ```sql
   \i 'Parte_1_Join.sql'
   ```

3. **Ejecutar Parte 2 - Modelo Normalizado**:
   ```sql
   \i 'Parte_2_modelo_entidad_relacion.sql'
   ```

## 📊 Datos de Ejemplo

El proyecto incluye datos de:
- **Soltera Otra Vez**: 19 actores
- **Papi Ricky**: 10 actores
- Actores compartidos entre ambas teleseries

## 🎓 Competencias Desarrolladas

- ✅ Consultas SQL complejas
- ✅ Tipos de JOIN (INNER, LEFT, UNION)
- ✅ Diseño de bases de datos relacionales
- ✅ Normalización de datos
- ✅ Constraints y claves foráneas
- ✅ Diagramas entidad-relación

## 👤 Autor

Evaluación desarrollada como parte del Curso Fullstack - Talento Digital

---

**Fecha de entrega**: Módulo 5 - Bases de Datos Relacionales
# Evaluacion_final_modulo-5
