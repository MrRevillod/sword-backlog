# Registrar el error por tracing

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-05 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-05 Errores de arranque claros
- **Restricciones:** solo si hay logging activo.

**Historia de usuario**

Como usuario del framework, quiero que el diagnóstico quede en el log, para revisarlo
después.

**Descripción técnica**

Emisión del diagnóstico a través de `tracing` cuando hay un subscriber activo, y por
salida estándar cuando no.

**Justificación**

Un fallo que no queda registrado se vuelve difícil de rastrear.

**Criterios de aceptación**

- [ ] con logging activo, el diagnóstico se registra por `tracing`
- [ ] sin logging activo, el diagnóstico se emite igual
