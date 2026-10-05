# Apagado ordenado del procesamiento

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-09 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-09 Manejo de eventos internos
- **Restricciones:** no dejar eventos a medias.

**Historia de usuario**

Como operador, quiero que el apagado procese o reporte los eventos pendientes, para no
dejar trabajo a medias.

**Descripción técnica**

Durante el apagado, la cola deja de aceptar publicaciones y procesa o reporta los
eventos pendientes antes de cerrar.

**Justificación**

Un apagado que descarta eventos en curso produce trabajo perdido sin rastro.

**Criterios de aceptación**

- [ ] el apagado detiene la recepción de nuevos eventos
- [ ] los pendientes se procesan o se reportan
