# Generación de componentes

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-19 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-19 Generación de proyectos y componentes
- **Restricciones:** plantillas consistentes.

**Historia de usuario**

Como usuario del framework, quiero generar módulos, controladores y proveedores, para
no escribir el esqueleto de cada uno.

**Descripción técnica**

Comandos que generan componentes (módulos, controladores, proveedores) a partir de
plantillas, con la estructura esperada por el framework.

**Justificación**

El esqueleto de cada componente sigue un patrón repetido que conviene automatizar.

**Criterios de aceptación**

- [ ] la CLI genera al menos un módulo y un controlador
- [ ] los archivos generados siguen la estructura del framework
