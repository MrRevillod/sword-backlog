# Definir los registries del núcleo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-02 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-02 Registro declarativo y automático
- **Restricciones:** un registry por tipo de elemento.

**Historia de usuario**

Como usuario del framework, quiero que el framework reúna los controladores,
componentes y capas que declaro, para no listarlos a mano.

**Descripción técnica**

Registries del núcleo para controladores, componentes, proveedores y capas, con la
colección de elementos declarados.

**Justificación**

El registry es el punto donde el framework conoce lo que la aplicación declara.

**Criterios de aceptación**

- [ ] existe un registry por tipo de elemento
- [ ] los elementos declarados quedan accesibles en el registry
