# [RNF-02] Reducción de la complejidad de integración

- **Tipo:** requerimiento · **ID:** RNF-02
- **Objetivo:** OE-3
- **Categoría:** evaluación
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-01, RF-02
- **Restricciones:** las implementaciones deben ser equivalentes.

**Relación con los objetivos específicos**

OE-3 — Es el beneficio central que la evaluación debe verificar.

**Historia de usuario**

Como usuario del framework, quiero integrar una aplicación con menos composición
explícita y menos propagación de cambios que sobre las librerías puras, para que el
framework cumpla su propósito.

**Descripción técnica**

Comparación de la composición explícita (dependencias directas, puntos de composición y
entradas de configuración), de la propagación del cambio (archivos y ubicaciones
tocadas) y de tareas representativas (tiempo, errores, modificaciones).

**Justificación**

Si no reduce esas medidas, la capa intermedia no se justifica.

**Criterios de aceptación**

- [ ] Sword requiere menos dependencias, puntos de composición y entradas de configuración
- [ ] los cambios se propagan a menos archivos y ubicaciones que en la referencia
- [ ] las tareas representativas no son peores que en la referencia
