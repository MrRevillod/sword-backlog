# Controladores gRPC declarativos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-07 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-07 Soporte gRPC
- **Restricciones:** contrato Protobuf compilado.

**Historia de usuario**

Como usuario del framework, quiero declarar servicios gRPC como controladores, para no
registrarlos a mano.

**Descripción técnica**

Controlador de servicio gRPC declarado por atributo, que implementa un servicio
generado a partir del archivo `.proto`.

**Justificación**

Mantiene el modelo declarativo también en gRPC.

**Criterios de aceptación**

- [ ] un servicio gRPC declarado responde una llamada
- [ ] cubre solicitud-respuesta y variantes de streaming
