# Ontología Formal de la Metodología ASTA-Kore (A-K)

## Versión 1.0

## Propósito

Esta ontología formaliza los conceptos y relaciones de la metodología ASTA-Kore (A-K) para reducir la ambigüedad, asegurar la interoperabilidad semántica y servir como un modelo de referencia para la implementación y la gobernanza.

## 1. Conceptos Fundamentales (Meta-Ontología)

Estos son los elementos irreductibles que estructuran todo el marco.

### 1.1. `Matriz de Coherencia`

* Descripción: Es la herramienta de navegación cognitiva central del marco. Descompone la realidad organizacional en componentes ortogonales para reducir la carga cognitiva.
* Composición: Se compone de dos ejes y tres niveles.
* Relaciones:
  * `contiene` -> `Eje del Ser (Σ)`
  * `contiene` -> `Eje del Devenir (Δ)`
  * `se observa a través de` -> `Niveles de Resolución`
  * `genera` -> 6 `Celdas de la Realidad`

### 1.2. `Eje del Ser (Σ)`

* Descripción: La dimensión del diseño estructural y estático. La "anatomía" de la organización en reposo.
* Pregunta que responde: *¿Qué somos? ¿Cuáles son las partes y sus reglas?*
* Instancias de artefactos: `Mapa de Capacidades`, `Canvas de EV`, `Contratos Conversacionales`.

### 1.3. `Eje del Devenir (Δ)`

* Descripción: La dimensión del flujo operacional y dinámico. La "fisiología" de la organización en el tiempo.
* Pregunta que responde: *¿Qué hacemos? ¿Cómo creamos valor y aprendemos?*
* Instancias de artefactos: `Ciclo de Valor y Capacidad`, `OKRs`, `Tablero de Flujo`.

### 1.4. `Niveles de Resolución`

* Descripción: Una jerarquía de abstracción para gestionar la complejidad y enfocar la atención.
* Composición:
  * `Nivel Estratégico (E)`: Horizonte del propósito y largo plazo (anual+).
  * `Nivel Táctico (T)`: Horizonte del diseño y planificación de unidades de valor (trimestral).
  * `Nivel Operacional (O)`: Horizonte de la ejecución y reglas de corto plazo (diario/semanal).

### 1.5. `Celdas de la Realidad`

* Descripción: Las seis vistas ortogonales generadas por la intersección de los ejes y niveles. Cada celda responde a una pregunta fundamental y contiene artefactos específicos.
* Instancias:
  * `Σ-E (Diseño Estratégico)`: *¿Qué capacidades tenemos y cuál es nuestro propósito?*
  * `Σ-T (Diseño Táctico)`: *¿Cuál es la anatomía de esta unidad de valor?*
  * `Σ-O (Diseño Operacional)`: *¿Cuáles son las reglas e interfaces de esta unidad?*
  * `Δ-E (Flujo Estratégico)`: *¿Cómo gobernamos el valor y la inversión?*
  * `Δ-T (Flujo Táctico)`: *¿Cuál es nuestra hipótesis de valor para este ciclo?*
  * `Δ-O (Flujo Operacional)`: *¿Cómo ejecutamos el trabajo y capturamos el aprendizaje?*

### 1.6. `Entidad de Valor (EV)`

* Descripción: El "átomo" del marco. La unidad fundamental de análisis, diseño, gestión e inversión. Reemplaza términos ambiguos como "proyecto", "sistema" o "aplicación".
* Definición Formal: Un sistema sociotécnico con un propósito explícito, fronteras definidas por interfaces contractuales, y cuyo desempeño es medible.
* Atributos (Axiomas):
    1. `tiene un` -> Propósito Explícito y Valor Público.
    2. `tiene` -> Fronteras Definidas por Interfaces (Contratos).
    3. `es una` -> Composición Sociotécnica.
    4. `tiene un` -> Desempeño Medible.
* Relaciones:
  * `se describe completamente por` -> El conjunto de sus 6 vistas en la `Matriz de Coherencia` (su "Genoma").
  * `materializa` -> una o más `Capacidades`.
  * `es gestionada en` -> un `Portafolio de EVs`.

### 1.7. `Contrato`

