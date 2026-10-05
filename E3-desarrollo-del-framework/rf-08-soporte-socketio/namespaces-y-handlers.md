# Namespaces y handlers declarativos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-08 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-08 Soporte Socket.IO
- **Restricciones:** requiere servidor HTTP.

**Historia de usuario**

Como usuario del framework, quiero declarar un namespace y sus eventos, para atender
la conexión en tiempo real.

**Descripción técnica**

Controlador Socket.IO que declara un namespace común y asocia cada evento a un método.

**Justificación**

Extiende el modelo declarativo al canal bidireccional.

**Criterios de aceptación**

- [ ] un namespace declara sus eventos
- [ ] cada evento atiende una conexión real
