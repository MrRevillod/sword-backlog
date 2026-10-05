# [RF-01] Organización modular

- **Tipo:** requerimiento · **ID:** RF-01
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** en-progreso
- **Depende de:** RB-02
- **Restricciones:** el módulo no instancia nada por sí solo.

**Relación con los objetivos específicos**

OE-2 — Es la convención que traslada la composición a la estructura de la aplicación;
base del modelo común.

**Historia de usuario**

Como usuario del framework, quiero agrupar controladores, componentes y proveedores en
módulos, para que la estructura de la aplicación sea clara.

**Descripción técnica**

Trait de módulo que declara controladores, componentes y proveedores, y que el
framework monta en el arranque.

**Justificación**

Es la convención de NestJS y Spring Boot: la disposición de los archivos dice cómo se
arma el sistema.

**Criterios de aceptación**

- [ ] una app con dos módulos compila, inyecta y levanta sin configuración manual extra
