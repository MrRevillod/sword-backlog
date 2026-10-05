# Definir el contrato de módulo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-01 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-01 Organización modular
- **Restricciones:** implementación por defecto vacía.

**Historia de usuario**

Como usuario del framework, quiero declarar qué contiene un módulo, para que el
framework lo monte sin pasos extra.

**Descripción técnica**

Trait `Module` con métodos de registro de controladores, componentes y proveedores,
con implementación por defecto vacía.

**Justificación**

Es el punto de entrada del modelo declarativo.

**Criterios de aceptación**

- [ ] el trait `Module` está definido y tipado
- [ ] los métodos de registro tienen implementación por defecto vacía
- [ ] un módulo vacío compila sin implementaciones manuales
