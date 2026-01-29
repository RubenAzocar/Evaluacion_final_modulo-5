// ============================================================================
// EJECUTOR DE CONSULTAS SQL INTERACTIVO
// Evaluación Final Módulo 5 - Teleseries
// ============================================================================

// Función para ejecutar consultas SQL simuladas
function executeQuery(button, queryId) {
    const resultsDiv = document.getElementById('results-' + queryId);

    // Cambiar estado del botón
    button.textContent = '⏳ Ejecutando...';
    button.classList.add('executing');
    button.disabled = true;

    // Simular ejecución de la consulta
    setTimeout(() => {
        // Generar y mostrar resultados
        generateQueryResults(queryId, resultsDiv);

        // Mostrar resultados
        resultsDiv.classList.add('show');

        // Scroll suave hacia los resultados
        resultsDiv.scrollIntoView({ behavior: 'smooth', block: 'nearest' });

        // Cambiar estado del botón
        button.textContent = '✓ Ejecutado';
        button.classList.remove('executing');
        button.classList.add('executed');
        button.disabled = false;

        // Restaurar botón después de 3 segundos
        setTimeout(() => {
            button.textContent = '▶ Ejecutar SQL';
            button.classList.remove('executed');
        }, 3000);
    }, 1500); // Simular 1.5 segundos de ejecución
}

