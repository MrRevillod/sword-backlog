# E2 · Base del framework

- **Tipo:** epic
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 1–2
- **Estado:** hecho
- **Contenido:** RB-01 … RB-09

**Relación con los objetivos específicos**

OE-2 — Diseñar, desarrollar y documentar Sword. Esta épica reúne los requisitos base
que sostienen al resto del framework: sin ellos no hay una aplicación que montar.

**Descripción**

Crates del workspace, registro declarativo, contenedor de dependencias y estado,
configuración tipada, errores de arranque, ensamblaje, pruebas de integración,
verificación continua y base de documentación.

**Justificación**

La calidad de la composición depende de que el núcleo resuelva bien el registro, las
dependencias y el arranque. Esta base condiciona todo lo demás.

**Criterios de aceptación**

- [ ] los nueve requisitos base cumplidos
- [ ] una aplicación mínima compila, arranca y se prueba
- [ ] CI y documentación base en funcionamiento
