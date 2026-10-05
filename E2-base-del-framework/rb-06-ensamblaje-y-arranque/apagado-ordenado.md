# Apagado ordenado

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-06 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-06 Ensamblaje y arranque de la aplicación
- **Restricciones:** atender señales de terminación.

**Historia de usuario**

Como operador, quiero que la aplicación se apague de forma ordenada, para no cortar
solicitudes en curso.

**Descripción técnica**

Apagado ordenado ante SIGINT y SIGTERM, drenando las solicitudes en curso.

**Justificación**

En una aplicación asíncrona, cortar en seco pierde trabajo y deja recursos abiertos.

**Criterios de aceptación**

- [ ] la aplicación detecta las señales de terminación
- [ ] las solicitudes en curso terminan antes de cerrar
