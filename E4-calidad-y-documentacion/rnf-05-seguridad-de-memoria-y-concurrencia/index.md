# [RNF-05] Seguridad de memoria y concurrencia

- **Tipo:** requerimiento · **ID:** RNF-05
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RB-01
- **Restricciones:** heredada del lenguaje.

**Relación con los objetivos específicos**

OE-2 — Conserva las garantías de Rust (propiedad, ausencia de condiciones de carrera)
como base del framework.

**Historia de usuario**

Como usuario del framework, quiero que el framework herede las garantías de seguridad
de Rust, para no reintroducir errores de memoria ni de concurrencia.

**Descripción técnica**

Uso de las garantías de propiedad y tipos del lenguaje, sin `unsafe` innecesario y sin
recolector de basura.

**Justificación**

La seguridad de memoria es una de las razones para usar Rust; el framework no debe
erosionarla.

**Criterios de aceptación**

- [ ] el framework no introduce `unsafe` sin justificación documentada
- [ ] las garantías del lenguaje se conservan
