# Publicación de la especificación OpenAPI desde la configuración

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-17 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-17 Documentación de la API
- **Restricciones:** uno o más archivos declarados.

**Historia de usuario**

Como usuario del framework, quiero publicar mi especificación OpenAPI, para que los
clientes tengan el contrato a mano.

**Descripción técnica**

Lectura de los archivos de especificación declarados en la configuración y su
exposición en el router.

**Justificación**

Servir el contrato desde la propia aplicación evita mantenerlo aparte.

**Criterios de aceptación**

- [ ] la especificación declarada queda publicada
- [ ] se admiten varios archivos
- [ ] un archivo inválido produce un diagnóstico
