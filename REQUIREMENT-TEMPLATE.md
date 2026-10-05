# Plantilla de requerimiento

Usa una de las dos variantes según la naturaleza del requerimiento:

- **Variante A — funcional o no funcional:** es una capacidad, propiedad o calidad
  que usa o percibe quien construye con el framework. Lleva historia de usuario.
- **Variante B — planificación o investigación:** no es una funcionalidad; fundamenta
  o decide algo (caracterización, arquitectura, decisiones, estrategias). No lleva
  historia de usuario; se describe con objetivo y producto esperado.

---

## Variante A — funcional o no funcional

```markdown
# [RF-xx] <Nombre>

- **Tipo:** requerimiento · **ID:** RF-xx
- **Objetivo:** OE-<k>
- **Categoría:** <framework | metodología | evaluación | documentación>
- **Prioridad:** <must | should | could>
- **Esfuerzo:** <S | M | L>
- **Etapa:** <1–4>
- **Estado:** <pendiente | en-progreso | hecho>
- **Depende de:** <...>
- **Restricciones:** <...>

**Relación con los objetivos específicos**

<Cómo el requerimiento sirve al objetivo y a qué necesidad responde.>

**Historia de usuario**

Como <rol que usa la funcionalidad>, quiero <capacidad>, para <beneficio>.

**Descripción técnica**

<Cómo se resuelve el requerimiento.>

**Justificación**

<Por qué es necesario; qué faltaría sin él.>

**Criterios de aceptación**

- [ ] <criterio>
- [ ] <criterio>
```

---

## Variante B — planificación o investigación

```markdown
# [RB-xx] <Nombre>

- **Tipo:** requerimiento · **ID:** RB-xx
- **Objetivo:** OE-<k>
- **Categoría:** <framework | metodología | evaluación | documentación>
- **Prioridad:** <must | should | could>
- **Esfuerzo:** <S | M | L>
- **Etapa:** <1–4>
- **Estado:** <pendiente | en-progreso | hecho>
- **Depende de:** <...>
- **Restricciones:** <...>
- **Label:** planificación

**Relación con los objetivos específicos**

<Cómo el requerimiento sirve al objetivo y a qué necesidad responde.>

**Objetivo del requerimiento**

<Qué se busca fundamentar o decidir.>

**Descripción técnica**

<Cómo se aborda.>

**Producto esperado**

<Entregable concreto: catálogo, modelo, decisión, diagrama, protocolo.>

**Justificación**

<Por qué es necesario; qué faltaría sin él.>

**Criterios de aceptación**

- [ ] <criterio>
- [ ] <criterio>
```
