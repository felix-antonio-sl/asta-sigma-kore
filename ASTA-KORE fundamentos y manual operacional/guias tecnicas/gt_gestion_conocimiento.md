# Guía Técnica: Gestión del Conocimiento y Curación para RAG

ID: `GT-KNOW-001`
Versión: 1.0
Dominio: Gestión del Conocimiento (KM), Curación de Contenido

Propósito: Esta guía técnica establece el marco para gestionar el conocimiento organizacional como una capacidad y detalla el pipeline técnico para curar contenido de manera que los Sistemas Cognitivos (IA) puedan consumirlo de forma segura y confiable a través de RAG (Retrieval-Augmented Generation).

Audiencia: Knowledge Managers, Arquitectos de IA, Ingenieros de Datos.

Relación con KORE:

* Guías de Decisión Relacionadas: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Conocimiento`

## 1. El Ciclo de Conocimiento KORE

La gestión del conocimiento en KORE no es un proceso pasivo de archivo, sino un ciclo activo integrado en los rituales del marco.

| Actividad KM | Protocolo KORE Asociado | Artefacto Resultante |
| :--- | :--- | :--- |
| 1. Capturar | `Retrospectiva de Flujo`, `Post-mortem de Incidente` | `Bitácora de Decisión (ADR)`, Lección Aprendida. |
| 2. Sintetizar | `Taller de Mapeo de Capacidades`, Revisión de Dominio | `Mapa de Capacidades`, Guías Técnicas (como esta). |
| 3. Compartir | `Taller de Canvas de EV`, `Negociación de Contrato` | `Canvas de EV` poblado, `Contrato Conversacional` acordado. |
| 4. Aplicar | `Ciclo de Valor y Capacidad (CVC)`, Búsqueda en Base de Conocimiento | Decisiones de inversión informadas, Respuestas RAG citables. |

## 2. Pipeline de Curación de Contenido para RAG

Este es el proceso técnico para transformar documentos no estructurados (normativas, manuales, informes) en una base de conocimiento consultable por una IA. El objetivo es garantizar respuestas verificables, actuales y trazables.

**Nota de Implementación Canónica:** El siguiente pipeline es un modelo conceptual. Su implementación técnica, obligatoria para todo el ecosistema KORE, está definida por el "Marco de curación y gestión del conocimiento consumible por IA". Este marco está compuesto por las siguientes guías maestras:

* guide_core_006_sts-master_sts.md (STS): Define el lenguaje de formato para los artefactos.
* guide_core_005_sfd-master_sts.md (SFD): Define la extensión para la transcripción de formularios.
* guide_core_003_khm-master_sts.md (KHM): Define el sistema de gestión del ciclo de vida de los artefactos.

La conformidad con el pipeline se mide por la conformidad de estas guías.

El pipeline conceptual se mapea directamente al ciclo de vida de artefactos definido en la guía `guide_core_003_khm-master_sts.md`, de la siguiente manera:

| Fase Conceptual del Pipeline | Fase de Implementación en KHM | Propósito | 
| :--- | :--- | :--- |
| 1. Ingesta y Normalización | `Fase 1: Sourcing` y `Fase 2: Staging` | Identificar y preparar las fuentes de conocimiento en bruto. |
| 2. Enriquecimiento Semántico | `Fase 2: Staging & Transformation` | Aplicar los estándares `STS` y `SFD` para refactorizar el contenido. |
| 3. Decomposición Estructural | `Fase 2: Staging & Transformation` | Estructurar el artefacto para optimizar su consumo por RAG. |
| 4. Indexación y Recuperación | - | Es una capacidad de la infraestructura de IA, no del ciclo de vida del artefacto. |

La gobernanza del proceso completo, incluyendo la auditoría y publicación, está normada por la guía `KHM`.

## 3. El `Contrato de Conocimiento`

Este `Contrato Nexus` gobierna una colección de conocimiento y define las reglas para su curación y consumo. Es la garantía de confiabilidad para el sistema RAG.

Estructura Mínima del Contrato:

```yaml
collection_id: "normativa_financiera"
version: 1.0
owner: "equipo-compliance"
authority_level: "fuente_oficial_unica" # Nivel de autoridad de las fuentes
doc_types: ["Resolución", "Circular", "Informe Auditoría"]
metadata_schema: # Metadatos mínimos requeridos en la ingesta
  - {name: "id_documento", type: "string", required: true}
  - {name: "fecha_publicacion", type: "date", required: true}
  - {name: "estado_vigencia", type: "string", required: true}
chunking_strategy:
  method: "structural"
  max_size_tokens: 512
indexing_config:
  vector_model: "text-embedding-3-large"
  lexical_analyzer: "standard"
serving_policy:
  retrieval_mode: "hybrid"
  reranking_enabled: true
  citation_policy: "required_exact" # Política de citación obligatoria
  access_control: "filter_by_user_role"
```

## 4. Roles y Responsabilidades en el Ciclo de Conocimiento

* Dueño del Conocimiento (Knowledge Owner): Experto de dominio responsable de la validez y vigencia del contenido en su área (ej. el experto en normativa fiscal es dueño de la colección de conocimiento fiscal).
* Curador de Contenido (Content Curator): Responsable de ejecutar el pipeline de ingesta, enriquecimiento y asegurar la calidad de los metadatos.
* Ingeniero de Conocimiento (Knowledge Engineer): Diseña y mantiene el pipeline técnico de RAG, optimiza los modelos de embedding y las estrategias de búsqueda.
