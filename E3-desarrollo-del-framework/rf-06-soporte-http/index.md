# [RF-06] Soporte HTTP

- **Tipo:** requerimiento · **ID:** RF-06
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RF-01, RF-02
- **Restricciones:** el mecanismo principal de interacción.

**Relación con los objetivos específicos**

OE-2 — Es uno de los mecanismos del modelo común y participa de la reutilización de
componentes de OE-3.

**Historia de usuario**

Como usuario del framework, quiero declarar controladores y rutas HTTP, para exponer
la API a clientes externos.

**Descripción técnica**

Controladores con macros de ruta y registro automático, con `router-prefix` y
respuestas uniformes. Incluye SSE, multipart, cookies, archivos estáticos y OpenAPI.

**Justificación**

HTTP es el canal principal de interacción en las aplicaciones web.

**Criterios de aceptación**

- [ ] las rutas declaradas responden
- [ ] los errores se presentan en formato uniforme
