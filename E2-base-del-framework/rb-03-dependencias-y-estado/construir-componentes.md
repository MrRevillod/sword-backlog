# Construir componentes a partir de sus dependencias declaradas

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-03 (must)
- **Esfuerzo:** M
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-03 Núcleo de dependencias y estado
- **Restricciones:** por valor para `T`, por `Arc<T>` para compartidos.

**Historia de usuario**

Como usuario del framework, quiero que mis componentes se construyan solos, para no
escribirlos a mano.

**Descripción técnica**

Resolución de las dependencias declaradas de cada componente desde el estado: por
valor para `T` y por `Arc<T>` para los recursos compartidos.

**Justificación**

Es la base de la inyección declarativa.

**Criterios de aceptación**

- [ ] un componente se construye a partir de sus dependencias declaradas
- [ ] los campos `T` se resuelven por `State::get` y los `Arc<T>` por `State::borrow`
- [ ] una dependencia ausente produce un error claro