* Descripción: Un acuerdo explícito que define la interacción entre dos `Entidades de Valor`. Es el resultado de una conversación guiada, no un documento legalista. Se implementa como artefacto versionado (YAML/JSON) que puede ser validado automáticamente.
* Tipos:
  * `Contrato de Datos`: Define qué datos se comparten, con qué calidad (SLOs), clasificación de seguridad y propósito.
  * `Contrato de API`: Define endpoints, SLOs de disponibilidad/latencia, autenticación y versionado.
  * `Contrato de Agente`: Define autonomía, herramientas permitidas, guardrails y puntos de supervisión humana (HITL).
  * `Contrato de Proceso`: Define flujo de negocio automatizado, eventos, reglas y excepciones.
* Atributos:
  * `origen`: normativo (ley/decreto), negociado (acuerdo entre equipos), técnico (decisión arquitectónica)
  * `version`: Versionado semántico para evolución controlada
  * `slos`: Compromisos medibles de calidad/rendimiento

### 1.8. `Nodo de Gobernanza (NG)`

* Descripción: Una entidad (persona o comité) responsable de la toma de decisiones estratégicas sobre un conjunto de `Entidades de Valor`.
* Configuración por Defecto: Un solo Nodo de Gobernanza para toda la organización.
* Configuración Federada (Opcional): Se activa solo cuando la complejidad lo justifica:
  * **Criterios para Federación:**
    * Múltiples organizaciones soberanas colaborando (ej. ecosistema gubernamental)
    * Múltiples divisiones autónomas con presupuestos independientes
    * Necesidad de autonomía local con alineamiento estratégico central
  * **Estructura Federada:**
    * `Nodo Central de Gobernanza (NCG)`: Responsable de estrategia, estándares y plataformas compartidas del ecosistema. *Relación:* `coordina` múltiples `Nodos Federados`.
    * `Nodo Federado de Gobernanza (NFG)`: Responsable de implementación de estrategia y gestión del portafolio en un dominio específico. *Relación:* `implementa directrices de` un `NCG`.
* Principio: Comenzar simple (un NG), federar solo cuando sea necesario.

### 1.9. `Ciclo de Retroalimentación`

* Descripción: Patrón fundamental de adaptación basado en LEAN². Es el mecanismo universal para el aprendizaje y la mejora continua a cualquier escala.
* Estructura Invariante:
  1. **MEDIR**: Capturar evidencia objetiva del sistema
  2. **IDENTIFICAR**: Detectar restricción, aprendizaje o desviación
  3. **INTERVENIR**: Diseñar y ejecutar experimento o decisión
  4. **VERIFICAR**: Medir impacto de la intervención
* Instancias (Fractalidad):
  * `Retrospectiva del Flujo (Δ-O)`: Cada 1-2 semanas, equipo interno, optimiza flujo operacional
  * `Ciclo de Valor y Capacidad / CVC (Δ-E)`: Cada trimestre, equipo + gobernanza, decisiones de inversión
* Relación: Todas las instancias siguen la misma estructura, variando solo en frecuencia, participantes y alcance de decisiones.

## 2. Taxonomía de Artefactos

Estos son los instrumentos cognitivos tangibles para visualizar, discutir y alinear el trabajo.

### 2.1. Artefactos del Eje Σ (Diseño)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Mapa de Capacidades` | Σ-E | Inventariar y evaluar las "habilidades" de la organización para guiar la estrategia. |
| `Canvas de Entidad de Valor` | Σ-T | Mapear la anatomía completa de una EV de forma colaborativa. |
| `Contratos Conversacionales` | Σ-O | Definir acuerdos explícitos de interacción entre EVs (Datos, API, Agente, Proceso). |

**Nota sobre Reglas de Negocio:** Las reglas operacionales de bajo nivel se gestionan mediante:

* **Contratos de Proceso** (Σ-O): Para flujos entre EVs que requieren acuerdos explícitos
* **Código con tests**: Para lógica de negocio interna de una EV
* **ADRs** (Δ-O): Para documentar decisiones sobre reglas de negocio significativas

