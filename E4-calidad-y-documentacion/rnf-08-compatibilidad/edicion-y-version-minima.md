# Declarar la edición y la versión mínima de Rust

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-08 (should)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RNF-08 Compatibilidad
- **Restricciones:** coherente con el código.

**Historia de usuario**

Como usuario del framework, quiero saber qué versión de Rust necesito, para no
descubrirlo al compilar.

**Descripción técnica**

Declaración de la edición de Rust y de la versión mínima soportada en los metadatos de
los paquetes y en la documentación.

**Justificación**

La versión mínima es una condición de reproducibilidad del trabajo.

**Criterios de aceptación**

- [ ] la edición está declarada
- [ ] la versión mínima está documentada
