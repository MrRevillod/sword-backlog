# Derivación de errores de dominio

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RF-14 (should)
- **Esfuerzo:** S
- **Etapa:** 3
- **Estado:** en-progreso
- **Pertenece a:** RF-14 Manejo uniforme de errores
- **Restricciones:** la conversión se declara junto al error.

**Historia de usuario**

Como usuario del framework, quiero declarar el código y el mensaje junto a cada error,
para no concentrar la traducción en un solo lugar.

**Descripción técnica**

Derivación de errores de dominio que asocia a cada variante el código y el mensaje, y
genera la conversión al formato del transporte. El compilador valida las referencias a
los campos.

**Justificación**

Concentrar la traducción obliga a conocer todos los errores de la aplicación en un
único punto y a revisarlo ante cada uno nuevo.

**Criterios de aceptación**

- [ ] cada variante declara su código y mensaje
- [ ] la derivación genera la conversión
- [ ] una referencia inválida a un campo no compila