### 2.2. Artefactos del Eje Δ (Flujo)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Informe de CVC` | Δ-E | Evidencia para ritual de gobernanza: progreso de OKRs, demo, salud del sistema, próxima apuesta. |
| `Mapeo de Historias` | Δ-T | Visualización del backlog priorizado por OKRs. Organiza trabajo en Espina Dorsal + Rebanadas incrementales. |
| `Tablero de Flujo` | Δ-O | Gestionar flujo de trabajo diario con límites WIP. Implementa invariantes de LEAN² (Flujo, Visibilidad, Adaptación). |
| `Bitácora de Decisiones (ADR)` | Δ-O | Registrar decisiones arquitectónicas significativas. **Referencia Contratos** cuando la decisión define una interfaz (el ADR documenta el "porqué", el Contrato especifica el "qué"). |

## 3. Léxico de Conceptos Clave

### 3.1. Conceptos Estratégicos (Nivel E)

Estos conceptos se relacionan con el propósito, la dirección y la gobernanza a largo plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Capacidad` | Una habilidad de la organización para lograr un resultado (ej. "Fiscalización"). Es agnóstica a la estructura. | • `es inventariada en` -> `Mapa de Capacidades` (Σ-E)<br>• `es materializada por` -> una o más `Entidades de Valor`<br>• `su madurez y criticidad son evaluadas en` -> Protocolo de Diagnóstico de Capacidades |
| `Portafolio de EVs` | El conjunto de todas las `Entidades de Valor` que una organización gestiona y financia. | • `es gestionado a través de` -> `Ciclo de Valor y Capacidad (CVC)` (Δ-E)<br>• `es revisado durante` -> Protocolo de Revisión del Portafolio<br>• `contiene` -> `Entidades de Valor` |
| `Valor Público` | El impacto positivo y medible en la ciudadanía. Es el norte ético y estratégico. | • `es el propósito último de` -> toda `Entidad de Valor` en el sector público<br>• `se mide a través de` -> OKRs (Caja 9 del `Canvas de EV`) |

### 3.2. Conceptos Tácticos (Nivel T)

Estos conceptos se centran en el diseño y la planificación de una `Entidad de Valor` en el mediano plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `#NoProjects` | Filosofía operativa que aboga por equipos estables y flujos de valor continuos en lugar de proyectos con inicio y fin. | • `es el paradigma operativo para la evolución de` -> `Entidades de Valor` |
| `Hipótesis de Valor` | La premisa experimental detrás de un OKR: "Creemos que haciendo X, lograremos el resultado Y". | • `es formulada en` -> Caja 9 del `Canvas de EV` (OKRs activos)<br>• `se valida o invalida mediante` -> la medición de `Resultados Clave (KRs)`<br>• `su resultado se reporta en` -> el `Informe de CVC` |
| `Esqueleto Andante` | La versión más simple de un servicio que permite a un usuario completar el viaje de punta a punta. El primer incremento de valor. | • `es definido en` -> el `Mapeo de Historias` como primera rebanada horizontal<br>• `es el objetivo de entrega del` -> Protocolo "Génesis"<br>• `es un tipo de` -> MVP (Minimum Viable Product) |

### 3.3. Conceptos Operacionales (Nivel O)

Estos conceptos se refieren a la ejecución, las reglas y el aprendizaje en el corto plazo.

#### 3.3.1. Invariantes de Flujo (Fundamentos LEAN²)