// Función para generar resultados HTML de cada consulta
function generateQueryResults(queryId, container) {
    let html = '';

    switch (queryId) {
        case 'query1':
            html = `
                <h4>Resultados de la Ejecución</h4>
                <div class="execution-log">
                    <p>→ Ejecutando INNER JOIN entre tablas...</p>
                    <p>✓ Comparando nombres de actores...</p>
                    <p>✓ 6 actores encontrados en ambas teleseries</p>
                    <p style="color: #00ff00; font-weight: bold;">✓ Consulta ejecutada exitosamente</p>
                </div>

                <h5>Actores que Participaron en Ambas Teleseries:</h5>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre Actor</th>
                            <th>Sueldo Soltera Otra Vez</th>
                            <th>Sueldo Papi Ricky</th>
                            <th>Suma Total Sueldos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Alejandro Trejo</td>
                            <td>55</td>
                            <td>65</td>
                            <td><strong>120</strong></td>
                        </tr>
                        <tr>
                            <td>Grimanesa Jiménez</td>
                            <td>60</td>
                            <td>60</td>
                            <td><strong>120</strong></td>
                        </tr>
                        <tr>
                            <td>Héctor Morales</td>
                            <td>80</td>
                            <td>50</td>
                            <td><strong>130</strong></td>
                        </tr>
                        <tr>
                            <td>Luis Gnecco</td>
                            <td>95</td>
                            <td>75</td>
                            <td><strong>170</strong></td>
                        </tr>
                        <tr>
                            <td>Silvia Santelices</td>
                            <td>55</td>
                            <td>85</td>
                            <td><strong>140</strong></td>
                        </tr>
                        <tr>
                            <td>Tamara Acosta</td>
                            <td>60</td>
                            <td>100</td>
                            <td><strong>160</strong></td>
                        </tr>
                    </tbody>
                </table>

                <div class="alert alert-success">
                    <strong>Análisis:</strong> Se identificaron 6 actores que trabajaron en ambas producciones. Luis Gnecco obtuvo la mayor suma de sueldos con 170 unidades.
                </div>
            `;
            break;

        case 'query2':
            html = `
                <h4>Resultados de la Ejecución</h4>
                <div class="execution-log">
                    <p>→ Ejecutando LEFT JOIN para encontrar exclusivos...</p>
                    <p>✓ Filtrando actores solo en Soltera Otra Vez...</p>
                    <p>✓ Aplicando condición sueldo > 90...</p>
                    <p>✓ 5 actores encontrados</p>
                    <p style="color: #00ff00; font-weight: bold;">✓ Consulta ejecutada exitosamente</p>
                </div>

                <h5>Actores Exclusivos de "Soltera Otra Vez" con Sueldo > 90:</h5>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre Actor</th>
                            <th>Temporadas</th>
                            <th>Protagónico</th>
                            <th>Sueldo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Paz Bascuñán</td>
                            <td>3</td>
                            <td>✓ Sí</td>
                            <td><strong>100</strong></td>
                        </tr>
                        <tr>
                            <td>Pablo Macaya</td>
                            <td>3</td>
                            <td>✓ Sí</td>
                            <td><strong>100</strong></td>
                        </tr>
                        <tr>
                            <td>Cristián Arriagada</td>
                            <td>3</td>
                            <td>✓ Sí</td>
                            <td><strong>95</strong></td>
                        </tr>
                        <tr>
                            <td>Loreto Aravena</td>
                            <td>3</td>
                            <td>✓ Sí</td>
                            <td><strong>95</strong></td>
                        </tr>
                        <tr>
                            <td>Cristián Arriagada</td>
                            <td>3</td>
                            <td>✓ Sí</td>
                            <td><strong>95</strong></td>
                        </tr>
                    </tbody>
                </table>

                <div class="alert alert-info">
                    <strong>Nota:</strong> Todos los actores con sueldo mayor a 90 que solo participaron en "Soltera Otra Vez" son protagónicos y estuvieron en las 3 temporadas.
                </div>
            `;
            break;

        case 'query3':
            html = `
                <h4>Resultados de la Ejecución</h4>
                <div class="execution-log">
                    <p>→ Ejecutando FULL OUTER JOIN...</p>
                    <p>✓ Identificando actores en una sola teleserie...</p>
                    <p>✓ Aplicando filtro sueldo < 85...</p>
                    <p>✓ 9 actores encontrados</p>
                    <p style="color: #00ff00; font-weight: bold;">✓ Consulta ejecutada exitosamente</p>
                </div>

                <h5>Actores con Sueldo < 85 en Una Sola Teleserie:</h5>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre Actor</th>
                            <th>Teleserie</th>
                            <th>Sueldo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Aranzazú Yankovic</td>
                            <td>Soltera Otra Vez</td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>Julio González</td>
                            <td>Soltera Otra Vez</td>
                            <td>75</td>
                        </tr>
                        <tr>
                            <td>Antonella Orsini</td>
                            <td>Soltera Otra Vez</td>
                            <td>70</td>
                        </tr>
                        <tr>
                            <td>Ignacio Garmendia</td>
                            <td>Soltera Otra Vez</td>
                            <td>70</td>
                        </tr>
                        <tr>
                            <td>Solange Lackington</td>
                            <td>Soltera Otra Vez</td>
                            <td>70</td>
                        </tr>
                        <tr>
                            <td>Remigio Remedy</td>
                            <td>Papi Ricky</td>
                            <td>60</td>
                        </tr>
                        <tr>
                            <td>María Paz Grandjean</td>
                            <td>Papi Ricky</td>
                            <td>55</td>
                        </tr>
                        <tr>
                            <td>César Caillet</td>
                            <td>Papi Ricky</td>
                            <td>40</td>
                        </tr>
                        <tr>
                            <td>Manuel Aguirre</td>
                            <td>Papi Ricky</td>
                            <td>30</td>
                        </tr>
                    </tbody>
                </table>

                <div class="alert alert-info">
                    <strong>Distribución:</strong> 5 actores de "Soltera Otra Vez" y 4 actores de "Papi Ricky" cumplen con el criterio de sueldo inferior a 85.
                </div>
            `;
            break;

        case 'query4':
            html = `
                <h4>Resultados de la Ejecución</h4>
                <div class="execution-log">
                    <p>→ Ejecutando consulta en modelo normalizado...</p>
                    <p>✓ JOIN: teleseries ← reparto_actores → actores</p>
                    <p>✓ Filtrando solo actores protagónicos...</p>
                    <p>✓ 32 registros encontrados</p>
                    <p style="color: #00ff00; font-weight: bold;">✓ Consulta ejecutada exitosamente</p>
                </div>

                <h5>Teleseries y Actores Protagónicos (Modelo Normalizado):</h5>
                <table>
                    <thead>
                        <tr>
                            <th>Teleserie</th>
                            <th>Actor</th>
                            <th>Sueldo</th>
                            <th>Participación</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td rowspan="8"><strong>Papi Ricky</strong></td>
                            <td>Jorge Zabaleta</td>
                            <td>100</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>Belén Soto</td>
                            <td>100</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>Tamara Acosta</td>
                            <td>100</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>María Elena Swett</td>
                            <td>100</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>Juan Falcón</td>
                            <td>95</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>Silvia Santelices</td>
                            <td>85</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>Leonardo Perucci</td>
                            <td>85</td>
                            <td>135 capítulos</td>
                        </tr>
                        <tr>
                            <td>... (10 actores más)</td>
                            <td>...</td>
                            <td>...</td>
                        </tr>
                        <tr>
                            <td rowspan="8"><strong>Soltera Otra Vez</strong></td>
                            <td>Paz Bascuñán</td>
                            <td>100</td>
                            <td>3 temporadas</td>
                        </tr>
                        <tr>
                            <td>Pablo Macaya</td>
                            <td>100</td>
                            <td>3 temporadas</td>
                        </tr>
                        <tr>
                            <td>Cristián Arriagada</td>
                            <td>95</td>
                            <td>3 temporadas</td>
                        </tr>
                        <tr>
                            <td>Loreto Aravena</td>
                            <td>95</td>
                            <td>3 temporadas</td>
                        </tr>
                        <tr>
                            <td>Luis Gnecco</td>
                            <td>95</td>
                            <td>3 temporadas</td>
                        </tr>
                        <tr>
                            <td>Josefina Montané</td>
                            <td>90</td>
                            <td>2 temporadas</td>
                        </tr>
                        <tr>
                            <td>Lorena Bosch</td>
                            <td>90</td>
                            <td>2 temporadas</td>
                        </tr>
                        <tr>
                            <td>... (8 actores más)</td>
                            <td>...</td>
                            <td>...</td>
                        </tr>
                    </tbody>
                </table>

                <div class="alert alert-success">
                    <strong>Modelo Normalizado:</strong> Esta consulta demuestra el funcionamiento del modelo entidad-relación con relación muchos a muchos (N:M) entre actores y teleseries.
                </div>
            `;
            break;

        default:
            html = '<p>Consulta no encontrada.</p>';
    }

    container.innerHTML = html;
}
