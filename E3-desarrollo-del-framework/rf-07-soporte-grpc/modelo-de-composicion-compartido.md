# Modelo de composición compartido con HTTP

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-07 (should)
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-07 Soporte gRPC
- **Restricciones:** mismos módulos y componentes que HTTP.

**Historia de usuario**

Como usuario del framework, quiero reutilizar mis componentes entre HTTP y gRPC, para
no duplicar la lógica de dominio.

**Descripción técnica**

Los controladores gRPC declaran las mismas dependencias y se registran con los mismos
módulos y componentes que los de HTTP.

**Justificación**

La reutilización entre transportes es la diferencia frente a las alternativas.

**Criterios de aceptación**

- [ ] un componente sirve a HTTP y gRPC sin duplicarse
- [ ] ambos mecanismos comparten el registro de componentes
