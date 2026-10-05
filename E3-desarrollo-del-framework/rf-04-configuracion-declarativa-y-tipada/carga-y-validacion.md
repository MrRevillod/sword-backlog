# Carga y validación de la configuración al arranque

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-04 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-04 Configuración declarativa y tipada
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
