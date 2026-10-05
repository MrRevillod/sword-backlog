# Integración de referencia

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-03 (could)
- **Esfuerzo:** M
- **Etapa:** 4
- **Estado:** en-progreso
- **Pertenece a:** RF-03 Integraciones de uso frecuente
- **Restricciones:** sin código de conexión en la aplicación.

**Historia de usuario**

Como usuario del framework, quiero una integración lista para una tecnología habitual,
para no escribir la conexión.

**Descripción técnica**

Integración de referencia (por ejemplo, acceso a datos o caché) que inicializa el
recurso y lo expone como proveedor.

**Justificación**

Una integración concreta demuestra que el modelo funciona más allá del diseño.

**Criterios de aceptación**

- [ ] una integración se incorpora sin código de conexión propio
- [ ] el recurso queda disponible por inyección
