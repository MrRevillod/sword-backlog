# [RF-11] Respuestas y errores estandarizados

- **Tipo:** requerimiento · **ID:** RF-11
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** should
- **Esfuerzo:** M
- **Etapa:** 3
- **Estado:** en-progreso
- **Depende de:** RF-06
- **Restricciones:** contrato estable hacia el cliente.

**Relación con los objetivos específicos**

OE-2 — Aporta consistencia al exterior; complementa el mapeo interno de errores de
RF-14.

**Historia de usuario**

Como cliente, quiero un formato coherente de respuestas y errores, para consumir la API
de forma predecible.

**Descripción técnica**

Envoltorio de respuesta con estructura fija (cuerpo, error y metadatos) por protocolo.

**Justificación**

Los clientes dependen de un contrato estable; el envoltorio debe verse igual en todos
los endpoints.

**Criterios de aceptación**

- [ ] toda respuesta, exitosa o fallida, usa la misma estructura externa por protocolo
