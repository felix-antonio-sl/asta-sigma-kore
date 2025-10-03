# metodología unificada

## Ontología Formal de la Metodología ASTA-Kore (A-K)

### Versión 1.0

### Propósito

Esta ontología formaliza los conceptos y relaciones de la metodología ASTA-Kore (A-K) para reducir la ambigüedad, asegurar la interoperabilidad semántica y servir como un modelo de referencia para la implementación y la gobernanza.

---

### 1. Conceptos Fundamentales (Meta-Ontología)

Estos son los elementos irreductibles que estructuran todo el marco.

#### 1.1. `Matriz de Coherencia`

* Descripción: Es la herramienta de navegación cognitiva central del marco. Descompone la realidad organizacional en componentes ortogonales para reducir la carga cognitiva.
* Composición: Se compone de dos ejes y tres niveles.
* Relaciones:
  * `contiene` -> `Eje del Ser (Σ)`
  * `contiene` -> `Eje del Devenir (Δ)`
  * `se observa a través de` -> `Niveles de Resolución`
  * `genera` -> 6 `Celdas de la Realidad`

#### 1.2. `Eje del Ser (Σ)`

* Descripción: La dimensión del diseño estructural y estático. La "anatomía" de la organización en reposo.
* Pregunta que responde: *¿Qué somos? ¿Cuáles son las partes y sus reglas?*
* Instancias de artefactos: `Mapa de Capacidades`, `Canvas de EV`, `Contratos Conversacionales`.

#### 1.3. `Eje del Devenir (Δ)`

* Descripción: La dimensión del flujo operacional y dinámico. La "fisiología" de la organización en el tiempo.
* Pregunta que responde: *¿Qué hacemos? ¿Cómo creamos valor y aprendemos?*
* Instancias de artefactos: `Ciclo de Valor y Capacidad`, `OKRs`, `Tablero de Flujo`.

#### 1.4. `Niveles de Resolución`

* Descripción: Una jerarquía de abstracción para gestionar la complejidad y enfocar la atención.
* Composición:
  * `Nivel Estratégico (E)`: Horizonte del propósito y largo plazo (anual+).
  * `Nivel Táctico (T)`: Horizonte del diseño y planificación de unidades de valor (trimestral).
  * `Nivel Operacional (O)`: Horizonte de la ejecución y reglas de corto plazo (diario/semanal).

#### 1.5. `Celdas de la Realidad`

* Descripción: Las seis vistas ortogonales generadas por la intersección de los ejes y niveles. Cada celda responde a una pregunta fundamental y contiene artefactos específicos.
* Instancias:
  * `Σ-E (Diseño Estratégico)`: *¿Qué capacidades tenemos y cuál es nuestro propósito?*
  * `Σ-T (Diseño Táctico)`: *¿Cuál es la anatomía de esta unidad de valor?*
  * `Σ-O (Diseño Operacional)`: *¿Cuáles son las reglas e interfaces de esta unidad?*
  * `Δ-E (Flujo Estratégico)`: *¿Cómo gobernamos el valor y la inversión?*
  * `Δ-T (Flujo Táctico)`: *¿Cuál es nuestra hipótesis de valor para este ciclo?*
  * `Δ-O (Flujo Operacional)`: *¿Cómo ejecutamos el trabajo y capturamos el aprendizaje?*

#### 1.6. `Entidad de Valor (EV)`

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

#### 1.7. `Contrato Conversacional`

* Descripción: Un acuerdo explícito que define la interacción entre dos `Entidades de Valor`. Es el resultado de una conversación guiada, no un documento legalista. Su implementación técnica se materializa en los `Contratos Nexus` (`de Datos`, `de Proceso`, `de Agente`, etc.).

#### 1.8. `Nodo de Gobernanza`

* Descripción: Una entidad (persona o comité) responsable de la toma de decisiones estratégicas sobre un conjunto de `Entidades de Valor`.
* Subtipos:
  * `Nodo Central de Gobernanza (NCG)`: Responsable de la estrategia, estándares y plataformas compartidas de todo el ecosistema. *Relación:* `coordina` múltiples `Nodos Federados`.
  * `Nodo Federado de Gobernanza (NFG)`: Responsable de la implementación de la estrategia y la gestión del portafolio en un dominio o institución específica. *Relación:* `implementa directrices de` un `NCG`.

#### 1.9. `Overlay Regulatorio`

* Descripción: Un conjunto de axiomas y restricciones derivados de un marco normativo (leyes, decretos) que se aplican a una o más `Entidades de Valor`.
* Relación: Una `EV` `debe cumplir con` uno o más `Overlays Regulatorios`.

#### 1.10. `Proyecto Espejo`

* Descripción: Un artefacto administrativo auxiliar. Es la representación de un ciclo de inversión trimestral de una `EV`, utilizada para la comunicación y cumplimiento con sistemas de gobernanza externos (ej. control presupuestario). Su alcance está definido por un `OKR Trimestral`.
* Relación: Un `Ciclo de Valor y Capacidad (CVC)` `puede generar` un `Proyecto Espejo`.

---

### 2. Taxonomía de Artefactos

Estos son los instrumentos cognitivos tangibles para visualizar, discutir y alinear el trabajo.

#### 2.1. Artefactos del Eje Σ (Diseño)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Mapa de Capacidades` | Σ-E | Inventariar y evaluar las "habilidades" de la organización para guiar la estrategia. |
| `Canvas de Entidad de Valor` | Σ-T | Mapear la anatomía completa de una EV de forma colaborativa. |
| `Contratos Conversacionales` | Σ-O | Definir acuerdos explícitos de interacción entre EVs (Datos, API, IA). |
| `Fichas de Control` | Σ-O | Especificar reglas de negocio o procedimientos operacionales de bajo nivel. |

#### 2.2. Artefactos del Eje Δ (Flujo)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Ciclo de Valor y Capacidad (CVC)` | Δ-E | Ritual de gobernanza estratégica para tomar decisiones de inversión basadas en evidencia. |
| `OKRs` | Δ-E, Δ-T | Lenguaje universal para el alineamiento estratégico y la formulación de hipótesis de valor. |
| `Mapeo de Historias` | Δ-T | Organizar visualmente el backlog para la entrega incremental de valor. |
| `Tablero de Flujo (Xanpan)` | Δ-O | Gestionar el flujo de trabajo diario, limitando el WIP para maximizar la velocidad. |
| `Bitácora de Decisiones (ADR)` | Δ-O | Registrar decisiones arquitectónicas significativas para combatir la amnesia organizacional. |

### 3. Léxico de Conceptos Clave

#### 3.1. Conceptos Estratégicos (Nivel E)

Estos conceptos se relacionan con el propósito, la dirección y la gobernanza a largo plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Capacidad` | Una habilidad de la organización para lograr un resultado (ej. "Fiscalización"). Es agnóstica a la estructura. | • `es inventariada en` -> `Mapa de Capacidades` (Σ-E)<br>• `es materializada por` -> una o más `Entidades de Valor`<br>• `su madurez y criticidad son evaluadas en` -> Protocolo de Diagnóstico de Capacidades (3.1) |
| `Portafolio de EVs` | El conjunto de todas las `Entidades de Valor` que una organización gestiona y financia. | • `es gestionado a través de` -> `Ciclo de Valor y Capacidad (CVC)` (Δ-E)<br>• `es revisado durante` -> Protocolo de Revisión del Portafolio (3.3)<br>• `contiene` -> `Entidades de Valor` |
| `Valor Público` | El impacto positivo y medible en la ciudadanía. Es el norte ético y estratégico. | • `es el propósito último de` -> toda `Entidad de Valor` en el sector público<br>• `se mide a través de` -> `OKRs` de alto nivel |
| `Overlay Regulatorio` | Conjunto de axiomas globales derivados de la regulación, que actúan como restricciones de diseño. | • `es traducido desde` -> Leyes y Normativas<br>• `restringe el diseño de` -> todas las `Entidades de Valor`<br>• `su cumplimiento se verifica en` -> `Contratos Conversacionales` y `CVCs` |

#### 3.2. Conceptos Tácticos (Nivel T)

Estos conceptos se centran en el diseño y la planificación de una `Entidad de Valor` en el mediano plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `#NoProjects` | Filosofía operativa que aboga por equipos estables y flujos de valor continuos en lugar de proyectos con inicio y fin. | • `es el paradigma operativo para la evolución de` -> `Entidades de Valor` |
| `Hipótesis de Valor` | La premisa experimental detrás de un OKR: "Creemos que haciendo X, lograremos el resultado Y". | • `es formulada en` -> `OKRs Trimestrales` (Δ-T)<br>• `se valida o invalida mediante` -> la medición de `Resultados Clave (KRs)`<br>• `su resultado se reporta en` -> el `Informe de CVC` |
| `Esqueleto Andante` | La versión más simple de un servicio que permite a un usuario completar el viaje de punta a punta. El primer incremento de valor. | • `es definido en` -> el `Mapeo de Historias` (Δ-T)<br>• `es el objetivo de entrega del` -> Protocolo "Génesis" (7.1)<br>• `es un tipo de` -> MVP (Minimum Viable Product) |

