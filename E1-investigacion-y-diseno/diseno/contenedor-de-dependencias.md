# Diseño del contenedor de dependencias y el estado

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** G-02 Diseño de la arquitectura de Sword
- **Restricciones:** errores de resolución con diagnóstico claro.
- **Label:** planificación

**Objetivo de la tarea**

Definir la construcción de componentes, el registro de proveedores y el estado
compartido.

**Descripción técnica**

Componentes, proveedores, orden topológico, detección de ciclos y estado compartido
por tipo.

**Producto esperado**

Subsección del capítulo con el modelo de contenedor y el diagrama de resolución.

**Justificación**

El contenedor es el mecanismo central de composición y sostiene la reducción de
puntos explícitos.

**Criterios de aceptación**

- [ ] el orden de construcción está especificado
- [ ] la detección de ciclos tiene un error definido
- [ ] el estado compartido queda especificado
