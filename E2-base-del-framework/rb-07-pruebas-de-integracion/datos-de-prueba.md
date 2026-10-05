# Datos de prueba fijos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-07 (must)
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** RB-07 Base de pruebas de integración
- **Restricciones:** reproducibles.

**Historia de usuario**

Como equipo de desarrollo, quiero datos fijos en las pruebas, para que los resultados
sean reproducibles.

**Descripción técnica**

Configuración y datos de prueba fijados para cada mecanismo, de modo que las pruebas
den siempre el mismo resultado.

**Justificación**

Con datos variables, una prueba que falla no dice si el fallo es del framework.

**Criterios de aceptación**

- [ ] las pruebas usan datos fijos
- [ ] el resultado es reproducible
