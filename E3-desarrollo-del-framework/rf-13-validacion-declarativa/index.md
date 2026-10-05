# [RF-13] Validación declarativa

- **Tipo:** requerimiento · **ID:** RF-13
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** validación antes del handler.

**Relación con los objetivos específicos**

OE-2 — Preocupación transversal que se aplica de forma consistente sobre los datos de
entrada.

**Historia de usuario**

Como usuario del framework, quiero declarar reglas para los datos de entrada, para que
se verifiquen antes del handler.

**Descripción técnica**

Reglas declarativas evaluadas antes del handler, con rechazo uniforme de entradas
inválidas.

**Justificación**

Validar a mano en cada handler repite código y deja huecos.

**Criterios de aceptación**

- [ ] una regla declarada rechaza entradas inválidas antes del handler
