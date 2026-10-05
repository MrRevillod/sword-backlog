# Componentes construidos automáticamente según lo que declaran

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-02 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Pertenece a:** RF-02 Contenedor de inyección de dependencias
- **Restricciones:** por valor para `T`, por `Arc<T>` para compartidos.

**Historia de usuario**

Como usuario del framework, quiero que mis componentes se construyan solos, para no
escribirlos a mano.

**Descripción técnica**

Componentes marcados para inyección que resuelven sus dependencias desde el estado:
por valor para `T` y por `Arc<T>` para los compartidos.

**Justificación**

Es la base de la inyección declarativa.

**Criterios de aceptación**

- [ ] un componente se construye a partir de sus dependencias declaradas
- [ ] los campos `T` se resuelven por `State::get` y los `Arc<T>` por `State::borrow`
- [ ] una dependencia ausente produce un error claro
