# Controladores HTTP y enrutado declarativo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-06 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-06 Soporte HTTP
- **Restricciones:** prefijo global.

**Historia de usuario**

Como usuario del framework, quiero declarar rutas con macros, para no registrarlas a
mano.

**Descripción técnica**

Atributos de controlador y de verbo HTTP que registran las rutas, con `router-prefix`
aplicado a todas.

**Justificación**

Es la convención declarativa aplicada al mecanismo principal.

**Criterios de aceptación**

- [ ] un controlador responde en su ruta y verbo
- [ ] el status por defecto es correcto (200 GET / 201 POST)
- [ ] `router-prefix` se aplica a todas las rutas
- [ ] una ruta no declarada responde 404 uniforme
