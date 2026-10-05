# Interpolación de variables de entorno

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-04 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-04 Configuración declarativa y tipada
- **Restricciones:** no exponer secretos.

**Historia de usuario**

Como usuario del framework, quiero usar variables de entorno dentro de la
configuración, para no versionar datos sensibles.

**Descripción técnica**

Soporte de `${VAR}` y `${VAR:default}` en los valores del archivo de configuración.

**Justificación**

Evita datos sensibles en el repositorio.

**Criterios de aceptación**

- [ ] `${VAR}` se reemplaza por el valor de entorno
- [ ] `${VAR:default}` usa el valor por defecto
- [ ] una variable obligatoria ausente produce un error claro
