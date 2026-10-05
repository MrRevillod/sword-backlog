# [RF-10] Manejo de eventos externos

- **Tipo:** requerimiento · **ID:** RF-10
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** could
- **Esfuerzo:** L
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RF-09
- **Restricciones:** no acoplar a un proveedor.

**Relación con los objetivos específicos**

OE-2 — Extiende el manejo de eventos a fuentes externas bajo el mismo modelo.

**Historia de usuario**

Como usuario del framework, quiero consumir eventos de colas o streams externos con el
mismo modelo que los internos, para integrar mensajería sin cambiar la forma de
procesar.

**Descripción técnica**

Controladores de eventos para fuentes externas (Kafka, Iggy) bajo una capa de
abstracción común basada en SeaStreamer.

**Justificación**

Si el modelo dependiera del proveedor, la aplicación se acoplaría a una infraestructura
concreta.

**Criterios de aceptación**

- [ ] un controlador procesa mensajes de una fuente externa
- [ ] el resultado se reporta a la fuente
- [ ] un mensaje confirmado no se reentrega
