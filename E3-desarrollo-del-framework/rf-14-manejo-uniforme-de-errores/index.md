# [RF-14] Manejo uniforme de errores

- **Tipo:** requerimiento · **ID:** RF-14
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** el mapeo es interno; el formato externo es de RF-11.

**Relación con los objetivos específicos**

OE-2 — Es el mecanismo interno de traducción de errores; RF-11 fija el formato que ve
el cliente.

**Historia de usuario**

Como usuario del framework, quiero que los errores se mapeen a respuestas o estatus
según el protocolo, para una experiencia consistente.

**Descripción técnica**

Mapeo interno de un mismo error de dominio al estatus o campo correspondiente de cada
transporte.

**Justificación**

Cada transporte expresa los fallos de forma distinta y esa traducción no debería
repetirse en cada handler.

**Criterios de aceptación**

- [ ] un mismo error se mapea al estatus o campo de cada transporte
- [ ] el mapeo no se repite en cada handler
