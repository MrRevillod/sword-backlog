# [RB-06] Ensamblaje y arranque de la aplicación

- **Tipo:** requerimiento · **ID:** RB-06
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-03, RB-04
- **Restricciones:** apagado ordenado obligatorio.

**Relación con los objetivos específicos**

OE-2 — Centraliza las decisiones de composición y transporte, evitando que cada
proyecto repita el andamiaje.

**Historia de usuario**

Como usuario del framework, quiero que el framework arme y lance la aplicación, para
iniciarla con una sola instrucción.

**Descripción técnica**

`ApplicationBuilder` que registra módulos, selecciona el mecanismo según la feature
habilitada, configura el runtime y gestiona el apagado ordenado.

**Justificación**

El arranque concentra las decisiones de composición y transporte; en aplicaciones
asíncronas el apagado importa tanto como el inicio.

**Criterios de aceptación**

- [ ] una instrucción arma y lanza la aplicación
- [ ] el mecanismo se selecciona según la feature habilitada
- [ ] el apagado es ordenado
