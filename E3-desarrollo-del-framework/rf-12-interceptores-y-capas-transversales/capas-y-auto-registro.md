# Capas configurables y auto-registro

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-12 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-12 Interceptores y capas transversales
- **Restricciones:** orden de aplicación definido.

**Historia de usuario**

Como usuario del framework, quiero añadir capas desde la configuración, para aplicar
compresión, CORS o límites sin montarlas a mano.

**Descripción técnica**

Capas de Tower configurables que se auto-registran y se montan en un orden definido
sobre el router.

**Justificación**

Las capas transversales se resuelven mejor desde la configuración que desde el código.

**Criterios de aceptación**

- [ ] las capas se declaran desde la configuración
- [ ] se auto-registran sin montaje manual
- [ ] el orden de aplicación está definido
