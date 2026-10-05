# ApplicationBuilder y registro de módulos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-06 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-06 Ensamblaje y arranque de la aplicación
- **Restricciones:** encadenable.

**Historia de usuario**

Como usuario del framework, quiero registrar mis módulos en el arranque, para que sus
piezas queden disponibles.

**Descripción técnica**

`ApplicationBuilder::with_module::<M>()` registra controladores, componentes y
proveedores del módulo, de forma encadenable.

**Justificación**

Conecta la declaración del módulo con el montaje real de la aplicación.

**Criterios de aceptación**

- [ ] `with_module::<M>()` registra las tres categorías
- [ ] varios módulos se encadenan
- [ ] la app arranca con los módulos registrados
