# Guía de Decisión: Gestión de Portafolio de EVs

**ID:** GD-PORTFOLIO-001  
**Versión:** 2.0  
**Dominio:** Σ-E (Diseño Estratégico)  
**Propósito:** Decidir si crear una nueva Entidad de Valor o expandir una existente.

## Pregunta Estratégica

**¿Crear una nueva EV o expandir una existente?**

## Árbol de Decisión

### Pregunta 1: ¿El problema tiene un propósito de valor claramente diferenciado?

**Verificación:** ¿Puedo formular un Objective (OKR) que NO se solape con los de EVs existentes?

- **NO** → **EXPANDIR EV EXISTENTE**. Añadir capacidad al Canvas de la EV más cercana.
- **SÍ** → Continuar a Pregunta 2.

### Pregunta 2: ¿Requiere un equipo dedicado (≥3 personas) de forma sostenida?

**Verificación:** ¿El trabajo justifica un equipo full-time por ≥6 meses?

- **NO** → **EXPANDIR EV EXISTENTE**. Gestionar como feature dentro de una EV.
- **SÍ** → Continuar a Pregunta 3.

### Pregunta 3: ¿Tiene contratos de interfaz claramente separables?

**Verificación:** ¿Puedo definir Contratos (Datos, API, Agente, Proceso) que NO requieren acoplamiento fuerte con otras EVs?

- **NO** → **EXPANDIR EV EXISTENTE**. El acoplamiento fuerte indica que es parte de la misma EV.
- **SÍ** → **CREAR NUEVA EV**.

## Matriz de Decisión

| Criterio | Expandir EV | Nueva EV |
|:---|:---:|:---:|
| **Propósito diferenciado** | ❌ | ✅ |
| **Equipo dedicado ≥6 meses** | ❌ | ✅ |
| **Contratos separables** | ❌ | ✅ |
| **Métricas de valor propias** | ❌ | ✅ |

**Regla:** Si cumple 3-4 criterios → Nueva EV. Si cumple 0-2 → Expandir existente.

## Señales de que NECESITAS Nueva EV

✅ **Propósito único:** "Sistema de Postulaciones" vs. "Portal Ciudadano" (propósitos distintos)  
✅ **Equipo sostenido:** Requiere 5 personas por 2 años  
✅ **Contratos claros:** Expone API REST, consume datos de Registro Civil  
✅ **Métricas propias:** NPS de postulantes, tasa de conversión  
✅ **Ciclo de vida independiente:** Puede desplegarse sin afectar otras EVs  

## Señales de que DEBES Expandir EV Existente

❌ **Propósito solapado:** "Mejorar UX del portal" (es parte del Portal Ciudadano)  
❌ **Trabajo temporal:** 2 personas por 3 meses  
❌ **Acoplamiento fuerte:** Requiere modificar código de otra EV  
❌ **Sin métricas propias:** Contribuye a métricas de otra EV  
❌ **Dependencia de despliegue:** No puede desplegarse independientemente  

## Checklist de Creación de Nueva EV

**Fase 1: Validación**

- [ ] Propósito de valor formulado (Objective claro)
- [ ] Equipo identificado (≥3 personas, ≥6 meses)
- [ ] Contratos de interfaz diseñados
- [ ] Métricas de valor definidas (KRs)
- [ ] Sponsor ejecutivo asignado

**Fase 2: Diseño**

- [ ] Canvas de EV completado
- [ ] OKRs trimestrales definidos (Caja 9 del Canvas)
- [ ] Story Map inicial creado
- [ ] Contratos formalizados (YAML)
- [ ] ADR-001 (decisión de crear la EV) documentado

**Fase 3: Génesis**

- [ ] Repositorio creado
- [ ] Pipeline CI/CD configurado
- [ ] Tablero de Flujo inicializado
- [ ] Esqueleto Andante desplegado
- [ ] Primera retrospectiva ejecutada

## Integración con ASTA-Kore

| Artefacto | Acción |
|:---|:---|
| **Canvas de EV** | Crear nuevo Canvas para la EV |
| **Portafolio (Σ-E)** | Registrar nueva EV en inventario organizacional |
| **Contratos** | Formalizar interfaces con otras EVs |
| **CVC** | Presentar nueva EV en próximo CVC |
| **ADR** | Documentar decisión de crear la EV |

**Referencia Detallada:** Ver `protocolos.md` §4.1 (Protocolo Génesis) para patrones de evolución completos.

## Anti-Patrones

| Anti-Patrón | Síntoma | Solución |
|:---|:---|:---|
| **EV Prematura** | Crear EV para feature de 2 meses | Esperar a que emerja necesidad sostenida |
| **EV Zombie** | EV sin equipo ni actividad | Cerrar formalmente (Protocolo Sunset) |
| **EV Acoplada** | EVs que no pueden desplegarse independientemente | Refactorizar contratos o fusionar EVs |
| **EV Sin Propósito** | No tiene OKRs claros | Reformular propósito o cerrar |
