# [RB-07] Base de pruebas de integración

- **Tipo:** requerimiento · **ID:** RB-07
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 2
- **Estado:** hecho
- **Depende de:** RB-06
- **Restricciones:** datos de prueba fijados y reproducibles.

**Relación con los objetivos específicos**

OE-2 — Verifica el ensamblaje real por transporte; respalda la mantenibilidad
(RNF-07).

**Historia de usuario**

Como equipo de desarrollo, quiero probar la aplicación completa por mecanismo, para
asegurar que las piezas interactúan bien.

**Descripción técnica**

Pruebas de integración que usan un cliente o servidor de prueba según el mecanismo y
fijan datos reproducibles.

**Justificación**

Las pruebas unitarias verifican piezas, pero el valor del framework está en cómo se
ensamblan por transporte.

**Criterios de aceptación**

- [ ] hay pruebas de integración por mecanismo
- [ ] las pruebas usan datos fijos y son reproducibles
