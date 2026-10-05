# [RF-16] Caché de respuestas con Redis

- **Tipo:** requerimiento · **ID:** RF-16
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** could
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RF-06, RF-03
- **Restricciones:** requiere Redis.

**Relación con los objetivos específicos**

OE-2 — Mejora la latencia y la carga de endpoints frecuentes.

**Historia de usuario**

Como usuario del framework, quiero cachear respuestas de endpoints, para bajar la
latencia y la carga en consultas frecuentes.

**Descripción técnica**

Caché de respuestas en Redis declarada por endpoint.

**Justificación**

Las consultas repetidas golpean el mismo servicio innecesariamente.

**Criterios de aceptación**

- [ ] una respuesta cacheada se sirve desde Redis sin repetir el cómputo
