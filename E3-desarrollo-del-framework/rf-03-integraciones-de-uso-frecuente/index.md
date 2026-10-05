# [RF-03] Integraciones de uso frecuente

- **Tipo:** requerimiento · **ID:** RF-03
- **Objetivo:** OE-2
- **Categoría:** framework
- **Prioridad:** could
- **Esfuerzo:** L
- **Etapa:** 4
- **Estado:** en-progreso
- **Depende de:** RF-01, RF-02
- **Restricciones:** opcional; no bloquea el resto.

**Relación con los objetivos específicos**

OE-2 — Reduce el trabajo repetido de conexión inicial con tecnologías habituales.

**Historia de usuario**

Como usuario del framework, quiero incorporar integraciones habituales ya resueltas,
para no partir de cero con cada tecnología.

**Descripción técnica**

Integraciones empaquetadas como plugins o módulos que esconden la inicialización y se
incorporan al modelo de composición: bases de datos, Redis, JWT u OAuth2, mensajería
y almacenamiento.

**Justificación**

La conexión inicial con tecnologías comunes se repite en cada proyecto y consume
tiempo que no aporta valor al dominio.

**Criterios de aceptación**

- [ ] al menos una integración se incorpora sin código de conexión propio
- [ ] la integración respeta el modelo de módulos y proveedores
