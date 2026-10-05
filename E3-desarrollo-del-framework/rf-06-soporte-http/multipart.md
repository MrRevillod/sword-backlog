# Multipart/form-data

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-06 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-06 Soporte HTTP
- **Restricciones:** detrás de feature.

**Historia de usuario**

Como usuario del framework, quiero aceptar subidas de archivos, para manejar
formularios con archivos.

**Descripción técnica**

Extracción de multipart con límite de cuerpo configurable y control de tipos
permitidos, mapeando excesos a 413.

**Justificación**

La subida de archivos es un caso frecuente que debe integrarse sin código adicional.

**Criterios de aceptación**

- [ ] se aceptan subidas multipart
- [ ] superar el límite responde 413
- [ ] el límite y los tipos se controlan por configuración
- [ ] la feature `web-multipart` aísla el soporte
