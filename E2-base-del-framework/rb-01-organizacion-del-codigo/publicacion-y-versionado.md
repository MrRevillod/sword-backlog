# Preparar la publicación y el versionado por crate

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-01 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-01 Organización del código en paquetes
- **Restricciones:** cada crate con su propia versión.

**Historia de usuario**

Como equipo de desarrollo, quiero versionar y publicar cada crate por separado,
para liberar cambios sin arrastrar todo el workspace.

**Descripción técnica**

Metadatos de publicación por crate (nombre, versión, repositorio, documentación) y
gestión de versiones a nivel de workspace.

**Justificación**

Publicar todo junto ataría el ritmo de release de cada mecanismo al resto.

**Criterios de aceptación**

- [ ] cada crate declara sus metadatos de publicación
- [ ] las versiones se gestionan por crate
