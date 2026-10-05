# Caché de respuestas en Redis

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-16 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-16 Caché de respuestas con Redis
- **Restricciones:** requiere Redis.

**Historia de usuario**

Como usuario del framework, quiero que una respuesta se guarde y se reutilice, para
atender consultas repetidas sin recomputar.

**Descripción técnica**

Almacenamiento de la respuesta en Redis y su reutilización en solicitudes posteriores.

**Justificación**

Recomputar la misma respuesta consume recursos sin aportar valor.

**Criterios de aceptación**

- [ ] una respuesta cacheada se sirve desde Redis
- [ ] el cómputo no se repite mientras la entrada siga vigente
