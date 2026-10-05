# Documentar un caso de acceso directo a una capacidad subyacente

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-04 (must)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RNF-04 Extensibilidad
- **Restricciones:** caso verificable.

**Historia de usuario**

Como usuario del framework, quiero un ejemplo de acceso directo a una biblioteca, para
saber que puedo salir del framework cuando lo necesite.

**Descripción técnica**

Documentación de un caso concreto en el que la aplicación accede a un tipo o una capa
de la biblioteca subyacente (por ejemplo, `axum`, `tower` o `tonic`) sin pasar por la
abstracción.

**Justificación**

Un caso documentado es la prueba de que la capa no encierra al usuario.

**Criterios de aceptación**

- [ ] hay al menos un caso documentado
- [ ] el caso usa una capacidad de la biblioteca subyacente
