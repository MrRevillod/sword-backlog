# [RB-02] Registro declarativo y automático

- **Tipo:** requerimiento · **ID:** RB-02
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Depende de:** RB-01
- **Restricciones:** el registro no debe exigir pasos manuales.

**Relación con los objetivos específicos**

OE-2 — Es la condición de la experiencia declarativa: el framework descubre y
registra los elementos por sí mismo.

**Historia de usuario**

Como usuario del framework, quiero declarar controladores, rutas, componentes y
capas, sin registrarlos a mano, para que el framework los descubra solo.

**Descripción técnica**

Registro por inventario y macros de atributo que declaran controladores,
componentes, proveedores y capas, recogidos en los registries del núcleo.

**Justificación**

Si el desarrollador tuviera que registrar cada pieza a mano, el framework no
aportaría nada sobre las librerías puras.

**Criterios de aceptación**

- [ ] declarar un controlador o componente lo deja registrado sin pasos manuales
- [ ] el registro funciona sin configuración extra del proyecto