Estos son los conceptos primitivos que estructuran la gestión operacional del trabajo. Derivan de la destilación de Lean Manufacturing sin dependencias culturales.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Flujo` | El movimiento del trabajo a través del sistema del equipo. El objetivo es optimizar su velocidad y predictibilidad. | • `es gestionado con` -> el `Tablero de Flujo (Xanpan)` (Δ-O)<br>• `es medido por` -> `Latencia`, `Throughput`, `Flow Efficiency`<br>• `es el invariante central de` -> LEAN² |
| `Latencia` | Tiempo entre inicio y completitud de una unidad de trabajo. Métrica primitiva de flujo. | • `se mide como` -> `T_entrega - T_demanda`<br>• `es la métrica objetivo de` -> optimización de `Flujo`<br>• `se descompone en` -> Lead Time (total) y Cycle Time (trabajo activo) |
| `Visibilidad` | Estado del sistema observable en tiempo real. Segundo invariante de LEAN². | • `se materializa en` -> `Tablero de Flujo (Xanpan)` con estados explícitos<br>• `se mide como` -> `% trabajo con estado explícito`<br>• `habilita` -> identificación de restricciones |
| `Adaptación` | Modificación del sistema basada en medición de flujo. Tercer invariante de LEAN². | • `se ejecuta mediante` -> `Ciclo de Retroalimentación` (Medir → Identificar → Intervenir → Verificar)<br>• `se mide como` -> `Δ métrica / intervención`<br>• `se ritualiza en` -> Retrospectivas del Flujo |
| `Límite de WIP` | Restricción explícita sobre la cantidad de trabajo en progreso. Implementa el mecanismo de Pull Constraint. | • `es una política de` -> el `Tablero de Flujo (Xanpan)` (Δ-O)<br>• `su propósito es` -> mejorar el `Flujo` y hacer visibles los cuellos de botella<br>• `su valor inicial es` -> Capacidad_equipo × 1.5 (ajustar según medición) |
| `Restricción` | Etapa del flujo que limita la capacidad total del sistema. Cuello de botella. | • `se identifica como` -> estado con mayor acumulación de trabajo<br>• `es el objetivo de` -> intervenciones de mejora<br>• `su rotación indica` -> mejora sistémica |
| `Desperdicio` | Actividad que no transforma trabajo hacia completitud. | • `se clasifica en` -> 7 tipos (Espera, Sobreproceso, Transporte, Inventario, Movimiento, Defectos, Sobreproducción)<br>• `se prioriza por` -> impacto en `Latencia` medida<br>• `su eliminación es` -> criterio de decisión operacional |

#### 3.3.2. Conceptos Operacionales Generales

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Deuda Técnica` | Metáfora para las consecuencias a largo plazo de tomar atajos en el diseño o la implementación. | • `debe ser gestionada explícitamente` -> asignando un porcentaje de capacidad (ver "Objetivo Cero")<br>• `su pago se planifica como` -> `Historias de Usuario` o `Epics` en el `Mapeo de Historias`<br>• `es un tipo de` -> `Desperdicio` (categoría: Defectos diferidos) |
| `Humano-en-el-Bucle (HITL)` | Patrón de diseño sociotécnico donde un agente autónomo (IA) requiere validación humana en puntos críticos. | • `es un atributo de` -> la `Composición Sociotécnica` de una `EV`<br>• `se especifica en` -> el `Contrato de Agente IA` (Σ-O) |

#### 3.4. Conceptos de Gestión del Cambio

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Mapa de Stakeholders` | Artefacto que clasifica a los actores afectados por un cambio según su Poder e Interés, permitiendo diseñar estrategias diferenciadas de adopción. | • `es construido en` -> Protocolo "Adopción Federada" (4.5)<br>• `segmenta actores en` -> 4 cuadrantes (Campeones, Guardianes, Adoptantes Tempranos, Observadores)<br>• `informa la estrategia de` -> Roadmap de Adopción |
| `Roadmap de Adopción` | Secuencia temporal de adopción de un cambio organizada en Olas (H1, H2, H3), cada una con criterios de paso basados en evidencia. | • `es integrado al` -> `Mapeo de Historias` (Δ-T)<br>• `define` -> Esqueleto Andante del Cambio<br>• `sus criterios de paso se validan en` -> `CVC` |
| `Observatorio de Adopción` | Dashboard que muestra en tiempo real el progreso de adopción de un cambio (% equipos por ola, KPIs de valor, testimonios). | • `se actualiza en` -> `CVC` trimestral<br>• `implementa el principio de` -> Transparencia Radical<br>• `es un tipo de` -> Tablero de Métricas (Δ-O) |

Ahora tenemos una estructura de tres capas:

1. Meta-Ontología: Los conceptos abstractos y fundamentales (Matriz, Ejes, Niveles).
2. Taxonomía de Artefactos: Las herramientas tangibles que instancian la meta-ontología.
3. Léxico de Conceptos Clave: El vocabulario para describir la realidad operacional a través de los artefactos.
