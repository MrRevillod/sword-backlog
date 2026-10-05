# Diseño del modelo de observabilidad

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** pendiente
- **Pertenece a:** G-02 Diseño de la arquitectura de Sword
- **Restricciones:** correlación por solicitud.
- **Label:** planificación

**Objetivo de la tarea**

Definir el modelo de trazas (_tracing_) incorporado y los registros de HTTP y gRPC.

**Descripción técnica**

Trazas por solicitud, correlación entre traza y registro, y registros de HTTP y gRPC.

**Producto esperado**

Subsección del capítulo con el modelo de trazas y su diagrama.

**Justificación**

La trazabilidad que aporta el framework evita instrumentar cada aplicación y
sostiene la validación en producción.

**Criterios de aceptación**

- [ ] el modelo de trazas está especificado
- [ ] los registros de HTTP y gRPC quedan definidos
- [ ] la correlación por solicitud está resuelta
