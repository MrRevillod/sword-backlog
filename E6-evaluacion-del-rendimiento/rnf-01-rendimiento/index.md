# [RNF-01] Rendimiento

- **Tipo:** requerimiento · **ID:** RNF-01
- **Objetivo:** OE-4
- **Categoría:** evaluación
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RNF-02
- **Restricciones:** equivalencia funcional entre variantes.

**Relación con los objetivos específicos**

OE-4 — Es la propiedad que la evaluación de rendimiento debe verificar.

**Historia de usuario**

Como usuario del framework, quiero que la capa de abstracción tenga un costo de
ejecución acotado frente al uso directo de las librerías, para justificar su adopción.

**Descripción técnica**

Latencia (p50, p95 y p99) y throughput bajo tres niveles de carga (10, 50 y 200
conexiones). La latencia p95 no debe superar en más de un 5 % a la línea base
(≤ 1,05 × base) y el throughput no debe caer por debajo del 95 % (≥ 0,95 × base). Las
dos implementaciones se comparan bajo las mismas condiciones: máquina, versión y
edición de Rust, perfil de compilación, funcionalidades habilitadas y datos de entrada,
con la equivalencia funcional como requisito previo. La herramienta de carga trabaja en
lazo cerrado, con la misma ventana y duración en ambas variantes, y se descartan las
corridas con desviaciones atípicas documentadas.

**Justificación**

Si el costo supera el umbral, el framework pierde su razón de ser.

**Criterios de aceptación**

- [ ] la latencia p95 no supera en más de 5 % a la línea base
- [ ] el throughput no cae por debajo del 95 % de la línea base
- [ ] el margen se cumple en los tres niveles de carga
- [ ] el margen se evalúa con intervalo de confianza y se decide por relevancia, no por significancia