#### 3.3. Conceptos Operacionales (Nivel O)

Estos conceptos se refieren a la ejecución, las reglas y el aprendizaje en el corto plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Flujo` | El movimiento del trabajo a través del sistema del equipo. El objetivo es optimizar su velocidad y predictibilidad. | • `es gestionado con` -> el `Tablero de Flujo (Xanpan)` (Δ-O)<br>• `es medido por` -> Métricas de Flujo (Lead Time, Cycle Time, Throughput) |
| `Límite de WIP` | Restricción explícita sobre la cantidad de trabajo en progreso. Es el mecanismo central de Xanpan. | • `es una política de` -> el `Tablero de Flujo (Xanpan)` (Δ-O)<br>• `su propósito es` -> mejorar el `Flujo` y hacer visibles los cuellos de botella |
| `Humano-en-el-Bucle (HITL)` | Patrón de diseño sociotécnico donde un agente autónomo (IA) requiere validación humana en puntos críticos. | • `es un atributo de` -> la `Composición Sociotécnica` de una `EV`<br>• `se especifica en` -> el `Contrato de Agente IA` (Σ-O) |
| `Deuda Técnica` | Metáfora para las consecuencias a largo plazo de tomar atajos en el diseño o la implementación. | • `debe ser gestionada explícitamente` -> asignando un porcentaje de capacidad (ver "Objetivo Cero")<br>• `su pago se planifica como` -> `Historias de Usuario` o `Epics` en el `Mapeo de Historias` |

---

Ahora tenemos una estructura de tres capas:

1. Meta-Ontología: Los conceptos abstractos y fundamentales (Matriz, Ejes, Niveles).
2. Taxonomía de Artefactos: Las herramientas tangibles que instancian la meta-ontología.
3. Léxico de Conceptos Clave: El vocabulario para describir la realidad operacional a través de los artefactos.


---


## Libro de Protocolos de ΑΣ-K

> Este libro traduce el modelo mental abstracto en una serie de protocolos ejecutables y rituales organizacionales. Se estructura en torno a los ciclos temporales de la organización, desde la estrategia anual hasta la entrega diaria, enseñando el "cómo" de manera prescriptiva y detallada.

### CAPÍTULO 1: EL CICLO ANUAL — CALIBRACIÓN ESTRATÉGICA (Σ-E / Δ-E)

> Un protocolo de alto nivel donde el `Nodo Central de Gobernanza (NCG)` diagnostica las capacidades del ecosistema (`Mapa de Capacidades`), aprovisiona el financiamiento para los "Portafolios de Capacidades" y declara el propósito a través de `OKRs Anuales`.

#### 1.1. Fase 1: Diagnóstico de Capacidades (Protocolo Σ-E)

Propósito: Crear un `Mapa de Capacidades` para comprender las fortalezas y debilidades de la organización.
Artefacto Asociado: `catalogo.md`

##### Protocolo de Facilitación: Taller de Mapeo de Capacidades

1. Preparación:
    * Participantes: Grupo transversal de líderes y expertos.
    * Insumos: Planes estratégicos, mandatos legales, resultados del año anterior.
2. Ejecución (Taller de 3 horas):
    * Divergencia (60 min): Lluvia de ideas en post-its sobre la pregunta: "¿Qué cosas hace nuestra organización para cumplir su misión?".
    * Convergencia (90 min): Agrupar post-its por afinidad semántica para definir macro-capacidades.
3. Consolidación:
    * Formalizar el resultado en la plantilla del `Mapa de Capacidades`.
    * Evaluar cada capacidad usando dos criterios: Madurez (¿Cuán bien lo hacemos?) y Criticidad (¿Cuán importante es para la estrategia?).
    * Visualizar las brechas estratégicas (alta criticidad, baja madurez).

#### 1.2. Fase 2: Declaración de Propósito (Protocolo Σ-E)

Propósito: Traducir el diagnóstico en una dirección estratégica clara a través de `OKRs Anuales`.

##### Protocolo de Facilitación: Taller de Definición de `OKRs Anuales`

1. Preparación:
    * Insumos: `Mapa de Capacidades` con brechas identificadas, resultados de OKRs anteriores, mandatos externos.
2. Ejecución (Taller de 2-3 horas):
    * Derivar Objetivos: Basado en la evidencia, definir 3-5 Objetivos (O) cualitativos e inspiradores para el año.
    * Definir Resultados Clave: Para cada Objetivo, definir 3-5 Resultados Clave (KRs) cuantitativos y medibles que verifiquen el logro del Objetivo.
3. Comunicación:
    * Comunicar los `OKRs Anuales` de forma radical y repetida. Deben actuar como una "Estrella Polar" para toda la organización.

#### 1.3. Fase 3: Revisión del Portafolio de EVs (Protocolo Δ-E)

Propósito: Alinear la inversión y la estructura (el `Portafolio de EVs`) con la nueva estrategia.

##### Protocolo de Decisión

1. Preparación:
    * Crear un inventario de todas las `Entidades de Valor (EVs)` existentes, mapeando cada una a las `Capacidades` que materializa y su costo operacional.
2. Evaluación:
    * Evaluar cada EV según su Costo, Valor, Riesgo y Alineamiento Estratégico con los nuevos `OKRs Anuales`.
3. Ritual de Decisión:
    * Tomar decisiones de inversión a nivel macro para cada EV: Crear, Fusionar, Cerrar (Desinvertir), o Invertir/Mantener.

### CAPÍTULO 2: EL CICLO TRIMESTRAL — NAVEGACIÓN TÁCTICA (Σ-T / Δ-T / Δ-E)

> El corazón del modelo. Cada equipo de una `EV` diseña su anatomía (usando el `Canvas de EV`, identificando los `Overlays Regulatorios` aplicables), planifica su evolución a través de `OKRs Trimestrales`, y rinde cuentas en el `Ciclo de Valor y Capacidad (CVC)` ante su `Nodo Federado de Gobernanza (NFG)`. Opcionalmente, el resultado del CVC se formaliza en un `Proyecto Espejo` para cumplimiento externo.

#### 2.1. Fase 1: Diseño de la Entidad de Valor (Protocolo Σ-T)

Propósito: Crear o actualizar el `Canvas de Entidad de Valor` para asegurar un entendimiento compartido de la anatomía de la EV.
Artefacto Asociado: `catalogo.md`

##### Protocolo de Facilitación: Taller Colaborativo del `Canvas de EV`

1. Preparación:
    * Participantes: Equipo completo de la EV y stakeholders clave.
    * Insumos: `Mapa de Capacidades` y `OKRs Anuales`.
2. Ejecución (Taller de 2-3 horas):
    * Usando la plantilla del `Canvas de EV` en una pizarra, guiar al equipo a través de las 9 secciones, comenzando por el Propósito y los Actores.
    * Fomentar el diálogo con preguntas desafiantes.
    * Validar la coherencia interna del canvas al finalizar.

#### 2.2. Fase 2: Planificación de la Evolución (Protocolo Δ-T)

Propósito: Formular una `Hipótesis de Valor` para el trimestre y un plan para validarla.
Artefacto Asociado: `catalogo.md`

##### Secuencia de Protocolos

1. Formulación de `OKRs Trimestrales`:
    * Principio OKR-First: El backlog se subordina a los OKRs. Primero se define el resultado (KR), luego se crea el trabajo.
    * Taller de Formulación: Basado en el `Canvas de EV` y los `OKRs Anuales`, el equipo define 1-2 Objetivos y 2-4 Resultados Clave para el trimestre. Foco en *outcomes*, no *outputs*.
2. Desglose de Valor con `Mapeo de Historias`:
    * Taller de Mapeo: El equipo traduce los OKRs en un backlog visual.
    * Construir la Espina Dorsal: Identificar las grandes etapas del viaje del usuario.
    * Lluvia de Ideas de Historias: Generar `Historias de Usuario` debajo de cada etapa.
    * Definir el `Esqueleto Andante`: Trazar la primera "rebanada" de valor (MVP) que se construirá para validar la hipótesis del OKR.

#### 2.3. Fase 3: Gobernanza del Valor (Protocolo Δ-E)

Propósito: Cerrar el bucle de aprendizaje, conectando la ejecución táctica con la gobernanza estratégica.
Artefacto Asociado: `catalogo.md`

##### Protocolo del Ritual: Ciclo de Valor y Capacidad (CVC)

Referencia operativa: [calendario_cvc_2025.md](./calendario_cvc_2025.md)

1. Preparación:
    * El equipo de la EV prepara un `Informe de CVC` conciso y basado en evidencia (progreso de OKRs, salud del sistema, aprendizaje).
2. Ejecución (Reunión de 60 min):
    * Agenda Estricta:
        1. Progreso de OKRs y Aprendizaje (20 min).
        2. Demostración de Valor (Software funcionando) (15 min).
        3. Salud del Sistema y del Equipo (10 min).
        4. Próxima Apuesta de Valor y Decisión (15 min).
    * Decisión de Inversión Obligatoria: La gobernanza debe tomar una de cuatro decisiones explícitas sobre la EV: Continuar/Pivotar, Expandir, Reducir, o Cerrar.

### CAPÍTULO 3: EL CICLO DE ENTREGA — EJECUCIÓN OPERACIONAL (Σ-O / Δ-O)

> Los ritmos de alta frecuencia que transforman la planificación táctica en valor tangible y aprendizaje estructurado.

#### 3.1. Fase 1: Refinamiento de Interfaces y Controles (Protocolo Σ-O)

Propósito: Asegurar que las "reglas del juego" entre componentes y equipos sean explícitas antes de construir.
Artefacto Asociado: `catalogo.md`

##### Protocolo de Diseño: Negociación de `Contratos Conversacionales`

1. Activación: Se activa cuando una nueva `Historia de Usuario` requiere una nueva interacción entre sistemas o equipos.
2. Ejecución (Conversación Guiada):
    * El arquitecto o líder técnico facilita una reunión entre las partes.
    * Usando los Checklists de Contratos (de API, Datos o IA), se negocian y acuerdan explícitamente los compromisos (interfaces, SLOs, manejo de errores).
    * El acuerdo se documenta de forma ligera (ej. en una wiki).

#### 3.2. Fase 2: Gestión del Flujo de Entrega (Protocolo Δ-O)

Propósito: Maximizar el flujo de valor usando Xanpan.
Artefacto Asociado: `catalogo.md`

##### Protocolos de Flujo

1. Diseño del `Tablero de Flujo (Xanpan)`:
    * Definir las columnas que modelan el flujo de trabajo.
    * Establecer Límites de WIP explícitos para las columnas "en progreso".
    * Acordar una Definición de "Hecho" rigurosa.
2. Rituales de Flujo:
    * Daily Standup (15 min): Sincronización diaria enfocada en el flujo (de derecha a izquierda en el tablero).
    * Reposición Semanal (30 min): El equipo "jala" nuevas historias priorizadas al tablero.
    * Retrospectiva del Flujo (60 min, cada 1-2 semanas): El equipo reflexiona sobre cómo mejorar su sistema de trabajo.

#### 3.3. Fase 3: Captura del Aprendizaje (Protocolo Δ-O)

Propósito: Transformar el conocimiento tácito del equipo en un activo explícito para la organización.
Artefacto Asociado: `catalogo.md`

##### Protocolo de Documentación: `Bitácora de Decisiones (ADR)`

1. Identificar una Decisión Significativa:
    * Heurística: ¿La decisión afecta la estructura, las características no funcionales, las dependencias o las interfaces? ¿Fue un debate con múltiples opciones? ¿Es costosa de revertir? Si es así, merece un ADR.
2. Redactar el ADR "Justo a Tiempo":
    * Usar la plantilla del `ADR` para documentar el Contexto, la Decisión y las Consecuencias (positivas y negativas).
3. Inmutabilidad:
    * Un ADR publicado no se edita. Si la decisión cambia, se crea un nuevo ADR que reemplaza al antiguo, creando un historial trazable.

### CAPÍTULO 4: Libro de Recetas: Protocolos para Escenarios Complejos

> "Recetas" que orquestan los protocolos básicos para abordar escenarios de transformación complejos del mundo real.

#### 4.1. Protocolo "Génesis" (Para Creación de Valor desde Cero)

Escenario: Una nueva idea de servicio digital o una hipótesis de valor que no encaja en una `EV` existente.

1. Fase de Ignición:
    * Se conecta la idea a un `OKR Anual` estratégico para asegurar el alineamiento.
    * Se forma un Equipo Mínimo Viable (MVT), un equipo pequeño y multidisciplinario, cuya única misión es validar o invalidar la hipótesis de valor en el menor tiempo posible.

2. Fase de Validación:
    * El MVT ejecuta un ciclo rápido de `Canvas de EV` (para modelar la hipótesis) y `Mapeo de Historias` (para definir el trabajo).
    * El objetivo es construir un `Esqueleto Andante`: la mínima funcionalidad que permite a un usuario real completar el viaje de punta a punta y así obtener aprendizaje validado.

3. Fase de Escalado:
    * El MVT presenta su aprendizaje, métricas y demo en un `CVC`.
    * Si la evidencia es positiva, la gobernanza aprueba la inversión para escalar la iniciativa, convirtiendo al MVT en una `EV` formal con un equipo estable y financiación recurrente.

#### 4.2. Protocolo "Metamorfosis" (Para Modernización de Sistemas Legacy)

Escenario: Un sistema monolítico crítico, frágil y obsoleto que frena la innovación.

1. Fase de Arqueología:
    * Se utiliza el `Canvas de EV` para modelar el sistema legacy "As-Is". El objetivo no es documentarlo exhaustivamente, sino entender su propósito, sus actores y sus fronteras actuales.

2. Fase de Estrangulamiento (Strangler Fig Pattern):
    * Se identifica la primera capacidad de negocio a extraer del monolito.
    * Se define la nueva interfaz de esta capacidad a través de un `Contrato de Servicio (API)` claro.
    * Se formula un `OKR Trimestral` para construir el nuevo microservicio y migrar al primer consumidor para que lo utilice, desviando el tráfico del antiguo sistema.

3. Fase de Coexistencia y Migración:
    * El nuevo servicio y el monolito operan en paralelo. Se repite el ciclo, extrayendo capacidad por capacidad, "estrangulando" gradualmente el sistema legacy hasta que pueda ser desmantelado de forma segura.

#### 4.3. Protocolo "Simbiosis" (Para Orquestación de Ecosistemas)

Escenario: Un proceso de negocio de alto valor que requiere la colaboración de múltiples entidades, sistemas o departamentos, cada uno con sus propias prioridades.

1. Fase de Mapeo Federado:
    * Se modela a cada actor clave del ecosistema como una `EV` independiente, utilizando el `Canvas de EV` para clarificar su rol, propósito y servicios.

2. Fase de Negociación:
    * Se orquesta la definición de `Contratos Conversacionales` explícitos entre las EVs. Esto reemplaza los traspasos informales, las reuniones y los correos electrónicos por acuerdos de servicio predecibles y automatizables (ej. APIs).

3. Fase de Orquestación:
    * Se diseña una `EV Orquestadora` ligera. Su único propósito es gestionar el flujo de valor de punta a punta, llamando a los servicios de las otras EVs según lo definido en los contratos. Esta EV no contiene lógica de negocio, solo la lógica del flujo.

### CAPÍTULO 5: EL META-PROTOCOLO — EVOLUCIÓN DEL MARCO

> ASTA-Kore se aplica a sí mismo. Este capítulo define el mecanismo formal y recurrente para la auditoría y adaptación del propio marco.

#### 5.1. Protocolo de Evolución del Marco (PEM)

* Propósito: Asegurar que el marco ASTA-Kore se mantenga parsimonioso, coherente y alineado con las necesidades del terreno a lo largo del tiempo.
* Referencia Detallada: `protocolo_evolucion.md`

#### 5.2. Principios de Adopción y Cultura

> El marco es un sistema sociotécnico. Su éxito depende tanto de la rigurosidad de sus protocolos como del entorno cultural en el que se implementa.

* Creación de Seguridad Psicológica: El rol del liderazgo es crear un entorno donde los equipos puedan presentar malas noticias (ej. un KR en rojo) sin temor a represalias. Un KR en rojo no es un fracaso, es un dato valioso que gatilla una conversación estratégica sobre si la hipótesis era incorrecta o si la táctica debe cambiar. Sin seguridad psicológica, las métricas se "maquillan" y el aprendizaje se detiene.

* Gestión Explícita de la Capacidad (Objetivo Cero): Los equipos deben poder dedicar un porcentaje explícito de su capacidad (ej. 20%) a actividades no directamente ligadas a los OKRs del trimestre, como la reducción de deuda técnica, la exploración de nuevas tecnologías o la mejora de sus herramientas (el "Objetivo Cero"). Esto asegura la sostenibilidad a largo plazo y previene el agotamiento del sistema.

* Desvinculación de OKRs de la Compensación: Los OKRs son una herramienta de alineamiento y aprendizaje, no de evaluación de desempeño individual. Vincularlos a bonos o promociones incentiva la creación de objetivos poco ambiciosos ("sandbagging") y el miedo a fallar, destruyendo su poder como motor de innovación.

---

### CAPÍTULO 6: Guía de Campo: Heurísticas y Anti-Patrones

> Conocimiento práctico destilado para acelerar la curva de aprendizaje y evitar errores comunes en la aplicación del marco.

#### Guía 6.1: Heurísticas para OKRs

* Foco en Outcomes, no Outputs: Un buen KR mide un cambio en el comportamiento del usuario o en el desempeño del negocio (ej. "Reducir el tiempo de postulación de 15 a 5 minutos"), no la entrega de una funcionalidad (ej. "Entregar el nuevo formulario de postulación").
* Aspiracionales vs. Utilitarios: Diferenciar entre OKRs "lunares" (aspiracionales, donde llegar al 70% es un gran éxito) y OKRs "terrenales" (utilitarios, que se espera cumplir al 100%, como un SLO de disponibilidad).
* Menos es Más: Un equipo no debería tener más de 1-2 Objetivos y 2-4 Resultados Clave por trimestre. El exceso de OKRs diluye el foco.
* Anti-Patrón: El KR como Lista de Tareas: Si tus KRs son una lista de funcionalidades a entregar, no son KRs, son un backlog. Vuelve a preguntar: "¿Qué resultado de negocio esperamos lograr al entregar estas funcionalidades?".

#### Guía 6.2: Heurísticas para Historias de Usuario

* Pequeñas y con Beneficio: Una buena historia debe ser lo suficientemente pequeña para ser completada en pocos días y debe entregar un incremento de valor observable, por mínimo que sea.
* INVEST: Usar el acrónimo INVEST como checklist: Independiente, Negociable, Valiosa, Estimable, Pequeña (Small), Testeable.
* Anti-Patrón: La Historia Técnica sin Valor de Usuario: Evitar historias como "Crear la tabla de usuarios". En su lugar, enmarcarla en valor: "Como nuevo usuario, puedo registrarme en el sistema para acceder a sus funcionalidades", aunque la primera implementación solo guarde el email en una tabla simple.

#### Guía 6.3: Heurísticas para el Flujo (Xanpan)

* Gestionar el Flujo, no las Personas: El tablero y los límites WIP gestionan el flujo de trabajo. El objetivo del equipo es "desatascar" el trabajo de derecha a izquierda, no mantener a cada persona "ocupada".
* El Dolor de los Límites WIP es una Señal: Si un límite WIP se excede constantemente, no es una señal para aumentar el límite, sino para investigar el cuello de botella sistémico que está causando la acumulación.
* Anti-Patrón: El Tablero como "Cementerio de Tickets": Si los ítems entran al tablero pero rara vez salen, o si las columnas de "En Progreso" crecen indefinidamente, el sistema no está funcionando. El foco debe ser terminar trabajo, no empezar trabajo nuevo.

#### Guía 6.4: Heurísticas para Arquitectura y Deuda Técnica

* La Última Milla Responsable: La decisión arquitectónica más importante es dónde trazar las fronteras entre sistemas (`Contratos`). Una buena frontera permite que los equipos trabajen de forma autónoma.
* La Deuda Técnica es como un Préstamo: No toda la deuda es mala. A veces, tomar un atajo consciente para validar una hipótesis rápido es una buena decisión de negocio. Lo importante es que el "préstamo" sea explícito y se planifique su "pago" (refactorización) antes de que los "intereses" (costo del cambio) se vuelvan impagables.
* Anti-Patrón: El ADR como Burocracia: Un ADR no es para documentar cada decisión trivial. Se usa para decisiones significativas: aquellas que son costosas de revertir, que tienen un impacto estructural o que fueron el resultado de un debate con múltiples alternativas viables. Su propósito es combatir la amnesia organizacional, no crear burocracia.


---


## Catálogo de Artefactos Parsimoniosos de A-K

> Una biblioteca de referencia, lista para uso en terreno, con las plantillas mínimas y rigurosas y los checklists de cada artefacto definido en el marco.

### A.1. Plantillas de Nivel Estratégico (Σ-E / Δ-E)

#### Plantilla A.1.1: Mapa de Capacidades (Σ-E)

Instrucciones: Este artefacto se construye en un taller colaborativo con el liderazgo. El objetivo es crear un inventario de las "habilidades" de la organización, no de sus departamentos. Use esta estructura para formalizar el resultado. La evaluación de Madurez y Criticidad es clave para el diagnóstico.

```markdown
## Mapa de Capacidades v1.0 - [Nombre de la Organización]

