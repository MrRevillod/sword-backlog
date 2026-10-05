# Cargar y validar la configuración al arranque

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-04 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-04 Sistema de configuración
- **Restricciones:** archivo obligatorio.

**Historia de usuario**

Como usuario del framework, quiero que la configuración se lea y valide al arrancar,
para detectar errores de inmediato.

**Descripción técnica**

Carga de un archivo requerido hacia estructuras tipadas, con aborto y diagnóstico
ante archivo ausente o TOML inválido.

**Justificación**

Un fallo de configuración debe verse al inicio, no en medio de la ejecución.

**Criterios de aceptación**

- [ ] un archivo requerido se carga al arrancar
- [ ] un archivo ausente o inválido aborta con motivo
- [ ] la configuración válida queda en el `State`
