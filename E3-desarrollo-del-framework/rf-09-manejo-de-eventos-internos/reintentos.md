# Reintentos configurables

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-09 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-09 Manejo de eventos internos
- **Restricciones:** número de reintentos y espera configurables.

**Historia de usuario**

Como usuario del framework, quiero que un evento que falla se reintente, para no
perder trabajo por un fallo transitorio.

**Descripción técnica**

Reintento del handler hasta un número configurable de veces, con una espera entre
intentos; al agotarlos, el evento se descarta y queda registrado.

**Justificación**

Un fallo transitorio no debería perder el evento.

**Criterios de aceptación**

- [ ] un handler que falla se reintenta
- [ ] el número de reintentos y la espera se configuran
- [ ] un evento agotado queda registrado