Fecha: YYYY-MM-DD
Participantes: [Lista de participantes del taller]

---

### 1. Capacidades Centrales (Core)

*Estas son las capacidades que definen la misión principal de la organización.*

| Capacidad | Nivel 1 | Nivel 2 | Madurez (1-4) | Criticidad (1-4) | Notas y Brechas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| C.1 | Gestión de Beneficios Sociales | | 2 (En Desarrollo) | 4 (Crítica) | Proceso manual, alta dependencia de sistemas legacy. |
| | C.1.1 | Postulación y Admisibilidad | 2 (En Desarrollo) | 4 (Crítica) | Alta tasa de error en la documentación. |
| | C.1.2 | Evaluación y Otorgamiento | 1 (Emergente) | 4 (Crítica) | Criterios de evaluación poco claros y no estandarizados. |
| | C.1.3 | Pago y Seguimiento | 3 (Madura) | 3 (Alta) | Proceso de pago robusto pero seguimiento débil. |
| C.2 | Fiscalización en Terreno | | 3 (Madura) | 4 (Crítica) | Equipo experimentado pero sin herramientas digitales. |

### 2. Capacidades de Soporte

*Estas son las capacidades que habilitan a las capacidades centrales.*

| Capacidad | Nivel 1 | Nivel 2 | Madurez (1-4) | Criticidad (1-4) | Notas y Brechas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| S.1 | Gestión de Personas | | 2 (En Desarrollo) | 3 (Alta) | |
| S.2 | Gestión Tecnológica | | 2 (En Desarrollo) | 4 (Crítica) | Alta deuda técnica en plataformas centrales. |

