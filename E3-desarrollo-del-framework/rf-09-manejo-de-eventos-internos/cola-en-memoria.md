# Cola en memoria con publicación y suscripción

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-09 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-09 Manejo de eventos internos
- **Restricciones:** cola acotada.

**Historia de usuario**

Como usuario del framework, quiero publicar eventos y que otros los procesen, para
desacoplar el trabajo de la respuesta.

**Descripción técnica**

Cola en memoria con buffer acotado, publicación de eventos y suscripción por
controladores de eventos.

**Justificación**

Es la base del procesamiento diferido dentro de la aplicación.

**Criterios de aceptación**

- [ ] un evento publicado llega a su suscriptor
- [ ] la cola respeta su capacidad configurada
