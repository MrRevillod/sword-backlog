# Mapeo de errores por transporte

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-14 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-14 Manejo uniforme de errores
- **Restricciones:** un error de dominio, varias salidas.

**Historia de usuario**

Como usuario del framework, quiero declarar una vez cómo se expone un error, para que
cada protocolo lo presente a su manera.

**Descripción técnica**

Conversión de un error de dominio al estatus y los detalles de cada transporte (por
ejemplo, un código HTTP o un estado gRPC con detalles enriquecidos).

**Justificación**

Sin un mapeo central, cada handler traduce el mismo error por su cuenta.

**Criterios de aceptación**

- [ ] cada error de dominio se mapea al estatus del transporte
- [ ] gRPC admite detalles enriquecidos
- [ ] el handler no escribe la traducción
