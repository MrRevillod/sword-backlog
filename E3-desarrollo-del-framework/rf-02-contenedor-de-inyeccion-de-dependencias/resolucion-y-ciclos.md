# Resolución en el orden correcto y detección de ciclos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-02 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-02 Contenedor de inyección de dependencias
- **Restricciones:** el error debe indicar el ciclo.

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
