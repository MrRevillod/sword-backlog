# Secciones por mecanismo y capa

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-04 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-04 Configuración declarativa y tipada
- **Restricciones:** auto-registro.

**Historia de usuario**

Como usuario del framework, quiero que cada mecanismo tenga su sección de
configuración, para mantenerla ordenada.

**Descripción técnica**

Secciones auto-registradas por mecanismo (`[web]`, `[grpc]`, `[socketio]`, …),
leídas con `config.get_or_default::<T>()`.

**Justificación**

Ordena la configuración por responsabilidad y evita un archivo monolítico.

**Criterios de aceptación**

- [ ] cada mecanismo lee su sección
- [ ] las secciones se auto-registran
- [ ] `config.get_or_default::<T>()` entrega la sección
