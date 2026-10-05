# Establecer la dirección de dependencias y verificar ausencia de ciclos

- **Tipo:** tarea
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** heredada de RB-01 (must)
- **Esfuerzo:** S
- **Etapa:** 1
- **Estado:** hecho
- **Pertenece a:** RB-01 Organización del código en paquetes
- **Restricciones:** núcleo → mecanismos.

**Historia de usuario**

Como equipo de desarrollo, quiero que las dependencias vayan del núcleo hacia los
mecanismos, para evitar acoplamientos cruzados.

**Descripción técnica**

Declarar las dependencias entre crates en la dirección núcleo → mecanismos y
verificar que no aparezcan ciclos.

**Justificación**

Un ciclo entre paquetes impide compilarlos y publicarlos por separado.

**Criterios de aceptación**

- [ ] la dirección de dependencias queda explícita
- [ ] no hay dependencias circulares
