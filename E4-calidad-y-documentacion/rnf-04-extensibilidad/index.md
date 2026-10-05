# [RNF-04] Extensibilidad

- **Tipo:** requerimiento · **ID:** RNF-04
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-02
- **Restricciones:** el framework no reemplaza las bibliotecas.

**Relación con los objetivos específicos**

OE-2 — Garantiza que la capa de composición no cierre el acceso a las capacidades de
las bibliotecas subyacentes.

**Historia de usuario**

Como usuario del framework, quiero acceder directamente a las capacidades de las
bibliotecas subyacentes, para no quedar limitado por el framework.

**Descripción técnica**

Composición sobre las bibliotecas, sin reemplazarlas: los tipos y las capas de las
librerías siguen accesibles desde la aplicación.

**Justificación**

Una abstracción que impide el acceso al sustrato obliga a abandonarla cuando aparece
un caso no previsto.

**Criterios de aceptación**

- [ ] existe al menos un caso documentado de acceso directo a una capacidad subyacente
- [ ] el framework no impide ese acceso
