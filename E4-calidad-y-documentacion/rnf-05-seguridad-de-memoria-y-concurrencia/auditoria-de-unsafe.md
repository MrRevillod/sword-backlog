# Auditar el uso de unsafe

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-05 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RNF-05 Seguridad de memoria y concurrencia
- **Restricciones:** cualquier uso debe justificarse.

**Historia de usuario**

Como usuario del framework, quiero que no haya código inseguro sin justificar, para
confiar en las garantías del lenguaje.

**Descripción técnica**

Revisión de los crates para detectar usos de `unsafe`; si existe alguno, debe estar
justificado y documentado.

**Justificación**

Un `unsafe` sin justificación reintroduce la clase de errores que Rust elimina.

**Criterios de aceptación**

- [ ] se revisan todos los crates
- [ ] no hay `unsafe` sin justificación documentada
