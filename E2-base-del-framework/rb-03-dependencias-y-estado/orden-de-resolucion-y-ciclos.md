# Resolver en orden de dependencia y detectar ciclos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-03 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-03 Núcleo de dependencias y estado
- **Restricciones:** un ciclo debe fallar con un error claro.

**Historia de usuario**

Como usuario del framework, quiero que el orden de construcción se resuelva solo y
que un ciclo falle claro, para no depurar grafos a mano.

**Descripción técnica**

Resolución del grafo de dependencias en orden de dependencia y detección de
dependencias circulares con un error dedicado.

**Justificación**

Un ciclo no detectado produce fallos difíciles de diagnosticar.

**Criterios de aceptación**

- [ ] se respeta el orden de dependencia
- [ ] un ciclo reporta un error claro
- [ ] un grafo sin ciclos se construye en un paso
