# Diseño del modelo de composición común

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** must
- **Esfuerzo:** M
- **Etapa:** 2
- **Estado:** hecho
- **Pertenece a:** G-02 Diseño de la arquitectura de Sword
- **Restricciones:** el mismo modelo para todos los transportes.
- **Label:** planificación

**Objetivo de la tarea**

Definir cómo una aplicación declara componentes y controladores una sola vez para
todos los transportes.

**Descripción técnica**

Módulos, registro declarativo y aplicación del mismo modelo a HTTP, gRPC, Socket.IO
y eventos.

**Producto esperado**

Subsección del capítulo con el modelo de módulos y su aplicación a cada transporte.

**Justificación**

La uniformidad entre transportes es la diferencia que se busca frente a las
alternativas.

**Criterios de aceptación**

- [ ] el modelo de módulos es común a los transportes
- [ ] el registro no exige pasos manuales
- [ ] el diseño explica qué queda a cargo de la aplicación
