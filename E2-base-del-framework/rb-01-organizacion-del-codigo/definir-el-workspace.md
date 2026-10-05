# Definir el workspace y la responsabilidad de cada crate

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-01 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-01 Organización del código en paquetes
- **Restricciones:** un crate por responsabilidad.

**Historia de usuario**

Como equipo de desarrollo, quiero un workspace con un crate por responsabilidad,
para que cada parte tenga un límite claro.

**Descripción técnica**

Definir los crates del workspace, sus nombres y la responsabilidad de cada uno,
desde el núcleo hasta los mecanismos y la fachada.

**Justificación**

Sin límites claros, cualquier responsabilidad termina repartida entre paquetes.

**Criterios de aceptación**

- [ ] cada crate tiene una responsabilidad definida
- [ ] el workspace compila en conjunto
