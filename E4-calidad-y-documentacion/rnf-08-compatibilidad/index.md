# [RNF-08] Compatibilidad

- **Tipo:** requerimiento · **ID:** RNF-08
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RB-01
- **Restricciones:** declarar versión mínima.

**Relación con los objetivos específicos**

OE-2 — Define las condiciones de uso del framework para que sea reproducible en otras
máquinas.

**Historia de usuario**

Como usuario del framework, quiero conocer la edición, la versión mínima de Rust y las
plataformas soportadas, para saber si el framework sirve en mi entorno.

**Descripción técnica**

Declaración de edición de Rust, versión mínima soportada y plataformas verificadas.

**Justificación**

Sin condiciones declaradas, la reproducibilidad del trabajo queda indeterminada.

**Criterios de aceptación**

- [ ] la edición está declarada
- [ ] la versión mínima está documentada
- [ ] las plataformas verificadas están declaradas
