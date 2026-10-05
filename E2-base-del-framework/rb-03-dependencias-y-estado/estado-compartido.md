# Exponer el estado compartido por tipo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-03 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-03 Núcleo de dependencias y estado
- **Restricciones:** acceso por tipo.

**Historia de usuario**

Como usuario del framework, quiero un estado accesible desde cualquier componente,
para compartir configuración y recursos.

**Descripción técnica**

`State` con `insert`/`get`/`borrow` por `TypeId`, accesible desde cualquier
componente de la aplicación.

**Justificación**

Evita pasar dependencias manualmente por toda la aplicación.

**Criterios de aceptación**

- [ ] `insert`/`get`/`borrow` funcionan por tipo
- [ ] lo insertado al arrancar se lee desde cualquier componente
- [ ] un tipo no insertado produce un error claro
