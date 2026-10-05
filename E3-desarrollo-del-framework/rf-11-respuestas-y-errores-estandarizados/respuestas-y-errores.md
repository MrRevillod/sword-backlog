# Respuestas y errores estandarizados

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-11 (should)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-11 Respuestas y errores estandarizados
- **Restricciones:** formato fijo.

**Historia de usuario**

Como cliente, quiero respuestas con el mismo formato, para parsear la API sin casos
especiales.

**Descripción técnica**

Envoltorio de respuesta con campos fijos (éxito, código, mensaje, marca de tiempo,
datos o error) y alias de resultado para los handlers.

**Justificación**

Un formato estable evita lógica especial en el cliente.

**Criterios de aceptación**

- [ ] toda respuesta exitosa usa el envoltorio
- [ ] los errores se mapean al envoltorio
- [ ] la derivación de errores de la aplicación traduce al formato
- [ ] el formato es consistente entre endpoints
