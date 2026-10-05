# Referencias de API generadas desde el código

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** documentación
- **Prioridad:** heredada de RF-20 (should)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-20 Documentación y ejemplos
- **Restricciones:** publicadas por release.

**Historia de usuario**

Como usuario del framework, quiero referencias de API siempre actualizadas, para
consultar la interfaz vigente.

**Descripción técnica**

Rustdoc configurado con los metadatos de docs.rs, compilado con todas las features.

**Justificación**

Referencias generadas desde el código no se desactualizan.

**Criterios de aceptación**

- [ ] los crates declaran su documentación
- [ ] docs.rs compila con todas las features
- [ ] las referencias se actualizan en cada release
