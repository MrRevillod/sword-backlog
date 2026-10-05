# Diseño del modelo de errores y respuestas

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** S
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** G-02 Diseño de la arquitectura de Sword
- **Restricciones:** separar error de dominio de formato de transporte.
- **Label:** planificación

**Objetivo de la tarea**

Definir el mapeo de errores y el formato externo de respuestas por protocolo.

**Descripción técnica**

Errores de dominio, traducción por transporte y formato externo uniforme.

**Producto esperado**

Subsección del capítulo con el modelo de errores y el formato por transporte.

**Justificación**

Un contrato externo estable evita lógica especial en el cliente y unifica la
experiencia entre protocolos.

**Criterios de aceptación**

- [ ] el formato externo está especificado por protocolo
- [ ] la traducción interna no se repite en cada handler
- [ ] el diseño distingue error de dominio y de transporte
