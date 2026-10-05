# Estado compartido a través del contenedor

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-02 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-02 Contenedor de inyección de dependencias
- **Restricciones:** acceso por tipo.

**Historia de usuario**

Como usuario del framework, quiero un estado accesible desde cualquier componente,
para compartir configuración y recursos.

**Descripción técnica**

`State` con `insert`/`get`/`borrow` por `TypeId`, accesible desde cualquier
componente.

**Justificación**

Evita pasar dependencias manualmente por toda la aplicación.

**Criterios de aceptación**

- [ ] `insert`/`get`/`borrow` funcionan por tipo
- [ ] lo insertado al arrancar se lee desde cualquier componente
- [ ] un tipo no insertado produce un error claro
