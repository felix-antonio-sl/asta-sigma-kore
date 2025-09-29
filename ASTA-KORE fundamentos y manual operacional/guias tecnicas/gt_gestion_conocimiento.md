# Guía Técnica: Gestión del Conocimiento y Curación para RAG

ID: `GT-KNOW-001`
Versión: 1.0
Dominio: Gestión del Conocimiento (KM), Curación de Contenido

Propósito: Esta guía técnica establece el marco para gestionar el conocimiento organizacional como una capacidad y detalla el pipeline técnico para curar contenido de manera que los Sistemas Cognitivos (IA) puedan consumirlo de forma segura y confiable a través de RAG (Retrieval-Augmented Generation).

Audiencia: Knowledge Managers, Arquitectos de IA, Ingenieros de Datos.

Relación con KORE:

* Guías de Decisión Relacionadas: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Conocimiento`

---

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

1. Ingesta y Normalización:
    * Acción: Capturar documentos desde fuentes oficiales (ECM, repositorios). Verificar integridad (hash), realizar OCR de alta fidelidad y estandarizar a formatos como PDF/A.
    * Guardrail: Rechazar documentos sin metadatos mínimos (fuente, fecha).

2. Enriquecimiento Semántico:
    * Acción: Clasificar el documento según una taxonomía controlada. Usar NER (Named Entity Recognition) para extraer entidades clave (personas, fechas, montos). Resolver referencias entre documentos.
    * Guardrail: Validar que los metadatos extraídos cumplan con un esquema predefinido.

3. Decomposición (Chunking) Estructural:
    * Acción: Dividir los documentos en `Chunks` (fragmentos) que respeten los límites semánticos (párrafos, artículos, secciones). Cada `Chunk` debe heredar los metadatos del documento padre y añadir su propia ubicación (ej. `página: 5, sección: 3.1`).
    * Guardrail: Los `Chunks` no deben exceder un tamaño máximo para caber en el contexto del LLM.

4. Indexación Híbrida:
    * Acción: Crear dos índices para cada `Chunk`:
        * Índice Vectorial: Un embedding (vector numérico) que captura el significado semántico del `Chunk`.
        * Índice Lexical (BM25): Un índice de palabras clave para búsquedas exactas.
    * Guardrail: El acceso al índice debe estar protegido por políticas que filtren los resultados según los permisos del usuario (`ACLs`).

5. Servicio de Recuperación (Retrieval):
    * Acción: Cuando un usuario pregunta, el sistema primero busca en ambos índices para encontrar los `Chunks` más relevantes. Un paso de `re-ranking` refina los resultados. El contexto final que se envía al LLM incluye el texto de los `Chunks` y sus metadatos de citación.
    * Guardrail: La respuesta final del LLM debe incluir citas exactas al documento, sección y página de donde se extrajo la información.

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
