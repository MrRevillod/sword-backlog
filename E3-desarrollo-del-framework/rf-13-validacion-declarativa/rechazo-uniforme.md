# Rechazo uniforme de entradas inválidas

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-13 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-13 Validación declarativa
- **Restricciones:** mismo formato de error.

**Historia de usuario**

Como cliente, quiero recibir el mismo error cuando mi entrada es inválida, para
entender qué corregir.

**Descripción técnica**

Mapeo de los errores de validación al formato externo uniforme, con los campos que
fallaron.

**Justificación**

Un rechazo consistente evita que cada endpoint invente su propio error.

**Criterios de aceptación**

- [ ] una entrada inválida produce el formato de error uniforme
- [ ] el error indica los campos que fallaron
