# [RB-04] Sistema de configuración

- **Tipo:** requerimiento · **ID:** RB-04
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-03
- **Restricciones:** no versionar datos sensibles.

**Relación con los objetivos específicos**

OE-2 — Sostiene RF-04 y RF-05; reduce las entradas de configuración dispersas que
mide OE-3.

**Historia de usuario**

Como usuario del framework, quiero definir la configuración en archivos tipados y que
se valide al arrancar, para no acoplarla al código.

**Descripción técnica**

Carga de TOML hacia estructuras tipadas, validación al arrancar, secciones por
mecanismo, interpolación `${VAR}` y `${VAR:default}`, y ruta configurable.

**Justificación**

Validar al arrancar convierte un fallo silencioso en un diagnóstico temprano, y la
interpolación evita versionar datos sensibles.

**Criterios de aceptación**

- [ ] configuración inválida aborta con diagnóstico claro
- [ ] las variables de entorno se interpolan
- [ ] cada mecanismo lee su sección
