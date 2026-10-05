# [RB-01] Organización del código en paquetes

- **Tipo:** requerimiento · **ID:** RB-01
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** —
- **Restricciones:** la dirección de dependencias debe respetar núcleo → mecanismos.

**Relación con los objetivos específicos**

OE-2 — Habilita la modularidad y la mantenibilidad (RNF-07); permite publicar y
versionar cada parte por separado.

**Historia de usuario**

Como equipo de desarrollo, quiero separar el proyecto en paquetes con
responsabilidades claras, para publicar y evolucionar cada parte por separado.

**Descripción técnica**

Workspace de Cargo con un crate por responsabilidad: `sword-core`, `sword-macros`,
`sword`, `sword-layers`, `sword-web`, `sword-grpc`, `sword-socketio` y
`sword-events`. Las dependencias van del núcleo hacia los mecanismos.

**Justificación**

Si todo viviera en un solo paquete, la composición quedaría atada a un monolito y
cualquier cambio menor arrastraría una publicación completa.

**Criterios de aceptación**

- [ ] cada crate compila y se publica por separado
- [ ] las dependencias entre crates respetan la dirección núcleo → mecanismos
- [ ] no hay dependencias circulares entre paquetes
