# Implementar las macros de declaración

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-02 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-02 Registro declarativo y automático
- **Restricciones:** las macros viven en un crate separado.

**Historia de usuario**

Como usuario del framework, quiero marcar mis tipos con macros, para que queden
registrados sin escribir el registro.

**Descripción técnica**

Macros procedurales de atributo para declarar controladores, rutas, componentes,
proveedores y capas, que emiten el registro correspondiente.

**Justificación**

La macro es lo que convierte la declaración en registro sin código repetido.

**Criterios de aceptación**

- [ ] las macros declaran cada tipo de elemento
- [ ] el registro se emite sin intervención manual
