# [RB-05] Errores de arranque claros

- **Tipo:** requerimiento · **ID:** RB-05
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-04
- **Restricciones:** los mensajes no deben exponer secretos.

**Relación con los objetivos específicos**

OE-2 — Influye en la percepción de usabilidad (RNF-03) y en el tiempo de diagnóstico
de las tareas representativas de OE-3.

**Historia de usuario**

Como usuario del framework, quiero que un fallo de arranque explique la causa y cómo
resolverlo, para no depurar a ciegas.

**Descripción técnica**

Errores de arranque con causa identificada y sugerencia de resolución, registrados a
través de `tracing` cuando está disponible.

**Justificación**

La primera impresión de un framework es su comportamiento ante el error; un fallo
opaco devuelve al desarrollador a las librerías puras.

**Criterios de aceptación**

- [ ] un fallo de arranque indica la causa y una pista de solución
- [ ] el error queda registrado si hay logging activo
