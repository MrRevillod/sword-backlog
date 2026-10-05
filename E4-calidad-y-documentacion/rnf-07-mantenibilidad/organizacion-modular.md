# Verificar la organización modular

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RNF-07 (should)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RNF-07 Mantenibilidad
- **Restricciones:** responsabilidades separadas.

**Historia de usuario**

Como equipo de desarrollo, quiero que cada parte del framework tenga su lugar, para
poder cambiar una sin tocar las demás.

**Descripción técnica**

Revisión de que los crates y los módulos mantengan responsabilidades separadas y una
dirección de dependencias clara.

**Justificación**

Sin separación, un cambio menor se propaga por todo el framework.

**Criterios de aceptación**

- [ ] cada crate mantiene su responsabilidad
- [ ] no hay dependencias cruzadas indebidas
