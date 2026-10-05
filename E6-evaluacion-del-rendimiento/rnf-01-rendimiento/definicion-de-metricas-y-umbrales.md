# Definición de métricas y umbrales

- **Tipo:** tarea
- **Objetivo:** OE-4
- **Categoría:** evaluación
- **Prioridad:** heredada de RNF-01 (must)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RNF-01 Rendimiento
- **Restricciones:** umbrales definidos antes de medir.

**Objetivo de la tarea**

Fijar las métricas y el margen antes de medir, para no interpretar los resultados a
conveniencia.

**Descripción técnica**

Latencia p50, p95 y p99, y throughput; margen del 5 % por métrica, con la latencia p95
≤ 1,05 × base y el throughput ≥ 0,95 × base; regla de cumplimiento: ambas métricas
dentro del margen en los tres escenarios. Se distingue entre una diferencia
estadísticamente significativa y una degradación relevante.

**Producto esperado**

Especificación del benchmark con las métricas, los umbrales y la regla de aceptación.

**Justificación**

Un umbral ambiguo no permite decidir si el requisito se cumple.

**Criterios de aceptación**

- [ ] las métricas primarias y secundarias están definidas
- [ ] el margen por métrica está fijado
- [ ] la regla de cumplimiento está escrita
- [ ] se declara que el cumplimiento se decide por el margen y no por la significancia
