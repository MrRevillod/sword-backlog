# Controlador de eventos externos con confirmación

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-10 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-10 Manejo de eventos externos
- **Restricciones:** confirmación del consumo.

**Historia de usuario**

Como usuario del framework, quiero que un mensaje procesado se confirme, para que la
fuente no lo reentregue.

**Descripción técnica**

Controlador que consume mensajes de la fuente externa, reporta el resultado y confirma
los procesados.

**Justificación**

Sin confirmación, la fuente reentrega el mensaje y el trabajo se duplica.

**Criterios de aceptación**

- [ ] el controlador procesa mensajes de la fuente
- [ ] el resultado se reporta a la fuente
- [ ] un mensaje confirmado no se reentrega
