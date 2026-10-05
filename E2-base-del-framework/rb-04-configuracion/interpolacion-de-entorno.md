# Interpolar variables de entorno

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-04 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-04 Sistema de configuración
- **Restricciones:** no exponer secretos.

**Historia de usuario**

Como usuario del framework, quiero usar variables de entorno en la configuración,
para no versionar datos sensibles.

**Descripción técnica**

Soporte de `${VAR}` y `${VAR:default}` en los valores del archivo de configuración.

**Justificación**

Evita datos sensibles en el repositorio.

**Criterios de aceptación**

- [ ] `${VAR}` se reemplaza por el valor de entorno
- [ ] `${VAR:default}` usa el valor por defecto
- [ ] una variable obligatoria ausente produce un error claro
