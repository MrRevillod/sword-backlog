# Registrar proveedores ya inicializados

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-03 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-03 Núcleo de dependencias y estado
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
