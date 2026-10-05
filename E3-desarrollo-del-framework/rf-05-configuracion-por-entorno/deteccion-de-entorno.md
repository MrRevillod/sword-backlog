# Detección del entorno y selección de la configuración

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-05 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-05 Configuración por entorno
- **Restricciones:** un valor inválido debe fallar claro.

**Historia de usuario**

Como usuario del framework, quiero que el entorno seleccione la configuración, para no
cambiar el código entre entornos.

**Descripción técnica**

Lectura de `SWORD_ENV` (dev/prod/test) y carga del archivo por entorno; sin la
variable, archivo por defecto.

**Justificación**

Es lo que permite el mismo código en todos los entornos.

**Criterios de aceptación**

- [ ] `SWORD_ENV` selecciona el archivo del entorno
- [ ] sin `SWORD_ENV` se carga el archivo por defecto
- [ ] un valor inválido aborta listando los válidos
- [ ] el mismo código corre en los tres entornos
