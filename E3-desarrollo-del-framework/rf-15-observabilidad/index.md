# [RF-15] Observabilidad

- **Tipo:** requerimiento · **ID:** RF-15
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** could
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** opcional.

**Relación con los objetivos específicos**

OE-2 — Preocupación transversal de monitoreo; aporta evidencia para la validación en
producción (OE-5).

**Historia de usuario**

Como operador, quiero trazas y registros estructurados, para monitorear y correlacionar
las solicitudes.

**Descripción técnica**

Trazas y registros estructurados correlacionados por solicitud.

**Justificación**

Sin trazabilidad es difícil saber dónde falla una solicitud en producción.

**Criterios de aceptación**

- [ ] las solicitudes generan trazas y registros correlacionados
