# Diagnosticar con causa y pista de solución

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-05 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-05 Errores de arranque claros
- **Restricciones:** sin exponer secretos.

**Historia de usuario**

Como usuario del framework, quiero que el diagnóstico diga qué falló y cómo
resolverlo, para no perder tiempo adivinando.

**Descripción técnica**

Diagnóstico de arranque con título, causa, contexto y una o más pistas de solución.

**Justificación**

Un mensaje que solo dice "error" obliga a leer el código del framework.

**Criterios de aceptación**

- [ ] el diagnóstico indica la causa
- [ ] el diagnóstico incluye una pista de solución
