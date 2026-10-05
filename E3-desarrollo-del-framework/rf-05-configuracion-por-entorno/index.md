# [RF-05] Configuración por entorno

- **Tipo:** requerimiento · **ID:** RF-05
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RF-04
- **Restricciones:** mismo código para todos los entornos.

**Relación con los objetivos específicos**

OE-2 — Permite que el mismo binario se use en desarrollo, pruebas y producción.

**Historia de usuario**

Como usuario del framework, quiero ejecutar el mismo código en desarrollo, pruebas y
producción sin modificarlo, para no acoplarlo a un entorno.

**Descripción técnica**

Detección del entorno y selección del archivo de configuración correspondiente.

**Justificación**

Si la configuración vive en el código, la aplicación se acopla a un entorno.

**Criterios de aceptación**

- [ ] el mismo código corre en los tres entornos sin modificaciones
