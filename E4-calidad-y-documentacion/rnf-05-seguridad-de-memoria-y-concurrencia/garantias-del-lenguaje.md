# Verificar que se conservan las garantías del lenguaje

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-05 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RNF-05 Seguridad de memoria y concurrencia
- **Restricciones:** sin recolector de basura.

**Historia de usuario**

Como usuario del framework, quiero que la composición siga verificada por el
compilador, para no perder la seguridad al usarla.

**Descripción técnica**

Comprobación de que la composición y el estado compartido usan las garantías de
propiedad y tipos del lenguaje, sin añadir un recolector de basura.

**Justificación**

La composición es justo donde se podría relajar la seguridad si el framework
introdujera atajos.

**Criterios de aceptación**

- [ ] el estado compartido se construye sobre las garantías del lenguaje
- [ ] no se introduce un recolector de basura
