# Acknowledgements

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-08 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-08 Soporte Socket.IO
- **Restricciones:** confirmación por evento.

**Historia de usuario**

Como usuario del framework, quiero confirmar la recepción de un evento, para que el
cliente sepa que se procesó.

**Descripción técnica**

Soporte de acknowledgements para los eventos, con confirmación al cliente.

**Justificación**

Sin confirmación, el cliente no sabe si el evento llegó a procesarse.

**Criterios de aceptación**

- [ ] un evento puede devolver confirmación
- [ ] el cliente recibe el resultado del procesamiento
