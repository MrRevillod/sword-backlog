# [RF-04] Configuración declarativa y tipada

- **Tipo:** requerimiento · **ID:** RF-04
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RB-04
- **Restricciones:** validación al arrancar.

**Relación con los objetivos específicos**

OE-2 — Sostiene RF-05 y reduce las entradas de configuración que mide OE-3.

**Historia de usuario**

Como usuario del framework, quiero configurar la app desde archivos tipados y
validados, para separar la configuración del código.

**Descripción técnica**

Configuración TOML cargada en estructuras tipadas y validada al inicializar, con
interpolación de variables de entorno.

**Justificación**

Es la convención de los frameworks consolidados; los errores aparecen temprano.

**Criterios de aceptación**

- [ ] una configuración inválida aborta con un diagnóstico claro
- [ ] las variables de entorno se interpolan
