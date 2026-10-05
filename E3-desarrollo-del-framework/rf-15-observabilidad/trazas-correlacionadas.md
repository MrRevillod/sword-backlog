# Trazas correlacionadas por solicitud

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-15 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-15 Observabilidad
- **Restricciones:** correlación por identificador de solicitud.

**Historia de usuario**

Como operador, quiero seguir una solicitud por todo su recorrido, para saber dónde se
detuvo o falló.

**Descripción técnica**

Asignación de un identificador por solicitud y trazas correlacionadas a lo largo del
procesamiento.

**Justificación**

Una solicitud sin identificador es imposible de rastrear entre registros.

**Criterios de aceptación**

- [ ] cada solicitud recibe un identificador
- [ ] las trazas de esa solicitud comparten el identificador
