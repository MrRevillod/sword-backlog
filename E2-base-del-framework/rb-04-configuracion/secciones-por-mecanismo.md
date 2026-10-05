# Definir secciones por mecanismo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-04 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-04 Sistema de configuración
- **Restricciones:** auto-registro.

**Historia de usuario**

Como usuario del framework, quiero que cada mecanismo tenga su sección, para mantener
la configuración ordenada.

**Descripción técnica**

Secciones de configuración auto-registradas por mecanismo (`[web]`, `[grpc]`,
`[socketio]`, …), leídas con `config.get_or_default::<T>()`.

**Justificación**

Ordena la configuración por responsabilidad y evita un archivo monolítico.

**Criterios de aceptación**

- [ ] cada mecanismo lee su sección
- [ ] las secciones se auto-registran
- [ ] `config.get_or_default::<T>()` entrega la sección
