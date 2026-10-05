# [RF-07] Soporte gRPC

- **Tipo:** requerimiento · **ID:** RF-07
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-01, RF-02
- **Restricciones:** requiere contrato Protobuf.

**Relación con los objetivos específicos**

OE-2 — Es el segundo mecanismo del modelo común; su reutilización de componentes con
HTTP es central para OE-3.

**Historia de usuario**

Como usuario del framework, quiero controladores de servicio gRPC, para comunicar
servicios con contratos definidos y buen rendimiento.

**Descripción técnica**

Controladores de servicio gRPC declarados bajo el mismo modelo de módulos y
componentes.

**Justificación**

La comunicación entre servicios con contratos tipados es habitual en sistemas
distribuidos.

**Criterios de aceptación**

- [ ] un servicio gRPC declarado responde una llamada
- [ ] comparte el modelo de composición con HTTP
