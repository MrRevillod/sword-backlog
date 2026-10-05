# Diseño de la arquitectura de crates

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** G-02 Diseño de la arquitectura de Sword
- **Restricciones:** separar núcleo y mecanismos sin dependencias circulares.
- **Label:** planificación

**Objetivo de la tarea**

Definir los crates del workspace, sus responsabilidades y la dirección de
dependencias.

**Descripción técnica**

Crates del workspace, responsabilidades y dirección de dependencias (núcleo hacia
mecanismos).

**Producto esperado**

Subsección del capítulo con la tabla de crates y el diagrama de componentes.

**Justificación**

La separación en crates determina la reutilización y la publicación de cada parte.

**Criterios de aceptación**

- [ ] cada crate tiene una responsabilidad definida
- [ ] la dirección de dependencias queda explícita
- [ ] no hay dependencias circulares
