# Cookies

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-06 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-06 Soporte HTTP
- **Restricciones:** cookies firmadas y privadas seguras.

**Historia de usuario**

Como usuario del framework, quiero leer y escribir cookies, para gestionar sesiones y
preferencias.

**Descripción técnica**

Gestor de cookies montado en el router, con acceso desde la solicitud y soporte de
cookies firmadas y privadas.

**Justificación**

Las cookies son parte del manejo HTTP habitual y deben venir integradas.

**Criterios de aceptación**

- [ ] las cookies se leen y escriben desde los handlers
- [ ] el gestor de cookies está montado
- [ ] cookies firmadas y privadas usan sus claves
- [ ] hay pruebas de escritura, lectura y atributos
