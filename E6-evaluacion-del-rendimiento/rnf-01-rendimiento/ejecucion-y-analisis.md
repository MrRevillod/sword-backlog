# Ejecución, repeticiones y análisis estadístico

- **Tipo:** tarea
- **Objetivo:** OE-4
- **Categoría:** evaluación
- **Prioridad:** heredada de RNF-01 (must)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RNF-01 Rendimiento
- **Restricciones:** diez repeticiones por escenario.

**Objetivo de la tarea**

Ejecutar y analizar las mediciones, para concluir si el requisito se cumple.

**Descripción técnica**

Diez corridas por escenario y variante, descarte de la primera corrida de calentamiento,
mediana con intervalo de confianza del 95 % por remuestreo (bootstrap percentil) y
descarte de las corridas con desviaciones atípicas documentadas. La conclusión se decide
frente al margen, no por la significancia estadística.

**Producto esperado**

Resultados y análisis con la conclusión de cumplimiento.

**Justificación**

Una sola corrida no distingue variación de degradación.

**Criterios de aceptación**

- [ ] se ejecutan diez repeticiones por escenario
- [ ] se reporta la mediana y el análisis de variabilidad
- [ ] se descartan las corridas atípicas documentadas
- [ ] se concluye frente al margen, por relevancia y no por significancia
