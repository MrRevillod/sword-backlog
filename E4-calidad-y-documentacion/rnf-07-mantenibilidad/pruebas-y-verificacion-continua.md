# Verificar las pruebas y la verificación continua

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-07 (should)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RNF-07 Mantenibilidad
- **Restricciones:** cada cambio verificado.

**Historia de usuario**

Como equipo de desarrollo, quiero que cada cambio se verifique, para detectar roturas
antes de integrarlas.

**Descripción técnica**

Revisión de que existan pruebas automatizadas y una pipeline que las ejecute junto al
formato, el análisis estático y la documentación.

**Justificación**

La verificación continua es lo que permite evolucionar sin miedo.

**Criterios de aceptación**

- [ ] hay pruebas automatizadas
- [ ] la pipeline verifica cada cambio
