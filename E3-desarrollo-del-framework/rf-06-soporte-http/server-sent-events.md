# Server-Sent Events (SSE)

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-06 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-06 Soporte HTTP
- **Restricciones:** streaming sobre GET.

**Historia de usuario**

Como usuario del framework, quiero emitir eventos en streaming, para notificar
cambios al cliente sin polling.

**Descripción técnica**

Controlador de SSE que sirve `text/event-stream` con `KeepAlive` opcional.

**Justificación**

Cubre un caso habitual de HTTP sin salir del modelo declarativo.

**Criterios de aceptación**

- [ ] un controlador de SSE emite eventos en streaming
- [ ] la respuesta usa `Content-Type: text/event-stream`
- [ ] `KeepAlive` es opcional
- [ ] los eventos siguen el formato `event:`/`data:`