---
Escala de Madurez: 1 (Emergente), 2 (En Desarrollo), 3 (Madura), 4 (Optimizada)
Escala de Criticidad: 1 (Baja), 2 (Media), 3 (Alta), 4 (Crítica)
```

#### Plantilla A.1.2: Informe de Ciclo de Valor y Capacidad (CVC) (Δ-E)

Instrucciones: Este informe es la base para la ceremonia del CVC. Debe ser preparado por el equipo de la EV y enviado a los participantes de la gobernanza 48 horas antes de la reunión. Debe ser conciso, basado en evidencia y centrado en la narrativa de valor y aprendizaje.

```markdown
## Informe de CVC - [Nombre de la EV]

Trimestre: Q[X] [AÑO]
Fecha del Informe: YYYY-MM-DD
Dueño de Producto: [Nombre]
Líder Técnico: [Nombre]

---

#### 1. Resumen Ejecutivo (La Historia en 30 Segundos)

*En una frase, ¿cuál fue nuestra misión este trimestre y cuál fue el resultado principal?*

Ejemplo: "Nuestra misión fue reducir la fricción en el proceso de postulación. Logramos disminuir el tiempo de postulación en un 40% y validamos que un simulador de elegibilidad es la funcionalidad más demandada por los ciudadanos."

