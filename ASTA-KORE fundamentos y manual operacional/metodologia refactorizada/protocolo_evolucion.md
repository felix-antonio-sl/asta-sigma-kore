# Protocolo de Evolución del Marco (PEM)

**Versión:** 1.0
**Propósito:** Este protocolo define el mecanismo formal y recurrente para la auditoría, adaptación y evolución del propio marco ASTA-Kore. Es el sistema inmunológico del marco, diseñado para mantenerlo parsimonioso, coherente y alineado con las necesidades del terreno.

---

## 1. Principios Fundamentales de la Evolución

La evolución de ASTA-Kore se rige por axiomas que previenen la burocratización y la complejidad accidental.

1. **Semántica antes que Herramientas:** La solidez de los `Contratos` y la `Ontología` precede a la construcción de `pipelines` o `paneles`. La automatización debe verificar la coherencia semántica, no reemplazarla.
2. **Mínima Carga Cognitiva:** Cada nuevo concepto, artefacto o protocolo debe justificar su existencia demostrando que reduce más complejidad de la que introduce.
3. **Fuente Única de Verdad en el Código:** Los artefactos de diseño (`Contratos.yml`, `ADR.md`) viven junto al código. Los catálogos y paneles son **vistas materializadas** de esta verdad, no bases de datos independientes.
4. **Reflexividad:** El propio proceso de evolución del marco debe seguir los principios de ASTA-Kore (basado en evidencia, iterativo, con artefactos parsimoniosos).

## 2. El Ciclo de Evolución del Marco (Ritmo Anual)

El marco se somete a un ciclo formal de revisión y adaptación una vez al año, o cuando la evidencia de fricción significativa lo justifique.

### Fase 1: Auditoría Holística

* **Propósito:** Evaluar la salud y efectividad del marco en la práctica.
* **Protocolo:**
    1. **Recopilación de Evidencia:**
        * **Entrevistas y Encuestas:** Dialogar con equipos de `EVs`, líderes y `Nodos de Gobernanza` para identificar puntos de fricción, cuellos de botella y artefactos de bajo valor.
        * **Análisis de Artefactos:** Muestrear y analizar la calidad, consistencia y utilidad real de los `Canvas de EV`, `Contratos`, `Informes de CVC` y `ADRs` generados en el ciclo.
        * **Métricas de Plataforma:** Analizar métricas objetivas como `lead time` de las `EVs`, tasa de fallo de `pipelines` de la Plataforma Nexus, frecuencia de `override` de `guardrails` y uso de `templates`.
    2. **Evaluación con el Scorecard de Salud:** Utilizar el siguiente scorecard para puntuar cada dimensión del marco, generando un diagnóstico objetivo.

#### Scorecard de Salud del Marco ASTA-Kore

| Dimensión | Pregunta Clave de Auditoría |
| :--- | :--- |
| **1. Modelo Mental** | ¿Sigue siendo el modelo (Matriz Σ/Δ, EV) parsimonioso y de baja carga cognitiva para los nuevos equipos? |
| **2. Trazabilidad Σ/Δ** | ¿Podemos conectar un KR a un commit y a un ADR de forma automática y verificable? ¿O sigue siendo un ejercicio manual? |
| **3. Gobernanza (CVC)** | ¿Las decisiones del CVC se basan en evidencia (métricas, demos) o han degenerado en reportes de estado? |
| **4. Contratos** | ¿Son los contratos la fuente de verdad? ¿Están completos, son consistentes y se usan para guiar las conversaciones de diseño? |
| **5. Plataforma Nexus** | ¿Las "carreteras pavimentadas" (pipelines, templates) aceleran o constriñen a los equipos? ¿Los `guardrails` son claros y explicables? |
| **6. Adopción y Disciplina** | ¿Se siguen los protocolos (ADRs, CVCs) por convicción o solo por cumplimiento? ¿Cuál es la tasa de "bypass" de los `guardrails`? |
| **7. Higiene Documental** | ¿El cuerpo de conocimiento del marco está libre de inconsistencias, duplicados y enlaces rotos? ¿Inspira confianza? |

### Fase 2: Propuesta de Refinamiento

* **Propósito:** Traducir los hallazgos de la auditoría en un plan de acción jerarquizado y accionable.
* **Protocolo:**
    1. **Síntesis de Hallazgos:** Consolidar los resultados del scorecard y la evidencia cualitativa en un informe de auditoría conciso.
    2. **Jerarquización del Backlog de Evolución:** Priorizar las acciones de mejora usando la siguiente jerarquía de dependencias conceptuales:
        * **Nivel 1 (Fundamento Semántico):** Cambios en la `Ontología`, el `Manifiesto` o la estructura canónica de los `Contratos`.
        * **Nivel 2 (Motor de Trazabilidad):** Mejoras en el modelo de metadatos y los mecanismos de `scaffolding` que aseguran la conexión entre artefactos.
        * **Nivel 3 (Carreteras Pavimentadas):** Desarrollo o mejora de `pipelines`, `paneles`, `templates` y otras herramientas de la Plataforma Nexus.
    3. **Formulación del Plan de Acción:** Documentar el plan en un formato de hoja de ruta (ej. 90/180/365 días), asegurando que cada iniciativa esté justificada por un hallazgo de la auditoría.

### Fase 3: Implementación y Comunicación

* **Propósito:** Ejecutar los cambios en el marco de forma controlada y comunicar eficazmente la nueva versión.
* **Protocolo:**
    1. **Implementación por Capas:** Ejecutar el plan de acción respetando el orden jerárquico definido en la fase anterior.
    2. **Versionado Semántico:** Incrementar la versión del marco (ej. de v1.1 a v1.2) según la magnitud del cambio.
    3. **Actualización del `CHANGELOG.md`:** Cada cambio significativo en un artefacto del marco (guía, contrato, protocolo) debe ser registrado con una descripción clara de la mejora y su impacto.
    4. **Comunicación Activa:** Anunciar la nueva versión a la comunidad de práctica, explicando no solo el "qué" sino el "porqué" del cambio, conectándolo a los hallazgos de la auditoría que lo motivaron.

---

## Anexo: Registro de Auditorías

* **[Auditoría Q3 2025](./auditorias/auditoria_2025_q3.md):** Veredicto: Marco conceptualmente robusto pero con brecha crítica entre doctrina y plataforma operable. Plan de acción enfocado en solidificar el núcleo semántico.
