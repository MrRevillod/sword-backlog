# [RF-12] Interceptores y capas transversales

- **Tipo:** requerimiento · **ID:** RF-12
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** tipados por transporte.

**Relación con los objetivos específicos**

OE-2 — Es una de las preocupaciones transversales compartidas entre transportes.

**Historia de usuario**

Como usuario del framework, quiero aplicar autenticación o registro de forma
transversal, para no repetirlo en cada handler.

**Descripción técnica**

Interceptores tipados por transporte y capas configurables.

**Justificación**

El comportamiento transversal se repite en cada ruta si no hay una capa que lo
aplique.

**Criterios de aceptación**

- [ ] un interceptor declarado se aplica a las solicitudes de su transporte