---

#### 2. Progreso de OKRs y Aprendizaje

| Objetivo: [El Objetivo del equipo para el trimestre] |
| :--- |
| Resultado Clave (KR) | Línea Base | Objetivo | Resultado Actual | Progreso | Aprendizaje Clave |
| KR 1: [Descripción del KR] | [Valor inicial] | [Valor objetivo] | [Valor al final] | [XX]% | [¿Qué aprendimos al intentar mover esta métrica?] |
| KR 2: [Descripción del KR] | [Valor inicial] | [Valor objetivo] | [Valor al final] | [XX]% | [¿Nuestra hipótesis fue correcta? ¿Qué nos sorprendió?] |

---

#### 3. Salud del Sistema y del Equipo

| Métrica de Salud | Estado | Tendencia | Comentario |
| :--- | :--- | :--- | :--- |
| Disponibilidad del Servicio (SLO) | 🟢 (99.95%) | Estable | Cumplimos nuestro SLO. |
| Latencia p95 (SLO) | 🟡 (250ms) | Empeorando | El aumento de usuarios está impactando la latencia. |
| Salud del Equipo (Autoevaluación) | Nivel 2 | Mejorando | Implementamos CI, mejorando nuestro flujo. |
| Deuda Técnica | 🟡 | Estable | Pagamos el 15% de nuestra capacidad. Riesgo principal: [Describir]. |

---

#### 4. Demo de Valor

*Enlace a un video de 3 minutos o preparado para demo en vivo mostrando el incremento de valor entregado a los usuarios este trimestre.*

---

#### 5. Recomendación de Asignación de Recursos (Propuesta para el Siguiente Trimestre)

*Basado en nuestro aprendizaje, esta es nuestra recomendación para la asignación de recursos desde el Portafolio de Capacidad "[Nombre del Portafolio]".*

Recomendación: [Elegir una: Continuar Inversión / Reorientar hacia Nuevo Objetivo / Expandir para Escalar Impacto / Concluir y Transferir Recursos]

Objetivo Propuesto: [El nuevo Objetivo para el próximo Q]

| Resultado Clave Propuesto (KR) | Hipótesis de Valor |
| :--- | :--- |
| KR 1: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |
| KR 2: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |
```

### A.2. Plantillas de Nivel Táctico (Σ-T / Δ-T)

#### Plantilla A.2.1: Canvas de Entidad de Valor (EV) (Σ-T)

Instrucciones: Este no es un documento para ser rellenado en solitario. Utilice este canvas en una sesión de taller colaborativo (físico o digital) con todos los miembros del equipo de la EV y stakeholders clave. Use post-its y marcadores. El objetivo es generar diálogo, visualizar el sistema como un todo y crear un entendimiento compartido. El resultado es un mapa vivo, no un documento estático.

El canvas se estructura en dos partes: La Anatomía del Valor (el núcleo del sistema) y El Contexto Operacional (sus restricciones y medidas).

```markdown
## Canvas de Entidad de Valor: [Nombre de la EV]

ID: `EV-XXX` | Versión: `1.0` | Equipo Dueño: `<Nombre del Equipo>` | Fecha: `YYYY-MM-DD`

---

#### Parte 1: La Anatomía del Valor

| 1. Propósito y Valor Público | 2. Actores y Experiencia | 3. Flujo de Valor Principal |
| :--- | :--- | :--- |
| ¿POR QUÉ existe esta EV? | ¿PARA QUIÉN diseñamos? | ¿CÓMO funciona de punta a punta? |
| • Propósito Esencial: (Verbo + Qué + Para Qué)<br>• Alineamiento Estratégico: (OKR Anual al que contribuye)<br>• Problema/Oportunidad: (Dolor que resuelve) | • Clientes/Usuarios: (Beneficiarios finales)<br>• Participantes Internos: (Funcionarios que operan el sistema)<br>• Experiencia (Journey): (Frustraciones y motivaciones) | • Evento de Inicio: (Detonante del flujo)<br>• Etapas Macro: (Flujo simple de 3-5 pasos)<br>• Resultado Final: (Producto, servicio o decisión) |
| 4. Capacidades y Servicios Expuestos | 5. Datos Clave (Consumidos y Producidos) | 6. Componentes Tecnológicos |
| ¿Qué VALOR produce para otros? | ¿Qué INFORMACIÓN necesita y genera? | ¿Sobre qué CIMIENTOS se construye? |
| • Capacidades de Negocio: (Habilidades que realiza)<br>• Servicios Expuestos (APIs): (Servicios reutilizables que ofrece)<br>• Consumidores: (Otras EVs que consumen) | • Datos Consumidos: (Productos de Datos que necesita)<br>• Datos Producidos: (Productos de Datos que genera)<br>• Fuente de Verdad: (Dónde reside la autoridad) | • Componentes Principales: (Portal Web, API Gateway, etc.)<br>• Plataformas Transversales: (Identidad, Bus de Eventos, etc.)<br>• Stack Tecnológico: (Lenguajes, BBDD) |

---

#### Parte 2: El Contexto Operacional

| 7. Dependencias y Riesgos | 8. Gobernanza y Cumplimiento | 9. Métricas de Éxito |
| :--- | :--- | :--- |
| ¿El éxito DEPENDE de alguien más? | ¿Cuáles son las REGLAS DEL JUEGO? | ¿Cómo sabremos que estamos GANANDO? |
| • Dependencias Internas: (Otras EVs de las que dependemos)<br>• Dependencias Externas: (Proveedores, otros servicios)<br>• Riesgos de Dependencia: (Principal riesgo si una dependencia falla) | • Nodo Federado de Gobernanza (NFG): (¿Quién toma las decisiones de inversión?)<br>• Dueño de Producto/Servicio: (Persona con autoridad final)<br>• Anclaje Regulatorio (Overlays): (Leyes y normativas clave) | • Resultados Clave (KRs): (2-3 métricas de *outcome*)<br>• Objetivos de Nivel de Servicio (SLOs): (2-3 compromisos de fiabilidad)<br>• Métricas de Experiencia (UX): (CSAT, Tasa de Éxito de Tarea) |
```

#### Guía A.2.2: Mapeo de Historias (Story Mapping) (Δ-T)

Instrucciones: Esta es una guía para facilitar el taller de Mapeo de Historias. El objetivo es descomponer visualmente el viaje del usuario y priorizar el trabajo para la entrega incremental.

Estructura del Mapa en una Pizarra:

1. La Espina Dorsal (Eje Horizontal):
    * Use post-its de un color (ej. azul) para las Actividades del Usuario. Estas son las grandes etapas del viaje del usuario, ordenadas cronológicamente.
    * *Ejemplo:* `Buscar Información` → `Simular Beneficio` → `Autenticarse` → `Completar Formulario` → `Subir Documentos` → `Recibir Notificación`.

2. El Cuerpo (Eje Vertical):
    * Debajo de cada Actividad, use post-its de otro color (ej. amarillo) para las Historias de Usuario. Realice una lluvia de ideas de todas las tareas que el usuario necesita realizar para completar esa actividad.
    * Ordene verticalmente las historias por prioridad: las más esenciales arriba, las mejoras y "nice-to-haves" abajo.

3. Las Rebanadas (Líneas Horizontales):
    * Una vez que el mapa esté completo, use un marcador para trazar líneas horizontales que definan las Rebanadas de Entrega.
    * Rebanada 1 (Esqueleto Andante / MVP): Es la línea más alta. Contiene el conjunto mínimo de historias de cada actividad para que un usuario pueda completar el viaje de punta a punta.
    * Rebanada 2, 3, ...: Son los siguientes incrementos de valor.

### A.3. Plantillas de Nivel Operacional (Σ-O / Δ-O)

#### Plantilla A.3.1: Reglas del Tablero de Flujo (Xanpan) (Δ-O)

Instrucciones: Esta no es una plantilla de un tablero en sí, sino de las "reglas del juego" que el equipo define para su tablero. Estas políticas deben estar visibles para todo el equipo.

```markdown
## Políticas del Tablero de Flujo - Equipo [Nombre del Equipo]

