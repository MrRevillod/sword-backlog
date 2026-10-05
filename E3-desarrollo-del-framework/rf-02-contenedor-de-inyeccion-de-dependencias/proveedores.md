# Proveedores: recursos externos ya inicializados

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-02 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-02 Contenedor de inyección de dependencias
- **Restricciones:** inicialización asíncrona permitida.

**Historia de usuario**

Como usuario del framework, quiero registrar recursos ya iniciados, para inyectarlos
sin reconstruirlos.

**Descripción técnica**

Registro de proveedores ya inicializados, con soporte de inicialización asíncrona
durante el arranque.

**Justificación**

Conexiones y clientes deben inicializarse una vez y compartirse.

**Criterios de aceptación**

- [ ] un proveedor queda disponible al arrancar
- [ ] el registro admite inicialización con `.await`
- [ ] proveedores y componentes conviven sin colisión
