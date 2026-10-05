# Servidores de prueba por mecanismo

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-07 (must)
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** RB-07 Base de pruebas de integración
- **Restricciones:** un entorno de prueba por mecanismo.

**Historia de usuario**

Como equipo de desarrollo, quiero levantar un entorno de prueba por mecanismo, para
probar la aplicación ensamblada.

**Descripción técnica**

Entorno de prueba por mecanismo: cliente en proceso para web, y servidor de prueba
para gRPC y Socket.IO.

**Justificación**

Probar cada mecanismo ensamblado detecta fallos que las pruebas unitarias no ven.

**Criterios de aceptación**

- [ ] hay un entorno de prueba por mecanismo
- [ ] las pruebas corren contra la aplicación ensamblada
