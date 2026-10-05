# [RNF-09] Viabilidad en producción

- **Tipo:** requerimiento · **ID:** RNF-09
- **Objetivo:** OE-5
- **Categoría:** evaluación
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RNF-01, RNF-02
- **Restricciones:** plataforma real en operación.

**Relación con los objetivos específicos**

OE-5 — Es la propiedad que la validación en producción debe verificar.

**Historia de usuario**

Como operador, quiero que la solución permanezca operativa bajo uso concurrente real,
para validar su viabilidad.

**Descripción técnica**

Operación de la solución en una plataforma académica de evaluación de estudiantes,
propia y en operación, durante un período mínimo de dos semanas, registrando
disponibilidad, tasa de error y uso concurrente real.

**Justificación**

La evidencia experimental no reemplaza la operación real.

**Criterios de aceptación**

- [ ] la aplicación permanece operativa el período definido (al menos dos semanas)
- [ ] se registran disponibilidad, tasa de error y carga concurrente real
- [ ] la operación de la plataforma no se ve afectada
