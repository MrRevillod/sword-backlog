# Registros de acceso HTTP y gRPC

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-15 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-15 Observabilidad
- **Restricciones:** configurables.

**Historia de usuario**

Como operador, quiero un registro de acceso por solicitud, para ver el tráfico y los
errores sin instrumentar la aplicación.

**Descripción técnica**

Registros de acceso para HTTP y gRPC, con filtros y niveles configurables.

**Justificación**

Instrumentar cada aplicación a mano duplica trabajo y se olvida con facilidad.

**Criterios de aceptación**

- [ ] HTTP produce un registro de acceso por solicitud
- [ ] gRPC produce un registro de acceso por solicitud
- [ ] el nivel y los filtros se configuran
