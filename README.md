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
proyecto/
├── index.html                             # Portafolio web interactivo
├── assets/
│   ├── css/
│   │   └── styles.css                     # Estilos personalizados
│   ├── js/
│   │   └── query-executor.js              # Motor de ejecución de consultas
│   └── img/
│       └── diagrama.svg                   # Diagrama ER visual SVG
├── sql/
│   ├── complemento evaluacion módulo 5.sql  # Datos iniciales
│   ├── Parte_1_Join.sql                   # Consultas con JOIN
│   └── Parte_2_modelo_entidad_relacion.sql  # Modelo normalizado
├── ScreenShots/
│   ├── Parte 1_ Joints/
│   └── Parte_2_-modelo_entidad_relacion/
├── diagrama.md                            # Documentación del diagrama ER
└── README.md                              # Documentación principal
```

### 🎨 Tecnologías Web Utilizadas

- **HTML5**: Estructura semántica moderna
- **CSS3**: Estilos personalizados con gradientes y animaciones
- **JavaScript ES6+**: Interactividad y simulación de consultas
- **Bootstrap 5**: Framework CSS responsive
- **Bootstrap Icons**: Iconografía profesional

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
- **Papi Ricky**: 17 actores
- 6 actores compartidos entre ambas teleseries

## 🌐 Portafolio Web Interactivo

Este proyecto incluye un **mini sitio web interactivo** que presenta la evaluación de forma profesional y navegable.

### Características:

- **📱 Diseño Responsive**: Adaptable a todos los dispositivos con Bootstrap 5
- **🎨 Interfaz Moderna**: Diseño con gradientes, animaciones CSS3 y Bootstrap Icons
- **🔄 Navegación por Tabs**: 6 secciones organizadas e intuitivas
- **▶️ Ejecución Simulada**: Botones interactivos para ejecutar consultas SQL
- **📋 Copiar Código**: Funcionalidad de clipboard para copiar código SQL
- **📊 Tablas de Resultados**: Visualización dinámica de resultados de consultas
- **🎭 Diagrama SVG**: Diagrama entidad-relación visual e interactivo
- **♿ Accesibilidad**: Diseño conforme a estándares web modernos

### Secciones del Sitio:

1. **Resumen**: Descripción general del proyecto y estadísticas
2. **Diagrama ER**: Visualización del modelo entidad-relación
3. **Datos Iniciales**: Estructura de las tablas originales
4. **Parte 1: JOINs**: Consultas SQL con diferentes tipos de JOIN
5. **Parte 2: Modelo ER**: Modelo normalizado y consultas avanzadas
6. **Evidencias**: Enlaces a capturas de pantalla y GitHub

### Arquitectura del Sitio:

- **Separación de responsabilidades**: HTML, CSS y JavaScript en archivos independientes
- **Assets organizados**: Carpetas separadas para estilos, scripts e imágenes
- **CDN para Bootstrap**: Carga optimizada de librerías externas
- **Código limpio y comentado**: Fácil mantenimiento y escalabilidad

### Cómo Usar el Portafolio:

1. Abre el archivo `index.html` en cualquier navegador web moderno
2. Navega entre las pestañas para ver diferentes secciones
3. Haz clic en los botones "▶ Ejecutar SQL" para ver resultados simulados
4. Usa los botones "📋 Copiar" para copiar código SQL al portapapeles

## 🎓 Competencias Desarrolladas

### SQL y Bases de Datos:
- ✅ Consultas SQL complejas
- ✅ Tipos de JOIN (INNER, LEFT, FULL OUTER)
- ✅ Diseño de bases de datos relacionales
- ✅ Normalización de datos
- ✅ Constraints y claves foráneas
- ✅ Diagramas entidad-relación

### Desarrollo Web:
- ✅ HTML5 semántico
- ✅ CSS3 moderno (Flexbox, Grid, Animaciones)
- ✅ JavaScript ES6+ (Funciones arrow, Template literals)
- ✅ Bootstrap 5 Framework
- ✅ Diseño responsive
- ✅ Arquitectura de archivos moderna

## 👤 Autor

Evaluación desarrollada como parte del Curso Fullstack - Talento Digital

---

**Fecha de entrega**: Módulo 5 - Bases de Datos Relacionales
# Evaluacion_final_modulo-5
