# Guía de Decisión: Automatización de Procesos de Negocio

ID: `GD-BPA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a decidir la estrategia de automatización correcta para un proceso de negocio, en el contexto de una `Entidad de Valor (EV)`.

---

## Principio KORE: API-First, RPA como Deuda Técnica

La interacción programática a través de un `Contrato de Servicio` (API) es siempre la opción preferida por su robustez y bajo acoplamiento. El uso de RPA para interactuar con la UI de otro sistema debe ser considerado una forma de deuda técnica: una solución táctica y temporal que debe ser explícitamente justificada y gestionada.

## Protocolo de Decisión de Automatización

Siga este protocolo al diseñar o evolucionar una `Entidad de Valor`.

### Paso 1: Modelar el Flujo de Valor (Σ-T)

* Use la Caja 3 (Flujo de Valor) del `Canvas de EV` para mapear las etapas clave del proceso de negocio de punta a punta.

### Paso 2: Analizar las Interacciones y Dependencias (Σ-O)

* Para cada etapa que requiere interactuar con otro sistema (una `Dependencia` en la Caja 7 del Canvas), pregunte: "¿Esta dependencia expone una API estable y documentada?"

### Paso 3: Aplicar la Heurística de Decisión

Utilice la siguiente tabla para elegir la herramienta de automatización correcta para el problema correcto.

| Si la interacción es con... | Y el proceso es... | Use la tecnología... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- | :--- |
| Una API (Contrato de Servicio) | De larga duración y/o con lógica compleja. | BPA/DPA (Orquestación) | Es la forma robusta y escalable de gestionar flujos de trabajo que involucran múltiples sistemas. | `gt_ingenieria_software.md` |
| Una UI (sin API disponible) | Repetitivo y basado en reglas. | RPA (Automatización UI) | Es un "puente" táctico para integrar sistemas legacy. Debe ser la última opción. | `gt_ingenieria_software.md` |
| Datos no estructurados o decisiones con juicio. | Cognitivamente complejo. | Intelligent Automation (IA) | Permite automatizar tareas que un `if/else` no puede resolver (ej. leer un PDF, interpretar un email). | `gt_ingenieria_ia.md` |

### Paso 4: Documentar la Decisión de Usar RPA en un `ADR` (Δ-O)

La decisión de implementar RPA DEBE ser documentada en una `Bitácora de Decisión`.

* Título del ADR: "Adopción de RPA para la integración con el Sistema Legacy X".
* Contexto: Explique por qué no fue posible usar una API y los intentos que se hicieron para obtenerla.
* Consecuencias (Negativas): Documente explícitamente los riesgos: "Esta solución es frágil ante cambios en la UI del sistema legacy", "Introduce un alto costo de mantenimiento".
* Plan de Mitigación: Incluya un plan para, eventualmente, reemplazar el bot de RPA una vez que una API esté disponible. Esto hace que la deuda técnica sea visible y manejable.
