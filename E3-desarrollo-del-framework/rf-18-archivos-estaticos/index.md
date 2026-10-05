# [RF-18] Archivos estáticos

- **Tipo:** requerimiento · **ID:** RF-18
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** could
- **Esfuerzo:** S
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** rutas declaradas.

**Relación con los objetivos específicos**

OE-2 — Permite servir frontend o recursos desde la misma aplicación.

**Historia de usuario**

Como usuario del framework, quiero servir recursos estáticos, para incluir imágenes o
un frontend desde la misma app.

**Descripción técnica**

Servicio de archivos estáticos desde rutas declaradas.

**Justificación**

Evita un servidor adicional para recursos estáticos.

**Criterios de aceptación**

- [ ] los archivos estáticos declarados se sirven desde la aplicación
