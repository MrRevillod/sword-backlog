# Abstracción de fuentes externas

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-10 (could)
- **Esfuerzo:** L
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-10 Manejo de eventos externos
- **Restricciones:** no acoplar a un proveedor.

**Historia de usuario**

Como usuario del framework, quiero una misma forma de consumir distintas fuentes
externas, para cambiar de proveedor sin reescribir el procesamiento.

**Descripción técnica**

Capa de abstracción común (SeaStreamer) que unifica el consumo de fuentes de mensajería
y streaming como Kafka o Iggy.

**Justificación**

Un modelo ligado al proveedor obliga a reescribir la aplicación al cambiar de
infraestructura.

**Criterios de aceptación**

- [ ] la capa abstrae al menos dos fuentes
- [ ] el procesamiento no depende del proveedor
