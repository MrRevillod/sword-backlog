# Pipeline de CI

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-08 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-08 Verificación y publicación continua
- **Restricciones:** cada cambio verificado.

**Historia de usuario**

Como equipo de desarrollo, quiero que cada cambio pase por formato, clippy, pruebas y
documentación, para no integrar código roto.

**Descripción técnica**

Pipeline que verifica formato, clippy, compilación, pruebas y documentación en cada
cambio.

**Justificación**

La verificación uniforme evita que un crate quede sin comprobar.

**Criterios de aceptación**

- [ ] el pipeline corre formato, clippy, compilación, pruebas y documentación
- [ ] un cambio no se integra si el pipeline falla
