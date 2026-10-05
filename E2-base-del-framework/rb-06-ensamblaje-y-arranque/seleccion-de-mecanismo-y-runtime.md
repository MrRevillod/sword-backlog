# Selección del mecanismo y configuración del runtime

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-06 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-06 Ensamblaje y arranque de la aplicación
- **Restricciones:** un mecanismo por aplicación.

**Historia de usuario**

Como usuario del framework, quiero que el mecanismo salga de la feature que habilité,
para no elegirlo en código.

**Descripción técnica**

Selección del motor de aplicación según la feature habilitada (`web`, `grpc`,
`socketio`) y preparación del runtime asíncrono.

**Justificación**

Resolver el transporte por compilación evita ramas de configuración en cada proyecto.

**Criterios de aceptación**

- [ ] la feature habilitada determina el mecanismo
- [ ] el runtime queda configurado al arrancar
