# [RB-08] Verificación y publicación continua

- **Tipo:** requerimiento · **ID:** RB-08
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-01
- **Restricciones:** ninguna liberación sin CI en verde.

**Relación con los objetivos específicos**

OE-2 — Apoya la mantenibilidad (RNF-07) y la documentación reproducible (RNF-06).

**Historia de usuario**

Como equipo de desarrollo, quiero automatizar la verificación y la publicación, para
liberar versiones confiables sin pasos manuales.

**Descripción técnica**

CI que ejecuta formato, clippy, compilación, pruebas y documentación, y publica los
paquetes con gestión de versiones.

**Justificación**

Un framework con varios paquetes y mecanismos necesita verificación uniforme en cada
cambio.

**Criterios de aceptación**

- [ ] CI ejecuta formato, clippy, pruebas y documentación
- [ ] la publicación de versiones está automatizada