Fecha de Última Revisión: YYYY-MM-DD

#### 1. Columnas del Flujo de Trabajo
*   Opciones: Historias priorizadas, listas para ser tomadas.
*   Análisis/Diseño (WIP: 2): Refinando requerimientos y diseño técnico.
*   En Desarrollo (WIP: 3): Codificación activa.
*   En Revisión/QA (WIP: 2): Code review y pruebas de aceptación.
*   Listo para Desplegar: Feature completa, esperando la ventana de despliegue.
*   Hecho: En producción y valor entregado.

#### 2. Límites de Trabajo en Progreso (WIP)
*   Se aplican por columna (ver arriba).
*   Regla: Un miembro del equipo no puede iniciar un nuevo ítem si la columna de destino está en su límite de WIP. En su lugar, debe ayudar a "desatascar" un ítem de una columna posterior.

#### 3. Definición de "Hecho" (Definition of Done)
Una historia se considera "Hecha" solo cuando cumple TODOS los siguientes criterios:
- [ ] El código está fusionado (merged) a la rama principal.
- [ ] Todas las pruebas automatizadas pasan en el pipeline de CI.
- [ ] La revisión de código (code review) ha sido aprobada por al menos un par.
- [ ] La funcionalidad ha sido desplegada en el entorno de producción.
```

#### Plantilla A.3.2: Bitácora de Decisiones (ADR) (Δ-O)

Instrucciones: Use esta plantilla para registrar una decisión arquitectónica significativa. Cree un nuevo archivo Markdown para cada ADR (ej. `001-patron-de-autenticacion.md`). Un ADR, una vez publicado, es inmutable.

```markdown
## ADR-XXX: [Título de la Decisión]

Fecha: YYYY-MM-DD
Estado: Propuesto | Aceptado | Reemplazado por ADR-YYY

---

### Contexto

*¿Cuál es el problema que estamos tratando de resolver? ¿Qué alternativas se consideraron?*

Ejemplo: "El sistema actual de autenticación basado en sesiones locales no escala y dificulta la integración con nuevos servicios móviles. Evaluamos tres alternativas: 1. Mantener el sistema actual. 2. Implementar un servidor OAuth 2.0 desde cero. 3. Integrar un servicio de identidad federada basado en OIDC."

---

### Decisión

*Declaración clara y concisa de la decisión tomada.*

Ejemplo: "Decidimos adoptar la opción 3: integraremos un servicio de identidad federada basado en OIDC para toda la autenticación y autorización de la plataforma."

---

### Consecuencias

*¿Cuáles son los resultados positivos y los compromisos o riesgos que estamos aceptando?*

#### Positivas

*   Centraliza la gestión de identidades, mejorando la seguridad y la experiencia del usuario.
*   Permite la integración futura de nuevos servicios de forma rápida y estandarizada.
*   Reduce la carga de mantenimiento de lógica de autenticación en cada aplicación.

#### Negativas

