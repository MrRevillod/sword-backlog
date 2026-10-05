# [RB-03] Núcleo de dependencias y estado

- **Tipo:** requerimiento · **ID:** RB-03
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-02
- **Restricciones:** el contenedor concentra la composición; la aplicación no la arma.

**Relación con los objetivos específicos**

OE-2 — Es el mecanismo central de composición; sostiene RF-01 y RF-02 y, con ellos,
la reducción de puntos de composición de OE-3.

**Historia de usuario**

Como usuario del framework, quiero declarar lo que necesita cada componente y que el
contenedor lo construya, para no armar la composición a mano.

**Descripción técnica**

Contenedor que construye componentes a partir de sus dependencias declaradas,
registra proveedores ya inicializados, resuelve en orden de dependencia, detecta
ciclos y expone un `State` consultable por tipo.

**Justificación**

Cuando la aplicación arma su propio grafo, la composición se esparce por el código y
cualquier cambio obliga a reescribir el montaje.

**Criterios de aceptación**

- [ ] los componentes se construyen en orden de dependencia
- [ ] un ciclo reporta un error claro
- [ ] los proveedores quedan disponibles al arrancar
- [ ] el estado compartido es accesible desde cualquier componente
