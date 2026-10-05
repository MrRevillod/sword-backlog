# Interceptores tipados por transporte

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-12 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-12 Interceptores y capas transversales
- **Restricciones:** por transporte.

**Historia de usuario**

Como usuario del framework, quiero interceptar solicitudes antes del handler, para
aplicar lógica común como autenticación.

**Descripción técnica**

Trait de interceptor con acceso a la solicitud y a la respuesta, aplicado según el
transporte (web, gRPC o Socket.IO).

**Justificación**

Centraliza el comportamiento transversal sin repetirlo por handler.

**Criterios de aceptación**

- [ ] un interceptor declarado se ejecuta antes del handler
- [ ] puede modificar o cortar la solicitud
- [ ] funciona por transporte