*   Introduce una nueva dependencia crítica en el proveedor de identidad.
*   Requiere una migración coordinada de todos los servicios existentes.
*   Aumenta la complejidad inicial del flujo de autenticación.
```

### A.4. Checklists de Contratos Conversacionales

Instrucciones: Estas no son plantillas de documentos a rellenar, sino agendas para una conversación estratégica. Utilice el checklist correspondiente para guiar una reunión entre las partes involucradas. El objetivo es alcanzar un entendimiento mutuo y un acuerdo explícito.

#### Checklist A.4.1: Contrato de Datos (Σ-O)

* Propósito: Guiar la conversación entre un productor de datos y un consumidor de datos.
* Cuándo usarlo: Cada vez que una EV expone un conjunto de datos significativo.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Propósito y Semántica | • ¿Cuál es el nombre y la descripción de este Producto de Datos?<br>• ¿Quién es el equipo "Dueño" responsable?<br>• ¿Para qué casos de uso está diseñado este dato? |
| 2. Estructura y Acceso | • ¿Qué campos de información contiene (esquema)?<br>• ¿Cómo se accederá a los datos (API, vista en BBDD, etc.)? |
| 3. Calidad y Fiabilidad (SLOs) | • ¿Con qué frecuencia se actualizarán los datos?<br>• ¿Cuál es el compromiso de disponibilidad del acceso? |
| 4. Gobernanza y Seguridad | • ¿Cuál es la clasificación de seguridad? ¿Contiene PII?<br>• ¿Cuál es la política de retención? |

#### Checklist A.4.2: Contrato de Servicio / API (Σ-O)

* Propósito: Guiar la conversación entre el equipo proveedor de una API y el equipo consumidor.
* Cuándo usarlo: Para cada API o servicio expuesto por una EV.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Identidad y Propósito | • ¿Cuál es el nombre y el propósito de este servicio?<br>• ¿Quién es el equipo "Dueño"? |
| 2. Interfaz y Endpoints | • ¿Cuáles son los principales endpoints?<br>• ¿Dónde está la documentación técnica (OpenAPI/Swagger)? |
| 3. Fiabilidad y Rendimiento (SLOs) | • ¿Cuál es el compromiso de disponibilidad (ej. 99.95%)?<br>• ¿Cuál es el compromiso de latencia (ej. p95 < 200ms)? |
| 4. Seguridad y Acceso | • ¿Cómo se autentican los consumidores?<br>• ¿Existen límites de uso (rate limiting)? |
| 5. Evolución y Soporte | • ¿Qué estrategia de versionado se usará?<br>• ¿Cuál es el canal de comunicación para soporte? |

#### Checklist A.4.3: Contrato de Agente IA (Σ-O)

* Propósito: Guiar una conversación profunda sobre la delegación de una tarea a un Agente Digital (IA).
* Cuándo usarlo: Cada vez que se diseña o integra un componente de IA en una EV.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Propósito y Rol (HCAI) | • ¿Cuál es el propósito del agente en relación al humano? (Asistir, Aumentar, Orquestar, Automatizar).<br>• ¿Qué función cognitiva principal realiza? (Sentir, Decidir, Actuar). |
| 2. Autonomía y Supervisión | • ¿Cuál es el modo de interacción con el humano? (Humano-en-el-Bucle es el defecto para alto riesgo).<br>• ¿Cuáles son los puntos de control donde DEBE escalar a un humano? |
| 3. Guardarraíles y Seguridad | • ¿Qué tipo de acciones tiene estrictamente prohibido realizar?<br>• ¿Existe un "interruptor de apagado" (kill switch)? |
| 4. Transparencia y Explicabilidad | • ¿Cómo se le informará al usuario que está interactuando con una IA?<br>• Si el agente toma una decisión, ¿cómo se explicará el "porqué"? |


---


## Guía de Adopción Incremental de A-K

> Este documento es un mapa de ruta para equipos y organizaciones que desean adoptar la metodología ASTA-Kore. Su propósito es reducir la barrera de entrada, proponiendo un camino de adopción gradual que prioriza el aprendizaje y la entrega de valor desde el primer día.

### El Principio: Adopción como un Esqueleto Andante

No intente adoptar todo el marco de una vez. Eso sería una violación del propio principio de parsimonia cognitiva. En su lugar, trate la adopción del marco como la construcción de cualquier `Entidad de Valor`: comience con un `Esqueleto Andante`.

Este camino propone una secuencia de cuatro "rebanadas" de adopción. Cada paso se construye sobre el anterior, introduciendo nuevos protocolos solo cuando el valor del paso anterior ha sido demostrado.

#### Paso 1: Instalar el Hábito del Aprendizaje Explícito (Nivel Operacional Δ-O)

Objetivo: Comenzar a combatir la "amnesia organizacional" y hacer visible el flujo de trabajo con las prácticas de menor costo y más alto apalancamiento.

Tiempo para Valor: Inmediato.

##### Protocolos a Introducir

1. `Bitácora de Decisiones (ADR)`
    * Acción: Comience a documentar *una* decisión técnica significativa por semana usando la plantilla de ADR. No intente documentar todo. Elija la decisión que generó más debate.
    * Propósito Cognitivo: Externalizar el "porqué" detrás de las decisiones clave, creando un activo de conocimiento que previene errores futuros.

2. `Retrospectiva del Flujo`
    * Acción: Realice una retrospectiva de 60 minutos cada dos semanas. Enfoque la conversación no en las personas, sino en el sistema de trabajo. Use las preguntas: "¿Qué nos ralentizó?" y "¿Qué experimento podemos probar para mejorar?".
    * Propósito Cognitivo: Crear un espacio seguro para la reflexión y la mejora continua del proceso del propio equipo.

3. Visualizar el Trabajo
    * Acción: Cree el tablero de flujo más simple posible en una pizarra o herramienta digital (ej. "Por Hacer", "En Progreso", "Hecho"). No se preocupe por los límites de WIP todavía.
    * Propósito Cognitivo: Hacer visible el trabajo y sus bloqueos, creando una base para conversaciones más profundas sobre el flujo.

Criterio de Salida: El equipo ha escrito al menos 3 ADRs y ha realizado 2 retrospectivas que generaron acciones de mejora concretas.

#### Paso 2: Mapear la Realidad Actual (Nivel Táctico Σ-T)

Objetivo: Crear un entendimiento compartido y holístico de un servicio o sistema existente, revelando sus puntos de dolor y oportunidades.

Tiempo para Valor: Días.

##### Protocolos a Introducir

1. `Canvas de Entidad de Valor` (en modo "As-Is")
    * Acción: Elija *un* servicio o sistema crítico (idealmente uno que sea doloroso o poco comprendido). Facilite un taller de 2-3 horas con el equipo y los stakeholders para llenar el `Canvas de EV` describiendo el sistema tal como funciona hoy.
    * Propósito Cognitivo: Transformar un sistema opaco en un mapa visual y compartido, exponiendo sus fronteras, dependencias y propósito real. Genera un alineamiento instantáneo.

2. `Contratos Conversacionales` (en modo "Arqueología")
    * Acción: Durante el taller del Canvas, identifique las dependencias más críticas. Use los checklists de `Contrato de Servicio` o `Contrato de Datos` para guiar una conversación sobre cómo funcionan *realmente* esas interacciones hoy.
    * Propósito Cognito: Hacer explícitos los acuerdos implícitos y frágiles que gobiernan las interacciones entre equipos.

Criterio de Salida: El equipo ha producido un `Canvas de EV` "As-Is" que todos los stakeholders reconocen como un mapa fiel de la realidad actual.

#### Paso 3: Lanzar el Primer Ciclo de Valor Táctico (Nivel Táctico Δ-T)

Objetivo: Moverse de la reacción a la intención, enfocando el trabajo de un trimestre en una `Hipótesis de Valor` clara y medible.

Tiempo para Valor: Semanas.

##### Protocolos a Introducir

1. `OKRs Trimestrales`
    * Acción: Basado en las oportunidades identificadas en el `Canvas de EV` "As-Is", facilite un taller para que el equipo defina su primer conjunto de OKRs trimestrales (1 Objetivo, 2-3 Resultados Clave).
    * Propósito Cognitivo: Cambiar el enfoque del equipo de una "lista de tareas" a una "misión de resultado". Proporciona un lenguaje para hablar sobre el valor.

2. `Mapeo de Historias`
    * Acción: Facilite un taller de `Mapeo de Historias` para traducir los OKRs en un backlog visual. Defina el `Esqueleto Andante` que se necesita para probar la hipótesis del OKR.
    * Propósito Cognitivo: Conectar la estrategia (OKR) con la ejecución (historias) de forma visual, y forzar la priorización a través de la definición de un MVP.

3. Límites de `WIP`
    * Acción: Ahora que el flujo es visible, introduzca límites de WIP bajos en su tablero (ej. WIP = número de personas / 2). El dolor inicial es una señal de que está funcionando.
    * Propósito Cognitivo: Forzar al equipo a colaborar para "terminar cosas" en lugar de "empezar cosas", mejorando drásticamente el flujo.

Criterio de Salida: El equipo ha completado su primer trimestre operando bajo OKRs y ha entregado al menos el `Esqueleto Andante` definido.

#### Paso 4: Conectar la Táctica con la Gobernanza Estratégica (Nivel Estratégico Δ-E)

Objetivo: Cerrar el bucle de aprendizaje, permitiendo que la gobernanza tome decisiones de inversión basadas en la evidencia generada por el equipo.

Tiempo para Valor: Un trimestre.

##### Protocolos a Introducir

1. `Ciclo de Valor y Capacidad (CVC)`
    * Acción: Al final del trimestre, el equipo prepara su primer `Informe de CVC` y lo presenta a la gobernanza en una reunión de 60 minutos.
    * Propósito Cognitivo: Cambiar la conversación con el liderazgo de un "reporte de estado" (¿hicieron lo que dijeron?) a un "diálogo de inversión" (¿qué aprendimos y dónde deberíamos apostar ahora?).

2. Decisiones de Inversión
    * Acción: La gobernanza debe concluir el CVC con una de las cuatro decisiones explícitas: Continuar/Pivotar, Expandir, Reducir, o Cerrar.
    * Propósito Cognitivo: Hacer de la gobernanza un participante activo en la estrategia adaptativa, en lugar de un observador pasivo.

Criterio de Salida: La organización ha completado su primer CVC y ha tomado una decisión de inversión explícita sobre el futuro del equipo piloto, basándose en la evidencia presentada.

---

Al completar estos cuatro pasos, la organización habrá instalado un "sistema inmunológico" de agilidad y aprendizaje. El `Esqueleto Andante` de la metodología A-K estará operativo, y la organización estará lista para escalar la adopción a otros equipos.

---


## Calendario Anual de CVCs — 2025

Este calendario define las ventanas trimestrales para la ejecución del Ciclo de Valor y Capacidad (CVC) de todas las Entidades de Valor (EVs). Incluye fechas de preparación, deadline de informe y las jornadas de decisión.

Reglas generales:

- Cada EV debe presentar un Informe de CVC conciso (≤ 3 páginas) con evidencia (OKRs, métricas, demo).
- Las decisiones del NFG deben quedar registradas al cierre de la sesión.
- Cambios relevantes en el marco se canalizan vía PEM.

### Q1 2025

- Ventana de preparación: 24–28 mar 2025
- Deadline Informe CVC (entrega a Secretaría): 02 abr 2025
- Sesiones CVC (por EV): 08–10 abr 2025
- Publicación de decisiones: 11 abr 2025

### Q2 2025

- Ventana de preparación: 23–27 jun 2025
- Deadline Informe CVC: 02 jul 2025
- Sesiones CVC: 08–10 jul 2025
- Publicación de decisiones: 11 jul 2025

### Q3 2025

- Ventana de preparación: 22–26 sep 2025
- Deadline Informe CVC: 01 oct 2025
- Sesiones CVC: 07–09 oct 2025
- Publicación de decisiones: 10 oct 2025

### Q4 2025

- Ventana de preparación: 15–19 dic 2025
- Deadline Informe CVC: 23 dic 2025
- Sesiones CVC (corte anual): 07–09 ene 2026
- Publicación de decisiones: 10 ene 2026

---

### Roles y responsabilidades

- Secretaría de Gobernanza:
  - Convoca, consolida agenda, verifica informes recibidos y registra decisiones.
- Equipo de la EV:
  - Prepara Informe CVC, coordina demo, define hipótesis y próxima apuesta de valor.
- Nodo Federado de Gobernanza (NFG):
  - Revisa evidencia, conduce discusión y emite decisión de inversión (Continuar/Pivotar, Expandir, Reducir, Cerrar).

### Insumos requeridos (por EV)

- OKRs del trimestre con evidencia de avance (métricas, KR status).
- Demo de valor (enlace o credenciales temporales).
- Salud del sistema (SLOs/SLIs clave, incidentes relevantes).
- ADRs relevantes creados/modificados en el trimestre.

### Salidas esperadas

- Decisión explícita de inversión del NFG.
- Ajustes a OKRs del siguiente trimestre (si aplica).
- Acciones de mejora y dueños.

---

### Plantillas mínimas

#### Agenda CVC (60 minutos)

1. Progreso de OKRs y Aprendizaje (20 min)
2. Demostración de Valor (15 min)
3. Salud del Sistema y del Equipo (10 min)
4. Próxima Apuesta de Valor y Decisión (15 min)

#### Informe CVC — Estructura sugerida (≤ 3 páginas)

- Resumen ejecutivo (1 párrafo)
- Estado de OKRs (tabla O/KR con métricas)
- Evidencia y aprendizaje (gráficos, enlaces a demo)
- Salud del sistema (SLOs/SLIs, incidentes, deuda crítica)
- Propuesta de próxima apuesta (hipótesis, riesgos, requerimientos)
- Decisión solicitada al NFG

---

Referencias:

- Protocolo del CVC: ver `protocolos.md` > Cap. 2.3
- Protocolo de Evolución del Marco (PEM): [./protocolo_evolucion.md](./protocolo_evolucion.md)


---


## Protocolo de Evolución del Marco (PEM)

**Versión:** 1.0
**Propósito:** Este protocolo define el mecanismo formal y recurrente para la auditoría, adaptación y evolución del propio marco ASTA-Kore. Es el sistema inmunológico del marco, diseñado para mantenerlo parsimonioso, coherente y alineado con las necesidades del terreno.

---

### 1. Principios Fundamentales de la Evolución

La evolución de ASTA-Kore se rige por axiomas que previenen la burocratización y la complejidad accidental.

1. **Semántica antes que Herramientas:** La solidez de los `Contratos` y la `Ontología` precede a la construcción de `pipelines` o `paneles`. La automatización debe verificar la coherencia semántica, no reemplazarla.
2. **Mínima Carga Cognitiva:** Cada nuevo concepto, artefacto o protocolo debe justificar su existencia demostrando que reduce más complejidad de la que introduce.
3. **Fuente Única de Verdad en el Código:** Los artefactos de diseño (`Contratos.yml`, `ADR.md`) viven junto al código. Los catálogos y paneles son **vistas materializadas** de esta verdad, no bases de datos independientes.
4. **Reflexividad:** El propio proceso de evolución del marco debe seguir los principios de ASTA-Kore (basado en evidencia, iterativo, con artefactos parsimoniosos).

### 2. El Ciclo de Evolución del Marco (Ritmo Anual)

El marco se somete a un ciclo formal de revisión y adaptación una vez al año, o cuando la evidencia de fricción significativa lo justifique.

#### Fase 1: Auditoría Holística

* **Propósito:** Evaluar la salud y efectividad del marco en la práctica.
* **Protocolo:**
    1. **Recopilación de Evidencia:**
        * **Entrevistas y Encuestas:** Dialogar con equipos de `EVs`, líderes y `Nodos de Gobernanza` para identificar puntos de fricción, cuellos de botella y artefactos de bajo valor.
        * **Análisis de Artefactos:** Muestrear y analizar la calidad, consistencia y utilidad real de los `Canvas de EV`, `Contratos`, `Informes de CVC` y `ADRs` generados en el ciclo.
        * **Métricas de Plataforma:** Analizar métricas objetivas como `lead time` de las `EVs`, tasa de fallo de `pipelines` de la Plataforma Nexus, frecuencia de `override` de `guardrails` y uso de `templates`.
    2. **Evaluación con el Scorecard de Salud:** Utilizar el siguiente scorecard para puntuar cada dimensión del marco, generando un diagnóstico objetivo.

##### Scorecard de Salud del Marco ASTA-Kore

| Dimensión | Pregunta Clave de Auditoría |
| :--- | :--- |
| **1. Modelo Mental** | ¿Sigue siendo el modelo (Matriz Σ/Δ, EV) parsimonioso y de baja carga cognitiva para los nuevos equipos? |
| **2. Trazabilidad Σ/Δ** | ¿Podemos conectar un KR a un commit y a un ADR de forma automática y verificable? ¿O sigue siendo un ejercicio manual? |
| **3. Gobernanza (CVC)** | ¿Las decisiones del CVC se basan en evidencia (métricas, demos) o han degenerado en reportes de estado? |
| **4. Contratos** | ¿Son los contratos la fuente de verdad? ¿Están completos, son consistentes y se usan para guiar las conversaciones de diseño? |
| **5. Plataforma Nexus** | ¿Las "carreteras pavimentadas" (pipelines, templates) aceleran o constriñen a los equipos? ¿Los `guardrails` son claros y explicables? |
| **6. Adopción y Disciplina** | ¿Se siguen los protocolos (ADRs, CVCs) por convicción o solo por cumplimiento? ¿Cuál es la tasa de "bypass" de los `guardrails`? |
| **7. Higiene Documental** | ¿El cuerpo de conocimiento del marco está libre de inconsistencias, duplicados y enlaces rotos? ¿Inspira confianza? |

#### Fase 2: Propuesta de Refinamiento

* **Propósito:** Traducir los hallazgos de la auditoría en un plan de acción jerarquizado y accionable.
* **Protocolo:**
    1. **Síntesis de Hallazgos:** Consolidar los resultados del scorecard y la evidencia cualitativa en un informe de auditoría conciso.
    2. **Jerarquización del Backlog de Evolución:** Priorizar las acciones de mejora usando la siguiente jerarquía de dependencias conceptuales:
        * **Nivel 1 (Fundamento Semántico):** Cambios en la `Ontología`, el `Manifiesto` o la estructura canónica de los `Contratos`.
        * **Nivel 2 (Motor de Trazabilidad):** Mejoras en el modelo de metadatos y los mecanismos de `scaffolding` que aseguran la conexión entre artefactos.
        * **Nivel 3 (Carreteras Pavimentadas):** Desarrollo o mejora de `pipelines`, `paneles`, `templates` y otras herramientas de la Plataforma Nexus.
    3. **Formulación del Plan de Acción:** Documentar el plan en un formato de hoja de ruta (ej. 90/180/365 días), asegurando que cada iniciativa esté justificada por un hallazgo de la auditoría.

#### Fase 3: Implementación y Comunicación

* **Propósito:** Ejecutar los cambios en el marco de forma controlada y comunicar eficazmente la nueva versión.
* **Protocolo:**
    1. **Implementación por Capas:** Ejecutar el plan de acción respetando el orden jerárquico definido en la fase anterior.
    2. **Versionado Semántico:** Incrementar la versión del marco (ej. de v1.1 a v1.2) según la magnitud del cambio.
    3. **Actualización del `CHANGELOG.md`:** Cada cambio significativo en un artefacto del marco (guía, contrato, protocolo) debe ser registrado con una descripción clara de la mejora y su impacto.
    4. **Comunicación Activa:** Anunciar la nueva versión a la comunidad de práctica, explicando no solo el "qué" sino el "porqué" del cambio, conectándolo a los hallazgos de la auditoría que lo motivaron.

---

### Anexo: Registro de Auditorías

* **[Auditoría Q3 2025](./auditorias/auditoria_2025_q3.md):** Veredicto: Marco conceptualmente robusto pero con brecha crítica entre doctrina y plataforma operable. Plan de acción enfocado en solidificar el núcleo semántico.


---


