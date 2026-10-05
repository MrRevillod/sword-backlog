# [RF-02] Contenedor de inyección de dependencias

- **Tipo:** requerimiento · **ID:** RF-02
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** L
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RB-03
- **Restricciones:** la construcción se declara, no se programa.

**Relación con los objetivos específicos**

OE-2 — Es el mecanismo que desacopla los componentes y reduce los puntos de
composición medidos en OE-3.

**Historia de usuario**

Como usuario del framework, quiero declarar qué necesita cada componente y que el
framework lo construya, para no acoplar la composición a la aplicación.

**Descripción técnica**

Contenedor que resuelve componentes desde sus dependencias declaradas, distingue
proveedores ya inicializados y expone un estado compartido.

**Justificación**

Sin inyección, la aplicación construye sus propias dependencias y el acoplamiento
vuelve.

**Criterios de aceptación**

- [ ] construcción en orden de dependencia
- [ ] un ciclo reporta un error claro
- [ ] los proveedores están disponibles al arrancar
