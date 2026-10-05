# Configuración e invalidación por endpoint

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-16 (could)
- **Esfuerzo:** S
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-16 Caché de respuestas con Redis
- **Restricciones:** declarada por endpoint.

**Historia de usuario**

Como usuario del framework, quiero decidir qué endpoints se cachean y por cuánto
tiempo, para no servir datos vencidos.

**Descripción técnica**

Declaración por endpoint del tiempo de vida de la caché y de las reglas de
invalidación.

**Justificación**

Una caché sin vencimiento sirve datos obsoletos.

**Criterios de aceptación**

- [ ] el tiempo de vida se declara por endpoint
- [ ] una entrada vencida deja de servirse
- [ ] la invalidación se puede forzar
