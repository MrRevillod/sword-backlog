# Definir el modelo de integración

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-03 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-03 Integraciones de uso frecuente
- **Restricciones:** reutilizar el modelo de módulos y proveedores.

**Historia de usuario**

Como usuario del framework, quiero que las integraciones sigan el mismo modelo de
composición, para incorporarlas sin aprender un mecanismo aparte.

**Descripción técnica**

Definición de cómo se empaqueta una integración (plugin o módulo) que registra sus
proveedores y oculta la inicialización.

**Justificación**

Un modelo único evita que cada integración invente su propia forma de conectarse.

**Criterios de aceptación**

- [ ] la integración se incorpora como módulo o plugin
- [ ] registra sus recursos como proveedores
