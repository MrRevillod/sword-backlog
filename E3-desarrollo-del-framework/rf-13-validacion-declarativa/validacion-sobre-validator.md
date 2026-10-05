# Validación sobre el crate validator

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-13 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-13 Validación declarativa
- **Restricciones:** detrás de feature.

**Historia de usuario**

Como usuario del framework, quiero marcar mis estructuras con reglas, para validar la
entrada sin escribir comprobaciones.

**Descripción técnica**

Integración con `validator` sobre las estructuras de entrada, con extracción y
validación del cuerpo, la consulta y los parámetros de ruta.

**Justificación**

Aprovecha una herramienta conocida del ecosistema en vez de imponer una propia.

**Criterios de aceptación**

- [ ] una estructura con reglas se valida antes del handler
- [ ] la validación cubre cuerpo, consulta y ruta
- [ ] el soporte se aísla tras una feature
