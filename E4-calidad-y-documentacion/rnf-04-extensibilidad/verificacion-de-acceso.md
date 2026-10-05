# Verificar que el framework no impide el acceso

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-04 (must)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RNF-04 Extensibilidad
- **Restricciones:** sin capas que bloqueen.

**Historia de usuario**

Como usuario del framework, quiero que nada me bloquee el acceso a la biblioteca de
base, para no quedar atado a la abstracción.

**Descripción técnica**

Comprobación de que los tipos y las capas de las bibliotecas subyacentes siguen
exportados y utilizables desde una aplicación Sword.

**Justificación**

Si el framework ocultara las bibliotecas, la vía de escape no existiría.

**Criterios de aceptación**

- [ ] los tipos subyacentes son accesibles desde la aplicación
- [ ] una capa de la biblioteca se puede usar junto al framework
