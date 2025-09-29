# asta-kore_aplanado

## Project Structure

```
├── manual operacional
│   ├── guias decision
│   │   ├── gd_arquitectura_nexus.md
│   │   ├── gd_automatizacion_proceso.md
│   │   ├── gd_datos.md
│   │   ├── gd_experiencia_usuario.md
│   │   ├── gd_know.md
│   │   └── gd_sistemas_cognitivos.md
│   ├── guias tecnicas
│   │   ├── gt_arquitectura_nexus.md
│   │   ├── gt_diseno_ux.md
│   │   ├── gt_gestion_conocimiento.md
│   │   ├── gt_ingenieria_datos.md
│   │   ├── gt_ingenieria_ia.md
│   │   └── gt_ingenieria_software.md
│   ├── metodologia refactorizada
│   │   ├── adopcion.md
│   │   ├── catalogo.md
│   │   ├── ontologia.md
│   │   └── protocolos.md
│   ├── ASTA-Kore_Manifiesto_Estrategico.md
│   └── README.md
```

## File Contents

### manual operacional/ASTA-Kore_Manifiesto_Estrategico.md

```markdown
# Un Marco para la Acción Coherente en Organizaciones Complejas

**Versión:** 1.0 (Estratégica)
**Audiencia:** Líderes, Tomadores de Decisión, Arquitectos Empresariales, Agentes de Transformación.

## Una Nota Sobre el Nombre: ¿Qué Significa "ASTA-Kore"?

El nombre encapsula la filosofía del marco en dos componentes clave:

* **ASTA:** Es el acrónimo de **Arquitectura Socio-Técnica Adaptativa**.
  * **Arquitectura:** Porque se enfoca en el diseño de la estructura fundamental de la organización.
  * **Socio-Técnica:** Porque reconoce que los sistemas de valor son una simbiosis inseparable de personas y tecnología, y deben ser diseñados como un todo.
  * **Adaptativa:** Porque su propósito no es crear un estado final estático, sino habilitar la evolución y el aprendizaje continuo.

* **Kore:** Del griego Κόρη, que significa **"esencia"** o **"núcleo"**. Este término marca la madurez del marco, indicando que, aunque es parsimonioso, contiene el núcleo irreductible de principios y prácticas necesarios para la coherencia y la agilidad organizacional.

En conjunto, **ASTA-Kore** es un marco para diseñar la **esencia de una arquitectura adaptativa y centrada en lo humano**.

## Preámbulo: La Crisis de la Complejidad

La Arquitectura Empresarial tradicional, en su búsqueda de rigor, cayó en su propia trampa. Se convirtió en una disciplina de especialistas dedicada a producir artefactos —vastos repositorios de modelos y documentos— que, en lugar de reducir la complejidad, la amplifican. Genera un universo documental tan vasto que se vuelve inmanejable: un mapa a escala 1:1, tan complejo como el territorio que pretende describir y, por lo tanto, inútil para la navegación.

El resultado es una **parálisis por análisis**. El esfuerzo por documentar la organización supera con creces el esfuerzo por transformarla. En un entorno donde la velocidad de adaptación es el principal predictor de supervivencia, este modelo es insostenible. La arquitectura deja de ser un GPS para convertirse en un ancla.

**ASTA-Kore (Α-K)** nace como respuesta a esta crisis. Es una metodología operacional que invierte el enfoque tradicional. En lugar de preguntar "¿Qué más podemos documentar?", pregunta: **"¿Qué es lo mínimo que necesitamos saber para tomar la siguiente decisión coherente, más rápido?"**.

No es un marco de documentación, sino un sistema operativo para el pensamiento y la acción organizacional.

## ¿A Qué Dolores Organizacionales Responde ΑΣ-K?

Más allá de la crisis general de complejidad, ΑΣ-K está diseñado para atacar un conjunto de "dolores" crónicos y recurrentes que paralizan a las organizaciones modernas. Si reconoces alguno de estos síntomas, el marco está diseñado para ti.

| Dolor (El Síntoma Observable) | Causa Raíz Sistémica | Cómo Responde KORE |
| :--- | :--- | :--- |
| **"Nuestros proyectos de TI tardan años, cuestan el doble y, cuando se entregan, ya no son lo que necesitábamos."** | **El paradigma del "Proyecto"**: Equipos temporales que se disuelven, conocimiento que se pierde y un enfoque en entregar *outputs* (alcance) en lugar de *outcomes* (valor). | **#NoProjects y Entidades de Valor (EVs)**: Se reemplazan los proyectos por productos vivos (EVs) con equipos estables. La gobernanza (CVC) se enfoca en medir el valor entregado cada trimestre, permitiendo pivotar o detener iniciativas que no demuestran impacto. |
| **"El equipo de estrategia define un plan brillante, pero los equipos de desarrollo parecen estar trabajando en otra cosa."** | **Desconexión entre capas organizacionales**: Falta de un lenguaje y un mapa compartidos que conecten el "porqué" estratégico con el "qué" y el "cómo" operacional. | **La Matriz de Coherencia**: Actúa como un "mapa del metro" organizacional. Los OKRs anuales (Δ-E) se descomponen en OKRs trimestrales para cada EV (Δ-T), que a su vez guían el trabajo diario (Δ-O). La trazabilidad es explícita y visible para todos. |
| **"Nadie se atreve a tocar los sistemas 'legacy' por miedo a romper algo. La innovación es lenta y riesgosa."** | **Acoplamiento y falta de fronteras claras**: Los sistemas son "cajas negras" monolíticas donde un cambio en una parte puede tener consecuencias impredecibles en otra. | **Contratos Conversacionales y Plataforma Nexus**: Se obsesiona con definir fronteras explícitas (`Contratos`). Esto permite desacoplar los sistemas y modernizarlos de forma incremental (ej. Patrón Estrangulador), reduciendo el riesgo de cada cambio y acelerando la innovación. |
| **"Para cualquier decisión, necesitamos la aprobación de tres comités diferentes. La gobernanza es un cuello de botella."** | **Gobernanza centralizada y basada en el control**: Se asume que un grupo central de expertos debe aprobar cada detalle para mitigar el riesgo, lo que ralentiza toda la organización. | **Autonomía con Alineamiento**: Se distribuye la toma de decisiones. Las `Guías de Decisión` empoderan a los equipos para que tomen decisiones locales rápidas, mientras que la Plataforma Nexus automatiza la gobernanza (`Policy-as-Code`), verificando el cumplimiento sin intervención humana. |
| **"Cuando un funcionario clave se va, perdemos años de conocimiento. Dependemos de 'héroes' para que las cosas funcionen."** | **Conocimiento tácito y no externalizado**: El "cómo" y el "porqué" de las decisiones y el diseño de los sistemas viven en la cabeza de unas pocas personas. | **Memoria Organizacional Explícita**: Artefactos como el `Canvas de EV` y las `Bitácoras de Decisión (ADRs)` están diseñados para externalizar el conocimiento. El diseño de un servicio y el razonamiento detrás de una decisión crítica se convierten en activos explícitos de la organización, no en pasivos personales. |

## Parte I: El Principio de la Parsimonia Cognitiva

La agilidad organizacional no emerge de modelos más completos, sino de modelos mentales compartidos que sean más simples y coherentes. La función de una arquitectura operacional no es replicar la complejidad del mundo real, sino **destilarla**.

ΑΣ-K se fundamenta en el **Principio de la Parsimonia Cognitiva**: la búsqueda de la mínima estructura necesaria que permita a un colectivo de personas cargar, sostener y ejecutar un modelo de la realidad con la mínima fricción. Al igual que un software eficiente minimiza el uso de CPU, una arquitectura eficiente debe minimizar la carga sobre el recurso más escaso de la organización: la atención y la capacidad cognitiva de sus miembros.

Para lograrlo, el marco se fundamenta en tres pilares:

1. **Invariantes:** Identificar los conceptos y relaciones que son estables en medio del cambio.
2. **Vistas Ortogonales:** Descomponer la complejidad en dimensiones independientes para que puedan ser analizadas por separado sin perder la visión del todo.
3. **Jerarquías de Señal:** Organizar la información en niveles de resolución para que cada rol reciba la señal que necesita, sin el ruido del resto.

El resultado es una arquitectura parsimoniosa: aquella que logra la máxima potencia explicativa con la menor cantidad de elementos. Es una estructura elegante, no por lo que contiene, sino por todo lo que deliberadamente omite.

## Parte II: El Modelo Mental de KORE (El Qué)

Para ser operacional, el conocimiento debe organizarse en una estructura que la mente pueda cargar y ejecutar. ΑΣ-K reduce toda la realidad organizacional a la interacción de solo dos ejes y tres niveles. Cargar este modelo es la inversión cognitiva inicial que libera capacidad para resolver problemas reales.

### 2.1 La Matriz de Coherencia: El Mapa Unificado

Toda organización existe simultáneamente en dos dimensiones fundamentales: lo que **es** (su estructura) y lo que **hace** (su operación). La Matriz de Coherencia descompone esta realidad para permitir un análisis enfocado sin perder la integridad del todo.

* **El Eje del Ser (Σ - Sigma): La Dimensión del Diseño Estructural.**
  * Es la anatomía de la organización en reposo: sus componentes, reglas y relaciones. Responde a la pregunta: *¿Cuáles son las partes y cómo se ensamblan?*
  * Aquí viven los mapas de capacidades, el diseño de los servicios y los contratos que definen sus interacciones.

* **El Eje del Devenir (Δ - Delta): La Dimensión del Flujo Operacional.**
  * Es la fisiología de la organización en el tiempo: el flujo de valor, la toma de decisiones y el aprendizaje. Responde a la pregunta: *¿Cómo actuamos, medimos el progreso y nos adaptamos?*
  * Aquí viven los objetivos estratégicos (OKRs), la gestión del trabajo y los ciclos de gobernanza.

### 2.2 Los Niveles de Resolución: La Jerarquía de la Atención

Para evitar la sobrecarga, la matriz se observa a través de tres lentes que filtran el ruido y enfocan la atención:

* **Nivel Estratégico (E):** El horizonte del propósito y el largo plazo (anual+). El "porqué".
* **Nivel Táctico (T):** El horizonte del diseño y la planificación de una unidad de valor (trimestral). El "qué".
* **Nivel Operacional (O):** El horizonte de la ejecución y las reglas del corto plazo (diario/semanal). El "cómo".

La intersección de estos ejes y niveles crea las **seis celdas de la realidad organizacional**. Cada celda es una vista ortogonal que responde a una pregunta fundamental. Juntas, forman un modelo completo y parsimonioso para la navegación y la toma de decisiones.

* **Σ-E (Diseño Estratégico):** *¿Qué capacidades tenemos y cuál es nuestro propósito?*
  * Aquí reside el `Mapa de Capacidades` de la organización y se definen los `OKRs Anuales`. Es la celda de la identidad y la intención a largo plazo. Define el "norte" y el inventario de habilidades para llegar allí.

* **Σ-T (Diseño Táctico):** *¿Cuál es la anatomía de esta unidad de valor?*
  * Aquí reside el `Canvas de Entidad de Valor`, el mapa de una página que describe un servicio o producto. Es la celda del diseño y la clarificación, donde se modela un componente de valor antes de construirlo.

* **Σ-O (Diseño Operacional):** *¿Cuáles son las reglas e interfaces de esta unidad?*
  * Aquí residen los `Contratos Conversacionales` (ej. APIs) y las `Fichas de Control` (reglas de negocio). Es la celda que garantiza interacciones predecibles y componibles, permitiendo que el ecosistema de servicios funcione como una red confiable y no como un conjunto de silos frágiles.

* **Δ-E (Flujo Estratégico):** *¿Cómo gobernamos el valor y la inversión?*
  * Aquí reside el `Ciclo de Valor y Capacidad (CVC)`, el ritual de gobernanza donde se toman decisiones de portafolio basadas en evidencia. Es la celda de la dirección y la asignación de recursos, asegurando que el dinero y el esfuerzo fluyan hacia donde generan más valor estratégico.

* **Δ-T (Flujo Táctico):** *¿Cuál es nuestra hipótesis de valor para este ciclo?*
  * Aquí residen los `OKRs Trimestrales` y el `Mapeo de Historias`. Es la celda de la planificación basada en hipótesis, donde el trabajo se enmarca como experimentos de valor, no como una simple lista de tareas.

* **Δ-O (Flujo Operacional):** *¿Cómo ejecutamos el trabajo y capturamos el aprendizaje?*
  * Aquí residen el `Tablero de Flujo` y la `Bitácora de Decisiones (ADRs)`. Es la celda de la ejecución disciplinada y la memoria organizacional, donde se optimiza la entrega y se asegura que el conocimiento adquirido no se pierda.

La matriz no es un simple clasificador; es un motor de inferencia. Permite trazar el impacto de una decisión a través del sistema: un aprendizaje en Δ-O puede gatillar un cambio en un contrato en Σ-O, cuyo impacto se planifica en Δ-T y se evalúa en Δ-E, alterando potencialmente la estrategia en Σ-E. Garantiza la coherencia.

### 2.3 La Entidad de Valor (EV): El Átomo del Valor

Los términos "proyecto", "sistema" o "servicio" son ambiguos. ΑΣ-K introduce una unidad de análisis fundamental: la **Entidad de Valor (EV)**.

> Una EV es un **sistema sociotécnico con un propósito explícito, que opera dentro de fronteras definidas por interfaces contractuales, y cuyo desempeño es medible**.

Esta definición establece cuatro atributos no negociables:

1. **Propósito Explícito:** Debe crear Valor Público medible.
2. **Fronteras Contractuales:** Sus interacciones con otros sistemas no son informales, sino acuerdos explícitos (como APIs bien definidas).
3. **Composición Sociotécnica:** Es una simbiosis de personas y tecnología, diseñadas como un todo.
4. **Desempeño Medible:** Su salud operacional y su efectividad de valor deben ser observables a través de métricas.

En este marco, no gestionamos "proyectos"; gestionamos el ciclo de vida y la evolución de las Entidades de Valor. La descripción completa de una EV es la suma de sus seis proyecciones en la Matriz de Coherencia.

## Parte III: El Sistema Operativo de KORE (El Cómo, a Alto Nivel)

ΑΣ-K no es solo un modelo, es un sistema de ritmos y rituales que traducen la estrategia en ejecución coherente. Estos protocolos son el "sistema operativo" de la organización.

* **El Ciclo Anual (Calibración Estratégica):**
  * Un protocolo de alto nivel donde el liderazgo **diagnostica las capacidades** de la organización, **declara el propósito** a través de OKRs anuales y **revisa el portafolio de inversión** en Entidades de Valor. Se decide qué capacidades fortalecer, crear o descontinuar.

* **El Ciclo Trimestral (Navegación Táctica):**
  * El corazón del modelo. Cada equipo de una Entidad de Valor **diseña su anatomía** (usando el `Canvas de EV`), **planifica su evolución** a través de OKRs trimestrales y un backlog priorizado, y **rinde cuentas** en un ritual de gobernanza llamado `Ciclo de Valor y Capacidad (CVC)`. En el CVC, se presentan resultados basados en evidencia y la gobernanza toma decisiones explícitas de inversión (Continuar, Pivotar, Expandir o Cerrar).

* **El Ciclo de Entrega (Ejecución Operacional):**
  * Los ritmos de alta frecuencia donde el trabajo se ejecuta. Se **refinan las interfaces** a través de `Contratos Conversacionales`, se **gestiona el flujo** de entrega con sistemas como Xanpan (limitando el trabajo en progreso para maximizar la velocidad) y se **captura el aprendizaje** a través de `Bitácoras de Decisión (ADRs)`.

Estos ciclos crean un sistema de bucles de retroalimentación (feedback loops) que conectan la estrategia con la operación, permitiendo que la organización aprenda y se adapte de forma continua y coherente.

## Parte IV: El Puente a la Realidad: La Plataforma Nexus y el Sistema de Guías

Un marco abstracto, por elegante que sea, es inútil si no se traduce en acción coherente. El gran desafío de la arquitectura es conectar la estrategia con la ejecución sin crear una burocracia paralizante. KORE resuelve esto a través de un sistema dual de guías que culmina en SIGMA, su implementación de referencia.

### 1. Guías de Decisión: El "Porqué" de una Elección

**Propósito:** Empoderar la autonomía con sabiduría.

Las Guías de Decisión son artefactos estratégicos y parsimoniosos. No le dicen a un equipo *qué* construir, sino que le ayudan a *decidir cómo* abordar un problema de una manera alineada con los principios KORE. Son el primer puente entre el modelo conceptual y un problema real.

* **Función:** Actúan como "árboles de decisión" estratégicos que un equipo recorre para tomar una elección fundamental, documentando el razonamiento.
* **Ejemplos de preguntas que responden:**
  * "¿Debemos abordar esta necesidad con un monolito modular o con microservicios?" (`gd_arquitectura_nexus.md`)
  * "¿Cómo debemos modelar este conjunto de datos: como un producto de datos analítico o uno operacional?" (`gd_datos.md`)
  * "¿Esta tarea debe ser automatizada, asistida por una IA o aumentada con supervisión humana?" (`gd_sistemas_cognitivos.md`)

Para un líder, las Guías de Decisión son la garantía de que los equipos son autónomos pero no anárquicos. Toman decisiones locales rápidas, pero lo hacen desde una base de principios compartidos, no desde el capricho o la moda tecnológica del momento.

### 2. La Plataforma Nexus y las Guías Técnicas: La Filosofía Hecha Código

**Propósito:** Proveer una "carretera pavimentada" para construir con calidad y velocidad.

Una vez que una Guía de Decisión ayuda a elegir un camino (ej. "usaremos microservicios"), la pregunta pasa a ser: "¿cómo construimos microservicios de alta calidad que sean seguros, observables e interoperables?". Aquí es donde entra la **Plataforma Nexus**.

**Nexus** es la **arquitectura de referencia canónica de ASTA-Kore**. No es un software, sino la opinión experta y prescriptiva de cómo los principios del marco se materializan en patrones de ingeniería, herramientas y prácticas. Su nombre evoca su función: ser el **punto de conexión central** entre la estrategia, la gobernanza y la implementación técnica.

Esta arquitectura de referencia se detalla en un conjunto de **Guías Técnicas**.

* **Función:** Las Guías Técnicas son manuales de implementación para dominios específicos. Si la Guía de Decisión fue el "porqué", la Guía Técnica es el "cómo" detallado.
* **Ejemplos de contenido que proveen:**
  * `gt_ingenieria_software.md`: "Si eliges microservicios, este es nuestro patrón para comunicación asíncrona, este es el estándar para el CI/CD y así es como debes implementar la observabilidad".
  * `gt_ingenieria_datos.md`: "Si defines un Producto de Datos, debe cumplir con este Contrato de Datos, ser registrado en este catálogo y usar este formato de serialización".
  * `gt_ingenieria_ia.md`: "Si un Agente IA requiere supervisión humana (HITL), este es el patrón de arquitectura para implementarlo y el contrato que debe exponer".

**Integración Orgánica:** La relación es fluida. Un equipo se enfrenta a un problema -> usa una **Guía de Decisión** para elegir una ruta estratégica -> esa ruta le dirige a una **Guía Técnica** específica -> la Guía Técnica le muestra cómo implementar esa solución usando los patrones y herramientas de la **Plataforma Nexus**.

Para un líder, la Plataforma Nexus y sus Guías Técnicas son el motor de la escalabilidad. Permiten que la organización construya sistemas complejos de forma federada, asegurando que, aunque los equipos trabajen en paralelo, el resultado final es un ecosistema coherente, seguro y gestionable, no un "Big Ball of Mud" distribuido.

### El Resultado: De la Fricción a la Fluidez Organizacional

Adoptar ASTA-Kore no es implementar una herramienta, es instalar un nuevo **sistema operativo** para la organización. La adopción se centra en tres áreas clave, cada una generando un valor concreto y medible.

#### 1. Qué se Adopta: Un Modelo Mental Compartido

* **Se adopta:** La **Matriz de Coherencia (Σ/Δ, E/T/O)** y el concepto de **Entidad de Valor (EV)** como el lenguaje universal para describir el trabajo.
* **Qué mejora (Valor Concreto):**
  * **De:** Reuniones improductivas donde los equipos hablan en idiomas distintos (negocio, tecnología, operaciones).
  * **A:** Conversaciones estratégicas rápidas y enfocadas, donde todos usan un mapa compartido para entender cómo el trabajo diario se conecta con la estrategia. Se elimina la ambigüedad semántica, reduciendo drásticamente el retrabajo por malentendidos.

#### 2. Qué se Adopta: Ritmos y Protocolos de Alto Valor

* **Se adopta:** Un sistema de **ciclos de retroalimentación** (Anual, Trimestral, Operacional) y **rituales clave** como el `Ciclo de Valor y Capacidad (CVC)` y las `Bitácoras de Decisión (ADRs)`.
* **Qué mejora (Valor Concreto):**
  * **De:** Gobernanza basada en la intuición, reportes de estado interminables y "comités" que son cuellos de botella. La inversión en TI es una "caja negra".
  * **A:** Un sistema de **gobernanza ágil y basada en evidencia**. Las decisiones de inversión se toman explícitamente cada trimestre (en el CVC) basadas en el valor demostrado, no en promesas. El conocimiento arquitectónico se acumula (en los ADRs) en lugar de perderse, combatiendo la amnesia organizacional.

#### 3. Qué se Adopta: Una Plataforma de Ejecución Coherente

* **Se adopta:** El sistema dual de **Guías de Decisión** y **Guías Técnicas** que definen la **Plataforma Nexus**.
* **Qué mejora (Valor Concreto):**
  * **De:** Equipos que operan en silos, reinventando la rueda y creando un caos tecnológico (deuda técnica exponencial). La innovación es lenta y riesgosa.
  * **A:** **Autonomía con alineamiento**. Los equipos tienen la libertad para innovar y moverse rápido, pero dentro de "carreteras pavimentadas" que garantizan la seguridad, observabilidad y coherencia del ecosistema. La calidad y la seguridad se convierten en capacidades de la plataforma, no en la carga de cada equipo individual, acelerando la entrega de valor de forma sostenible.

En resumen, la adopción de ΑΣ-K busca una transformación medible:

| De (Situación Actual) | A (Resultado con KORE) |
| :--- | :--- |
| Parálisis por análisis y sobre-documentación. | Decisiones rápidas basadas en la mínima información necesaria. |
| Proyectos eternos con equipos temporales. | Productos vivos (EVs) que evolucionan con equipos estables. |
| Silos organizacionales y tecnológicos. | Ecosistema coherente de servicios interoperables. |
| Gobernanza lenta y basada en opiniones. | Gobernanza ágil basada en evidencia y ciclos rápidos. |
| Deuda técnica y arquitectónica incontrolada. | Gestión explícita de la arquitectura y el conocimiento. |

En esencia, ΑΣ-K es una invitación a dejar de construir mapas del tesoro cada vez más detallados y, en su lugar, empezar a construir brújulas compartidas que todos en la organización puedan usar para navegar juntos hacia el mismo norte.

En esencia, ΑΣ-K es una invitación a dejar de construir mapas del tesoro cada vez más detallados y, en su lugar, empezar a construir brújulas compartidas que todos en la organización puedan usar para navegar juntos hacia el mismo norte.

## Parte V: Glosario para Líderes y Ejemplos Prácticos

Para un líder, los conceptos solo importan si resuelven problemas. Este glosario traduce la terminología del marco en su significado práctico y su valor estratégico.

### Glosario Esencial: De la Jerga al Valor

* **Matriz de Coherencia (Σ/Δ, E/T/O)**
  * **Qué es:** Un mapa simple de 2x3 que organiza todo el trabajo y conocimiento de la organización en dos dimensiones (Diseño vs. Operación) y tres horizontes de tiempo (Estratégico, Táctico, Operacional).
  * **Por qué importa:** Evita la confusión al dar a todos un "mapa del metro" compartido. Permite ver instantáneamente cómo una decisión técnica en el día a día se conecta con un objetivo estratégico anual, garantizando el alineamiento.

* **Entidad de Valor (EV)**
  * **Qué es:** La unidad fundamental de trabajo. En lugar de "proyectos" o "sistemas", pensamos en "Entidades de Valor": productos o servicios vivos (con su equipo, tecnología y presupuesto) que tienen un propósito claro y medible.
  * **Por qué importa:** Cambia el enfoque de "terminar proyectos" a "entregar valor continuamente". Evita la disolución del conocimiento que ocurre cuando los proyectos terminan y los equipos se desarman.

* **OKRs (Objetivos y Resultados Clave)**
  * **Qué es:** Un método para definir metas. Los **Objetivos** son cualitativos e inspiradores (el "qué"). Los **Resultados Clave** son cuantitativos y miden el progreso hacia el objetivo (el "cómo sabremos que llegamos").
  * **Por qué importa:** Enfocan a la organización en los **resultados** (ej. "reducir el tiempo de espera del ciudadano") en lugar de en las **tareas** (ej. "implementar el software X"). Fomentan una cultura de impacto medible.

* **Ciclo de Valor y Capacidad (CVC)**
  * **Qué es:** El principal ritual de gobernanza de ASTA-Kore. Una reunión trimestral, breve y basada en evidencia, donde un equipo demuestra el valor que ha generado y el liderazgo toma una decisión explícita de inversión sobre esa EV (Continuar, Expandir, Reducir o Cerrar).
  * **Por qué importa:** Reemplaza los comités lentos y los reportes de estado interminables por un diálogo de inversión ágil. Hace que la asignación de recursos sea una decisión dinámica basada en el rendimiento real, no en planes estáticos.

* **Contrato Conversacional**
  * **Qué es:** Un acuerdo explícito que define la interacción entre dos equipos o sistemas. Es el resultado de una conversación guiada, no un documento legalista. Su implementación técnica puede ser un `Contrato de API`, un `Contrato de Datos`, etc.
  * **Por qué importa:** Elimina la fricción y los malentendidos entre equipos ("yo pensé que tú me enviarías eso"). Hace que las dependencias sean explícitas y confiables, permitiendo que la organización funcione como una red de servicios robusta.

* **Bitácora de Decisión (ADR)**
  * **Qué es:** Un documento breve que registra una decisión de diseño o arquitectura importante, su contexto y sus consecuencias.
  * **Por qué importa:** Es la cura para la "amnesia organizacional". Evita que los equipos se pregunten constantemente "¿por qué hicimos esto así?" y previene que se repitan los mismos errores. Convierte el conocimiento tácito de los expertos en un activo explícito de la organización.

* **Plataforma Nexus**
  * **Qué es:** La arquitectura técnica de referencia de ASTA-Kore. Es el conjunto de herramientas, patrones y estándares (las "carreteras pavimentadas") que los equipos de ingeniería usan para construir Entidades de Valor.
  * **Por qué importa:** Garantiza que, aunque los equipos tengan autonomía, no creen caos. La seguridad, la calidad y la interoperabilidad vienen "de fábrica", acelerando la entrega de valor de forma segura y sostenible.

### Ejemplo en Acción: Modernizando un Servicio de Postulación

**Escenario:** Una organización tiene un sistema antiguo y engorroso para que los ciudadanos postulen a un subsidio. El proceso es lento, propenso a errores y frustrante.

1. **Calibración Estratégica (Ciclo Anual):**
    * El liderazgo, usando el `Mapa de Capacidades` (Σ-E), identifica "Gestión de Subsidios" como una capacidad de alta criticidad pero baja madurez.
    * Se define un **OKR** Anual (Δ-E): "Transformar la experiencia de postulación a subsidios para ser simple y transparente".

2. **Navegación Táctica (Ciclo Trimestral):**
    * Se asigna un equipo a la **Entidad de Valor** "Servicio de Postulación Unificado".
    * El equipo realiza un taller y plasma su diseño en el `Canvas de EV` (Σ-T). Identifican que necesitan datos del Registro Civil y que deben notificar al Ministerio de Finanzas.
    * Formulan su **OKR** Trimestral (Δ-T): "Reducir el tiempo de postulación promedio de 45 a 10 minutos".
    * Usan una **Guía de Decisión** `gd_arquitectura_nexus` para evaluar si construir un nuevo monolito o usar microservicios. Dado que el sistema debe ser escalable, eligen un enfoque basado en microservicios.

3. **Implementación con Nexus (Ciclos de Entrega):**
    * La decisión los lleva a la **Guía Técnica** `gt_ingenieria_software` que les indica cómo construir servicios en la **Plataforma Nexus**.
    * Negocian un **Contrato Conversacional** (Σ-O) con el equipo del Registro Civil para definir cómo consumirán sus datos.
    * Registran la decisión de usar microservicios en una **Bitácora de Decisión (ADR)** (Δ-O).

4. **Gobernanza del Valor (Fin del Trimestre):**
    * En la reunión del **CVC** (Δ-E), el equipo presenta su `Informe de CVC`: el tiempo de postulación se redujo a 15 minutos y una demo del nuevo flujo.
    * Basado en esta evidencia, el liderazgo decide **"Expandir"** la inversión en la EV para el siguiente trimestre.

Este ciclo virtuoso, que va de la estrategia a la ejecución y de vuelta a la estrategia, es el motor que ASTA-Kore busca instalar en el corazón de la organización.

```

### manual operacional/README.md

```markdown
# Manual Operacional ASTA-Kore

## Punto de Partida: El Manifiesto

Antes de explorar la estructura de directorios, se recomienda encarecidamente comenzar con la lectura del **`ASTA-Kore_Manifiesto_Estrategico.md`**. 

Este documento es la puerta de entrada conceptual al marco. Explica el **"porqué"** detrás de ASTA-Kore, los problemas que resuelve y los principios fundamentales que lo sustentan. Es la pieza clave para entender la filosofía del sistema antes de sumergirse en los detalles operacionales.

1. **`./metodologia refactorizada/`**
    * **Propósito:** Contiene los pilares conceptuales e inmutables de KORE. Es el **"Sistema Operativo"** del marco.
    * **Contenidos Clave:**
        * `ontologia.md`: El vocabulario y modelo conceptual formal.
        * `protocolos.md`: Los rituales y ciclos de trabajo.
        * `catalogo.md`: Las plantillas de artefactos.
        * `adopcion.md`: La guía para la implementación gradual.

2. **`./guias decision/` (GD)**
    * **Propósito:** Documentos estratégicos y de alto nivel que ayudan a tomar decisiones clave. Responden al **"porqué"**.
    * **Uso:** Se utilizan para guiar la conversación en los talleres de diseño y estrategia. Enlazan a las Guías Técnicas para los detalles de implementación.

3. **`./guias tecnicas/` (GT)**
    * **Propósito:** Documentos de implementación detallados que establecen patrones, prácticas y tecnologías. Responden al **"cómo"**.
    * **Uso:** Sirven como la fuente de verdad técnica para los equipos de ingeniería y desarrollo al construir `Entidades de Valor`.

Esta estructura asegura que cada pieza de conocimiento tenga un lugar y un propósito claro, facilitando la navegación y la aplicación coherente de la metodología.

```

### manual operacional/guias decision/gd_arquitectura_nexus.md

```markdown
# Guía de Decisión: Arquitectura de Entidades de Valor con la Plataforma Nexus

ID: `GD-SIGMA-001`
Versión: 2.0
Propósito: Esta es la guía maestra que establece la Plataforma Nexus como la implementación canónica de KORE. Guía a los equipos en la adopción de sus principios y en la elección de patrones arquitectónicos para sus `Entidades de Valor`.

---

## Principio KORE: La Arquitectura como Consecuencia del Diseño

La elección de un patrón arquitectónico (Monolito, Microservicios) no es el primer paso, sino una consecuencia del diseño de la `Entidad de Valor`. El acto de diseño más importante es definir los límites de la EV usando el `Canvas de EV`.

## Protocolo de Decisión Arquitectónica

### Parte 1: Adopción de los Fundamentos de la Plataforma Nexus

Toda `Entidad de Valor` construida bajo el marco KORE debe adoptar los siguientes componentes de la Plataforma Nexus para garantizar la coherencia y la interoperabilidad del ecosistema.

| Si su objetivo es... | Debe adoptar el componente Nexus... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Asegurar la coherencia en el diseño. | Los Principios de la Plataforma Nexus. | Son la traducción de la filosofía KORE en directivas de ingeniería no negociables. | `gt_arquitectura_nexus.md` |
| Garantizar la interoperabilidad robusta. | El Sistema de Contratos Nexus. | Son la implementación técnica de los `Contratos Conversacionales` de KORE. | `gt_arquitectura_nexus.md` |
| Construir sobre una base sólida. | La Plataforma de Ingeniería Nexus. | Provee las herramientas (CI/CD, IaC, Observabilidad) para construir con calidad y velocidad. | `gt_arquitectura_nexus.md` |

### Parte 2: Selección del Patrón Arquitectónico para la Aplicación

Una vez definidos los límites de la EV en el `Canvas de EV`, utilice la siguiente heurística para seleccionar el patrón de aplicación más adecuado. Documente siempre la justificación en una `Bitácora de Decisión (ADR)`.

| Si su `Entidad de Valor` es... | Considere el patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Simple, autocontenida y gestionada por un solo equipo. | Monolito Modular | Prioriza la simplicidad de desarrollo y despliegue inicial. | `gt_ingenieria_software.md` |
| Compleja, con necesidad de escalabilidad granular y autonomía de equipo. | Microservicios | Permite despliegues independientes y resiliencia por componente. | `gt_ingenieria_software.md` |
| Requerida para reaccionar a eventos de negocio de forma asíncrona. | Arquitectura Orientada a Eventos (EDA) | Proporciona máxima desacoplación y absorbe picos de carga. | `gt_ingenieria_software.md` |

Advertencia: La complejidad operacional de los sistemas distribuidos (Microservicios, EDA) es alta. No los adopte a menos que los beneficios superen claramente los costos. Empiece simple.
```

### manual operacional/guias decision/gd_automatizacion_proceso.md

```markdown
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

```

### manual operacional/guias decision/gd_datos.md

```markdown
# Guía de Decisión: Diseño de Productos de Datos

ID: `GD-DATA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño, la gobernanza y la operación de Productos de Datos como `Entidades de Valor (EV)`.

---

## Principio KORE: El Dato como un Producto, no como un Subproducto

En KORE, un conjunto de datos expuesto no es un subproducto de un proceso, sino una `Entidad de Valor` de primera clase. Como tal, debe ser tratado como un producto: tiene un dueño, un ciclo de vida, clientes (consumidores), y `SLOs` de calidad y disponibilidad que se formalizan en un `Contrato de Datos`.

## Protocolo de Decisión para el Diseño de un Producto de Datos

Utilice el `Canvas de EV` como herramienta principal para el diseño colaborativo de un Producto de Datos. Las siguientes preguntas clave deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Producto de Datos |
| :--- | :--- |
| 1. Propósito | ¿Qué decisión de negocio o capacidad analítica habilita este producto de datos? |
| 2. Usuarios | ¿Quién o qué consume los datos? (Personas, APIs, Modelos de IA). |
| 3. Flujo de Valor | ¿Cuál es el linaje de los datos? (ej. `Bronce -> Plata -> Oro`). |
| 4. Métricas (SLOs) | ¿Cómo medimos su fiabilidad? (ej. `Frescura < 1h`, `Disponibilidad > 99.9%`). |
| 8. Gobernanza | ¿Cuáles son las reglas de acceso, uso y calidad? ¿Quién es el dueño del producto? |

## Heurísticas de Decisión Arquitectónica

Las decisiones técnicas significativas sobre la implementación de un producto de datos deben ser documentadas en `ADRs`. Utilice la siguiente guía para la toma de decisiones y consulte la guía técnica para los detalles de implementación.

| Si necesita... | Considere el patrón/tecnología... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Gobernar la calidad y el acceso a su producto de datos. | Implementar un `Contrato de Datos` versionado. | Formaliza las expectativas entre productor y consumidor y permite la gobernanza automatizada. | `gt_ingenieria_datos.md` |
| Equilibrar flexibilidad y rendimiento para el almacenamiento de datos. | Una arquitectura Lakehouse con zonas Bronce, Plata y Oro. | Combina la flexibilidad de un Data Lake con la gobernanza y el rendimiento de un Data Warehouse. | `gt_ingenieria_datos.md` |
| Asegurar la calidad de los datos de forma sistemática. | Un Pipeline de Calidad de Datos (Preventivo, Detectivo, Correctivo). | Transforma la calidad de los datos de una tarea manual a un proceso de ingeniería automatizado. | `gt_ingenieria_datos.md` |
| Medir y garantizar la fiabilidad de sus productos de datos. | Un enfoque de SRE de Datos con `SLIs` y `SLOs`. | Trata los productos de datos como servicios críticos cuya fiabilidad se mide y se gestiona activamente. | `gt_ingenieria_datos.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la estructura detallada de los `Contratos de Datos`, los pipelines de calidad y la observabilidad, consulte la `gt_ingenieria_datos.md`.

```

### manual operacional/guias decision/gd_experiencia_usuario.md

```markdown
# Guía de Decisión: Diseño de Experiencia de Usuario (UX)

ID: `GD-UX-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño de la experiencia de usuario (UX) para una `Entidad de Valor (EV)`.

---

## Principio KORE: La Experiencia del Usuario es una Capacidad, no un Adorno

Una `Entidad de Valor` no solo debe ser funcionalmente correcta, sino también usable, accesible y eficiente. La UX es una dimensión crítica de la calidad que debe ser considerada desde el inicio del diseño en el `Canvas de EV`, no como una ocurrencia tardía.

## Protocolo de Decisión para el Diseño de UX

Durante el `Taller de Canvas de EV`, utilice las siguientes preguntas para guiar la conversación sobre la experiencia del usuario:

| Caja del Canvas | Pregunta Clave de UX a Responder |
| :--- | :--- |
| 2. Usuarios | ¿Quiénes son los consumidores de esta EV? ¿Cuál es su contexto, nivel de habilidad y necesidades de accesibilidad? |
| 3. Flujo de Valor | ¿Cómo es el "viaje del usuario" al interactuar con esta EV? ¿Dónde podemos reducir la fricción? |
| 5. Descubrimiento | ¿Cómo encontrarán los usuarios la funcionalidad que necesitan? ¿Es la navegación intuitiva? |
| 8. Gobernanza | ¿Cómo proporcionamos ayuda contextual y manejamos los errores de forma clara? |

## Heurísticas de Decisión de Diseño

Las decisiones de diseño deben estar alineadas con los principios de la UX moderna. Utilice esta guía para orientar sus decisiones y consulte la guía técnica para patrones de implementación.

| Si su objetivo es... | Considere el principio/patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Simplificar interfaces complejas y reducir la carga cognitiva. | Divulgación Progresiva y Minimalismo. | Muestra solo lo necesario, revelando la complejidad solo cuando se solicita. | `gt_diseno_ux.md` |
| Aumentar la eficiencia de los usuarios expertos. | Atajos de Teclado y Paletas de Comandos. | Permite a los usuarios avanzados operar la interfaz sin depender del ratón, acelerando tareas repetitivas. | `gt_diseno_ux.md` |
| Garantizar la coherencia a través de múltiples aplicaciones. | Adoptar un Sistema de Diseño (Design System). | Proporciona un repositorio central de componentes y patrones reutilizables, acelerando el desarrollo. | `gt_diseno_ux.md` |
| Hacer la aplicación accesible para todos los usuarios. | Diseño Inclusivo (WCAG) por defecto. | La accesibilidad no es una opción, es un requisito que beneficia a todos los usuarios. | `gt_diseno_ux.md` |
| Integrar IA para mejorar la experiencia. | Copilotos y Asistentes de IA. | Aumenta la inteligencia del usuario, automatiza tareas y proporciona ayuda contextual en lenguaje natural. | `gt_diseno_ux.md`, `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la gestión de un Sistema de Diseño, patrones de interfaz para aplicaciones empresariales y la integración de IA en la UX, consulte la `gt_diseno_ux.md`.

```

### manual operacional/guias decision/gd_know.md

```markdown
# Guía de Decisión: Gestión del Conocimiento

ID: `GD-KNOW-001`
Versión: 1.0
Propósito: Ayudar a los equipos y a la organización a tomar decisiones sobre cómo capturar, sintetizar y aplicar el conocimiento para mejorar la entrega de valor.

---

## Principio KORE: El Conocimiento es una Capacidad Activa, no un Archivo Pasivo

La Gestión del Conocimiento (KM) no es un fin en sí mismo, sino una capacidad habilitadora que reduce la incertidumbre y acelera los ciclos de aprendizaje. En KORE, el conocimiento se gestiona a través de los rituales y artefactos del marco.

## Protocolo de Decisión para la Gestión del Conocimiento

| Si su objetivo es... | Considere el protocolo/patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Capturar el "porqué" de una decisión técnica importante. | Documentar la decisión en una `Bitácora de Decisión (ADR)`. | Combate la "amnesia organizacional" y crea un activo de conocimiento explícito y reutilizable. | `gt_ingenieria_software.md` |
| Sintetizar el conocimiento de un dominio en una forma accionable. | Crear o actualizar una Guía Técnica (GT). | Consolida el "cómo" en una fuente única de verdad, separándolo del "porqué" estratégico. | `gt_arquitectura_nexus.md` |
| Habilitar a un Sistema de IA para que responda preguntas sobre conocimiento interno de forma confiable. | Implementar un Pipeline de Curación para RAG. | Transforma documentos no estructurados en una base de conocimiento que la IA puede usar para dar respuestas citables y verificables. | `gt_gestion_conocimiento.md` |
| Gobernar el uso del conocimiento por parte de la IA. | Implementar un `Contrato de Conocimiento`. | Define las reglas de autoridad, vigencia y citación para una colección de conocimiento, garantizando su uso responsable. | `gt_gestion_conocimiento.md` |

Para una inmersión profunda en la implementación de un sistema de gestión del conocimiento, y especialmente en el pipeline técnico para la curación de contenido para RAG, consulte la `gt_gestion_conocimiento.md`.

```

### manual operacional/guias decision/gd_sistemascognitivos.md

```markdown
# Guía de Decisión: Diseño de Sistemas Cognitivos (IA)

ID: `GD-IA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño, la gobernanza y el rol de los Sistemas Cognitivos (agentes, copilotos) como `Entidades de Valor (EV)`.

---

## Principio KORE: Aumentar la Inteligencia Humana, no Reemplazarla

El objetivo principal de un Sistema Cognitivo en KORE es aumentar y escalar la capacidad humana. El diseño debe priorizar la colaboración humano-máquina, la confianza y la capacidad del humano para supervisar, intervenir y anular al sistema. El `Humano-en-el-Bucle (HITL)` no es una opción, es el modo de operación por defecto para decisiones de alto impacto.

## Protocolo de Decisión para el diseño de un Sistema Cognitivo

Utilice el `Canvas de EV` como el artefacto central para el diseño colaborativo de un Sistema Cognitivo. Las siguientes preguntas deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Sistema Cognitivo |
| :--- | :--- |
| 1. Propósito |  Qué decisión o tarea humana estamos aumentando?  Qué es el KPI de éxito del negocio? |
| 2. Usuarios |  Quién interactúa con el sistema (experto, novato)?  Qué nivel de autonomía y confianza le daremos? |
| 3. Flujo de Valor |  Qué es el pipeline cognitivo (ej. RAG, Tool Calling)?  Dónde están los puntos de control HITL? |
| 4. Métricas (SLOs) |  Más allá de la precisión:  Qué es la latencia (`TTFT`), el costo por inferencia, la tasa de alucinación? |
| 8. Gobernanza |  Qué `Guardrails` previenen el contenido tóxico o las fugas de datos?  Cómo se auditan sus acciones? |

## Heurísticas de Decisión de Arquitectura y Rol

Las decisiones sobre la arquitectura y el rol del agente deben ser documentadas en `ADRs`. Use la siguiente guía para orientar la decisión.

| Si su objetivo es... | Considere el patrón/rol... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Responder preguntas sobre un corpus de conocimiento privado y confiable. | Generación Aumentada por Recuperación (RAG) | Permite a los LLMs generar respuestas basadas en sus datos, con citas, reduciendo la alucinación. | `gt_ingenieria_ia.md`, `gt_gestion_conocimiento.md` |
| Permitir que la IA interactúe con otros sistemas para ejecutar acciones. | Llamado a Herramientas (Tool Calling) | Expone APIs de negocio de forma segura para que el agente las invoque y realice tareas en el mundo real. | `gt_ingenieria_ia.md` |
| Orquestar múltiples `EVs` (datos, IA, APIs) en un flujo de negocio complejo. | Un Agente Orquestador que sigue un `Contrato de Proceso`. | Centraliza la lógica del flujo de valor, invocando otras capacidades a través de sus `Contratos`. | `gt_ingenieria_software.md`, `gt_arquitectura_sigma.md` |
| Definir los límites y capacidades de un agente de IA. | Implementar un `Contrato de Agente` explícito. | Formaliza el nivel de autonomía, las herramientas permitidas y los `Guardrails` del agente. | `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la arquitectura de referencia para aplicaciones de LLM, el diseño de `Contratos de Agente` y las prácticas de MLOps/LLMOps, consulte la `gt_ingenieria_ia.md`.
```

### manual operacional/guias tecnicas/gt_arquitectura_nexus.md

```markdown
# Guía Técnica: Arquitectura de Referencia Nexus

ID: `GT-SIGMA-001`
Versión: 1.0
Dominio: Arquitectura Empresarial

Propósito: Esta guía técnica define la arquitectura de referencia Nexus. Nexus es la implementación canónica de los principios ASTA-Kore, proveyendo el "cómo" técnico para el "porqué" estratégico del marco. Su nombre evoca su función: ser el punto de conexión central entre la estrategia, la gobernanza y la implementación técnica.

Audiencia: Arquitectos de Soluciones, Líderes Técnicos, Ingenieros Senior.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_arquitectura_aplicacion.md`
* Artefactos KORE Gobernados: `Canvas de EV`, `Mapa de Capacidades`, `Contratos Conversacionales`, `ADRs`.

---

## 1. Principios de la Plataforma Nexus

Estos principios son la traducción de la filosofía KORE en directivas de ingeniería no negociables.

1. Semántica Primero: Todo artefacto técnico (microservicio, producto de datos, agente) debe operar bajo un `Contrato` explícito y versionado. La semántica precede a la implementación.
2. Gobernanza Embebida: Las políticas de seguridad, riesgo y cumplimiento (`Guardrails`) se implementan como código (`Policy-as-Code`) y se integran en los pipelines de CI/CD. La gobernanza es una capacidad automatizada, no un comité.
3. Federación con Guardrails: Los equipos de dominio tienen autonomía para elegir sus herramientas y patrones, siempre que cumplan con los `Contratos` y `Guardrails` definidos por la plataforma central.
4. Observabilidad por Diseño: Todas las `Entidades de Valor` deben ser instrumentadas desde su concepción para emitir las "tres columnas" de la observabilidad (Logs Estructurados, Métricas y Trazas). Los `SLOs` deben ser medibles.
5. Humano-en-el-Bucle (HITL) por Defecto: Para cualquier proceso que implique un riesgo significativo (financiero, legal, reputacional), la autonomía de los agentes digitales debe ser supervisada. El modo de interacción por defecto es HITL.
6. API-First, RPA como Último Recurso: La interacción programática a través de APIs es el estándar. El uso de RPA es una forma de deuda técnica que debe ser aprobada por el CoE de Automatización y documentada en un `ADR` con un plan de reemplazo.

## 2. Arquitectura de Capas de Nexus

Esta arquitectura define el `Mapa de Capacidades` de la plataforma tecnológica que soporta el ecosistema KORE.

| Capa de Nexus | Propósito en el Ecosistema KORE | Capacidades Clave | Tecnologías de Referencia |
| :--- | :--- | :--- | :--- |
| Capa de Valor y Gobierno | Define las "reglas del juego" estratégicas. | Gestión de Políticas (Policy-as-Code), Ética y Riesgo, CoE, FinOps. | OPA, Cedar, Jira, PowerBI. |
| Capa Semántica Común | Provee el vocabulario compartido y la interoperabilidad. | Ontología KORE (SHACL/OWL), Glosario de Negocio, Plantillas de `Contratos`. | VocBench, Schema.org, Git. |
| Tejidos de Ejecución | Materializa las `Entidades de Valor` en dominios específicos. | Tejido de Conocimiento (RAG), Tejido de Datos (Data Mesh), Tejido de Procesos (BPM), Tejido de Agentes (IA). | Ver Guías Técnicas de cada dominio. |
| Plataforma de Ingeniería | Provee las herramientas para construir y operar con calidad. | CI/CD, Infraestructura como Código (IaC), Observabilidad, Seguridad (SAST/DAST/SCA). | GitLab CI, Terraform, Prometheus, Grafana, SonarQube, Vault. |
| Capa de Integración | Permite que las `Entidades de Valor` se comuniquen. | API Gateway, Bus de Mensajes, Catálogos de Servicios y Datos. | Kong, Kafka, Backstage, Amundsen. |

## 3. El Sistema de Contratos de Nexus

La Plataforma Nexus define cuatro tipos de `Contratos` técnicos que son la implementación del `Contrato Conversacional` de KORE. Son los acuerdos legalmente vinculantes de nuestro sistema sociotécnico.

* `Contrato de Datos`:
  * Gobierna: Un `Producto de Datos`.
  * Asegura: Calidad, frescura, linaje y semántica de los datos.
  * Referencia: `gt_ingenieria_datos.md`

* `Contrato de Proceso`:
  * Gobierna: Un `Flujo de Valor` automatizado.
  * Asegura: SLAs de rendimiento, puntos de HITL y lógica de compensación.
  * Referencia: `gt_ingenieria_software.md`

* `Contrato de Agente`:
  * Gobierna: Un `Sistema Cognitivo` (Agente de IA).
  * Asegura: Nivel de autonomía, herramientas permitidas y `Guardrails` de comportamiento.
  * Referencia: `gt_ingenieria_ia.md`

* `Contrato de Conocimiento`:
  * Gobierna: Una colección de conocimiento para ser usada por un sistema RAG.
  * Asegura: Autoridad de la fuente, vigencia y obligación de generar respuestas con citas.
  * Referencia: `gt_gestion_conocimiento.md`

## 4. La Ontología de Nexus

La ontología de Nexus es el `Modelo Conceptual` formal de KORE. Define las entidades (`SistemaDeTrabajo`, `AgenteDigital`, `ProductoDeDatos`), sus atributos y sus relaciones. Permite la validación automática de la coherencia del sistema.
> "Toda `RespuestaRAG` generada por un `AgenteDigital` debe tener al menos una cita a un `Chunk` de un `Documento` cuyo `ContratoDeConocimiento` tenga la política `citation_policy: required_exact`."

```

### manual operacional/guias tecnicas/gt_diseno_ux.md

```markdown
# Guía Técnica: Diseño de Experiencia de Usuario (UX)

ID: `GT-UX-001`
Versión: 1.0
Dominio: Diseño de Experiencia de Usuario, Diseño de Interfaz

Propósito: Esta guía técnica establece los principios, patrones y mejores prácticas para el diseño de la experiencia de usuario (UX) de las `Entidades de Valor (EV)`. El objetivo es asegurar que las interfaces sean usables, accesibles, eficientes y coherentes.

Audiencia: Diseñadores de UX/UI, Dueños de Producto, Desarrolladores Frontend.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_experiencia_usuario.md`
* Artefactos KORE Informados: `Canvas de EV` (Cajas 2, 3, 9), `Mapeo de Historias`.

---

## 1. Principios de Diseño UX para Entidades de Valor KORE

Estos principios deben guiar todas las decisiones de diseño de interfaces.

1. Reducir la Carga Cognitiva:
    * Divulgación Progresiva: Muestre solo la información y las acciones necesarias para la tarea actual. Oculte la complejidad avanzada hasta que se solicite explícitamente.
    * Minimalismo y Claridad: Utilice espacios en blanco, tipografía legible y una paleta de colores limitada para ayudar a los usuarios a enfocarse.

2. Proporcionar Feedback Claro e Inmediato:
    * Micro-interacciones: Use animaciones sutiles para confirmar acciones (guardado, error, carga). Esto asegura al usuario que el sistema ha respondido.
    * Estados Visibles: La interfaz debe comunicar claramente su estado actual (cargando, error, éxito, deshabilitado).

3. Diseñar para la Eficiencia del Usuario Experto:
    * Atajos de Teclado y Paletas de Comandos: Permita a los usuarios avanzados operar la interfaz sin depender del ratón. Una paleta de comandos universal (ej. `Ctrl+K`) es un acelerador poderoso.
    * Flujos no Lineales: Permita guardar borradores, saltar entre tareas relacionadas y trabajar en paralelo. No fuerce a los usuarios a un único "camino feliz".

4. Habilitar la Colaboración:
    * Colaboración en Tiempo Real: Si la `EV` es utilizada por múltiples personas, permita ver las ediciones y comentarios de los demás en tiempo real (estilo Figma/Google Docs).

5. Ser Inclusivo y Accesible por Defecto:
    * Cumplimiento de WCAG: La accesibilidad no es una opción. Asegure la compatibilidad con lectores de pantalla, navegación por teclado y contrastes de color adecuados desde el inicio.
    * Diseño Visual Inclusivo: Utilice un lenguaje claro y pruebe las paletas de colores para diferentes tipos de daltonismo.

6. Aumentar la Inteligencia del Usuario con IA:
    * Copilotos y Asistentes: Incorpore asistentes contextuales que puedan generar contenido, responder preguntas o guiar al usuario.
    * UX Predictiva: Anticipe las necesidades del usuario, sugiriendo acciones probables o pre-rellenando información basada en el contexto.

## 2. El Sistema de Diseño (Design System)

Un Sistema de Diseño es la fuente única de verdad para la UX/UI. Es un producto vivo, no un documento estático.

* Componentes:
  * Biblioteca de Componentes: Un conjunto de componentes de UI reutilizables (botones, formularios, modales) con su código (ej. en React, Vue) y documentación.
  * Tokens de Diseño: Variables para atributos de diseño (colores, espaciado, tipografía). Permiten aplicar temas (ej. modo oscuro, marca blanca) a escala.
  * Guías de Estilo y Contenido: Reglas sobre el uso de la marca, la voz y el tono de la comunicación.
  * Patrones de Diseño: Soluciones documentadas para problemas de diseño recurrentes (ej. patrón de búsqueda, patrón de tabla de datos).

* Gobernanza:
  * Debe existir un equipo o comité responsable de mantener y evolucionar el Sistema de Diseño.
  * Los nuevos componentes o patrones deben pasar por un proceso de revisión para asegurar su calidad y coherencia.

## 3. Patrones de Interfaz para Aplicaciones Empresariales

* Navegación:
  * Menú Lateral Fijo: Estándar para aplicaciones complejas con muchas secciones.
  * Barra Superior con Búsqueda Global: Proporciona un punto de acceso constante a la búsqueda.

* Visualización de Datos:
  * Tablas de Datos Interactivas: Deben incluir ordenamiento, filtrado, paginación y la capacidad de seleccionar y personalizar columnas.
  * Dashboards Modulares: Compuestos por widgets o tarjetas que los usuarios pueden reorganizar, añadir o quitar para personalizar su vista.

* Entrada de Datos:
  * Formularios Multi-paso (Wizards): Para procesos de entrada de datos largos, dividiéndolos en pasos lógicos con una barra de progreso.
  * Validación en Línea: Proporcionar feedback sobre los errores de entrada de datos a medida que el usuario escribe, no solo al final.

* Interacción con IA:
  * Interfaces Conversacionales (Chat): Para asistentes y copilotos. Deben soportar respuestas en streaming y la capacidad de mostrar componentes ricos (tablas, gráficos) dentro de la conversación.
  * Sugerencias y Autocompletado Inteligente: Integrar sugerencias generadas por IA directamente en los campos de texto y formularios.

```

### manual operacional/guias tecnicas/gt_gestion_conocimiento.md

```markdown
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

```

### manual operacional/guias tecnicas/gt_ingenieria_datos.md

```markdown
# Guía Técnica: Ingeniería de Datos Orientada a Productos

ID: `GT-DATA-001`
Versión: 1.0
Dominio: Ingeniería de Datos, Arquitectura de Datos

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para diseñar, construir y operar Productos de Datos como `Entidades de Valor (EV)` confiables, gobernadas y de autoservicio.

Audiencia: Arquitectos de Datos, Ingenieros de Datos, Data Product Owners.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_datos.md`
* Contrato Nexus Implementado: `Contrato de Datos`

---

## 1. Principios de la Ingeniería de Datos KORE

1. Dato como Producto (Data as a Product): Cada conjunto de datos expuesto es un producto. Tiene un dueño, un ciclo de vida, un `Contrato de Datos` explícito y `SLOs` de calidad y disponibilidad.
2. Gobernanza Federada y Automatizada: La gobernanza no es un cuello de botella central. Se implementa a través de `policy-as-code` (ej. OPA/Rego) y se aplica automáticamente en los pipelines.
3. Semántica Primero: Antes de mover datos, se define su significado. El `Glosario de Negocio` y los modelos conceptuales son artefactos de primera clase.
4. Observabilidad de Datos: Los pipelines y productos de datos deben ser instrumentados para medir las dimensiones de calidad (frescura, completitud, validez) y rendimiento.

## 2. Arquitectura de Referencia: Lakehouse Orientado a Zonas

Esta arquitectura equilibra la flexibilidad de un Data Lake con el rendimiento y la gobernanza de un Data Warehouse.

* Zona Bronce (Crudo):
  * Propósito: Ingesta de datos en su formato original, inmutable.
  * Tecnología: Almacenamiento de objetos (S3, ADLS) con formatos eficientes (Parquet, Avro).
  * Patrón de Ingesta: CDC (Debezium), Outbox Pattern para eventos, APIs, Batch.

* Zona Plata (Limpio y Conforme):
  * Propósito: Limpieza, desduplicación, conformación de datos y aplicación de reglas de calidad. Los datos se modelan y se les asignan identificadores únicos.
  * Tecnología: Motores de procesamiento distribuido (Spark, dbt) sobre formatos de tabla transaccionales (Delta Lake, Iceberg, Hudi).

* Zona Oro (Agregado y Expuesto):
  * Propósito: Creación de los `Productos de Datos` finales, agregados y optimizados para el consumo. Son las vistas de negocio.
  * Tecnología: Vistas materializadas, modelos dimensionales (Star Schema), APIs de datos (GraphQL/REST).

## 3. El `Contrato de Datos`

Este `Contrato Nexus` es el pilar de la gobernanza de datos. Es un archivo YAML versionado en Git que define las expectativas entre el productor y el consumidor de un `Producto de Datos`.

Estructura Mínima del Contrato:

```yaml
product: facturacion_clientes
version: 1.0.0
owner: "equipo-finanzas"
interfaces: # Cómo se consume
  - type: sql
    uri: "warehouse.gold.facturacion_clientes"
  - type: api
    uri: "/v1/facturacion"
semantics: # Qué significa
  glossary_refs: ["Factura", "Cliente"]
  business_rules:
    - name: factura_valida
      rule: "estado IN ('EMITIDA', 'PAGADA', 'ANULADA')"
schema: # Cuál es la estructura
  primary_key: [id_factura]
  fields:
    - {name: id_factura, type: string, required: true}
    - {name: monto_total, type: decimal(18,2), required: true}
quality: # Cuán confiable es
  checks:
    - {name: pk_unica, rule: "unique(id_factura)"}
    - {name: monto_positivo, rule: "monto_total >= 0"}
slo: # Compromisos medibles
  freshness_p95_minutes: 60
  availability_pct: 99.9
security: # Quién puede acceder
  classification: "Confidencial"
  access_roles: ["analista_finanzas"]
lineage: # De dónde viene
  sources: ["kafka.topic.billing.events", "db.legacy.customers"]
changes: # Cómo evoluciona
  policy: semver
  deprecation_window_days: 90
```

## 4. Protocolo de Calidad de Datos (Data Quality)

La calidad de los datos se gestiona como un sistema, no como una tarea manual.

* Dimensiones de Calidad: Medir sistemáticamente exactitud, completitud, validez, unicidad, consistencia y frescura.
* Pipeline de DQ:
    1. Preventivo: Validar datos en el punto de entrada (APIs, UIs) usando el `Contrato de Datos`.
    2. Detectivo: Ejecutar tests de calidad como parte del pipeline de transformación (ej. Great Expectations, dbt tests) entre las zonas Bronce, Plata y Oro.
    3. Correctivo: Poner en cuarentena los registros que fallan las validaciones para su análisis, en lugar de detener todo el pipeline.

## 5. Observabilidad y SRE de Datos

Tratar los `Productos de Datos` como servicios con `SLOs` y `Error Budgets`.

* SLIs (Indicadores de Nivel de Servicio):
  * Frescura (p95): ¿Cuán actualizados están los datos?
  * Latencia de Pipeline (p95): ¿Cuánto tarda el pipeline E2E en ejecutarse?
  * Tasa de Fallos de Calidad: % de registros que violan las reglas de calidad.
  * Disponibilidad de la Interfaz: % de tiempo que la API o la tabla está accesible.
* Linaje Activo: Utilizar herramientas como OpenLineage para capturar automáticamente el linaje de datos a nivel de columna. El linaje no es un diagrama estático, es metadata viva.

## 6. Seguridad y Privacidad

La seguridad de los datos es por diseño, no por accidente.

* Clasificación de Datos: Etiquetar cada `Producto de Datos` con un nivel de sensibilidad (ej. Público, Interno, Confidencial, Restringido).
* Control de Acceso Basado en Atributos (ABAC): Usar políticas (`Policy-as-Code` con OPA/Rego) que definen el acceso basado en el rol del usuario, la clasificación del dato y el contexto de la petición.
* Privacidad por Diseño: Aplicar técnicas de minimización, anonimización y pseudoanonimización según la clasificación del dato. Implementar políticas de retención y expurgo automáticas.

```

### manual operacional/guias tecnicas/gt_ingenieria_ia.md

```markdown
# Guía Técnica: Ingeniería de Sistemas Cognitivos (IA)

ID: `GT-IA-001`
Versión: 1.0
Dominio: Inteligencia Artificial, MLOps, LLMOps

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para el diseño, construcción y operación de Sistemas Cognitivos (agentes, copilotos, motores de inferencia) como `Entidades de Valor (EV)` responsables y gobernadas.

Audiencia: Arquitectos de IA, Ingenieros de ML/IA, Científicos de Datos.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Agente`

---

## 1. Principios KORE para Sistemas Cognitivos

1. El Modelo no es el Sistema: El valor reside en el sistema sociotécnico completo que rodea al modelo (datos, interfaces, `Contratos`, `Guardrails`), no solo en la precisión del modelo.
2. Contexto Específico: El rendimiento de un modelo de IA no es transferible. Cada aplicación debe ser validada para su caso de uso y contexto específico.
3. Aumento, no Reemplazo: Priorizar el diseño de sistemas que aumenten la inteligencia humana. El patrón `Humano-en-el-Bucle (HITL)` es la norma para decisiones de alto impacto.
4. Responsabilidad Distribuida: La responsabilidad por las acciones de un agente de IA se distribuye explícitamente entre roles definidos (Dueño de la Capacidad, Arquitecto de IA, Ingeniero de Prompts, etc.).

## 2. Arquitectura de Referencia para Aplicaciones de LLM

Esta arquitectura de 4 capas permite construir aplicaciones de IA de forma segura, escalable y agnóstica al proveedor del modelo.

* Capa 4: Aplicación y Experiencia de Usuario (UX): La interfaz final con el usuario (chatbot, copiloto en una app existente, buscador inteligente).
* Capa 3: Servicios de Negocio e Integración: Expone la capacidad de IA como una API segura y gobernada, integrada con el sistema de identidad de la empresa (OIDC/SSO).
* Capa 2: Gateway de IA (Consumo del Modelo): Fachada única que centraliza todas las llamadas a las APIs de LLMs. Proporciona abstracción del proveedor, gestión de credenciales, caché, control de tráfico y monitoreo de costos.
* Capa 1: Orquestación de Lógica y Contexto: El "cerebro" de la aplicación. Coordina el flujo de trabajo, gestiona los prompts y la memoria de la conversación, y decide cuándo usar RAG o llamar a herramientas.

## 3. Patrones de Orquestación Cognitiva

* Generación Aumentada por Recuperación (RAG - Retrieval-Augmented Generation):
  * Propósito: Permite a los LLMs responder preguntas basadas en un corpus de conocimiento privado y confiable.
  * Flujo: `Ingesta y Curación` -> `Chunking Estructural` -> `Indexación Híbrida (Vectorial + Lexical)` -> `Recuperación y Re-ranking` -> `Construcción de Prompt con Contexto` -> `Generación con Citas`.
  * Gobernanza: Regulado por el `Contrato de Conocimiento`. Ver `gt_gestion_conocimiento.md`.

* Llamado a Herramientas (Tool Calling / Function Calling):
  * Propósito: Permite a un LLM interactuar con el mundo exterior invocando APIs de negocio (ej. consultar un stock, crear un ticket).
  * Gobernanza: Cada herramienta expuesta al LLM debe tener un `Contrato de Servicio` claro y permisos de acceso restringidos.

* Sistemas Multi-Agente:
  * Propósito: Descomponer tareas complejas en roles especializados (ej. `Planificador-Ejecutor`, `Crítico-Refinador`).
  * Patrones: `Router` (dirige la petición al agente correcto), `Supervisor-Worker`, `Debate`.

## 4. El `Contrato de Agente`

Este `Contrato Nexus` define la "personalidad", las capacidades y los límites de un agente de IA.

Estructura Mínima del Contrato:

```yaml
agent_id: "agente_revision_contratos"
version: 1.0
owner: "equipo-legal"
autonomy_level: "PLAN_AND_EXECUTE" # Nivel de autonomía (RAG, ReAct, Plan & Execute)
role: "COPRODUCIR" # Rol en el sistema de trabajo (Monitor, Coproduce, Execute)
tools: # Herramientas que puede invocar
  - "api:buscar_jurisprudencia"
  - "api:validar_clausula_riesgo"
rag_policy: # Cómo usa el conocimiento
  retrieval_mode: "hybrid"
  citation_policy: "required_exact"
guardrails: # Barandas de seguridad
  input_scans: ["pii_detection", "prompt_injection_filter"]
  output_scans: ["toxicity_scan", "faithfulness_check"]
  operational_limits:
    max_iterations: 5
    token_cost_limit_usd: 1.5
quality_metrics: # SLOs del agente
  faithfulness_score: ">= 0.9"
  citation_exactness: ">= 0.95"
hitl_checkpoints: # Cuándo escalar a un humano
  - "confidence_score < 0.8"
  - "riesgo_legal_detectado == 'alto'"
```

## 5. MLOps y LLMOps: El Ciclo de Vida Operacional

* Gestión de Prompts: Tratar los prompts como código. Centralizarlos en un `Registro de Prompts` para versionarlos, probarlos (A/B testing) y actualizarlos sin redesplegar la aplicación.
* Serving de Modelos:
  * Runtimes Optimizados: Utilizar servidores de inferencia como vLLM, TGI o Triton para maximizar el rendimiento en GPUs (ej. con `continuous batching`).
  * Endpoints OpenAI-Compatible: Exponer los modelos (tanto comerciales como open-source) a través de una API interna compatible con el estándar de OpenAI para facilitar la integración.
* Evaluación y Monitoreo:
  * Evaluación Offline: Usar `golden sets` (conjuntos de datos de prueba) para regresión y `LLM-as-a-judge` para evaluar la calidad de las respuestas en base a rúbricas.
  * Monitoreo Online: Medir métricas de calidad (fidelidad, tasa de alucinación, toxicidad), rendimiento (latencia TTFT, tokens/seg), y costo (costo por tarea/conversación).
* Seguridad (OWASP Top 10 para LLMs): Implementar defensas contra `inyección de prompts`, `fugas de datos` a través del contexto, y `envenenamiento de datos de entrenamiento`.

```

### manual operacional/guias tecnicas/gt_ingenieria_software.md

```markdown
# Guía Técnica: Ingeniería de Aplicaciones y Procesos

ID: `GT-SOFT-001`
Versión: 1.0
Dominio: Ingeniería de Software y Automatización de Procesos

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para el diseño, construcción y operación de `Entidades de Valor` de tipo Aplicación de Negocio y Proceso Automatizado.

Audiencia: Arquitectos de Soluciones, Ingenieros de Software, Ingenieros de Automatización.

Relación con KORE:

* Guías de Decisión Relacionadas: `gd_arquitectura_aplicacion.md`, `gd_automatizacion_proceso.md`
* Contrato Nexus Implementado: `Contrato de Proceso`

---

## 1. Patrones Arquitectónicos

La elección del patrón arquitectónico debe ser una decisión deliberada, registrada en un `ADR`, y alineada con los límites de la `Entidad de Valor` definidos en su `Canvas de EV`.

| Patrón | Ideal Para | Ventajas Clave | Consideraciones Técnicas (Trade-offs) |
| :--- | :--- | :--- | :--- |
| Monolito Modular | MVPs, equipos pequeños, dominios de negocio acotados. | Simplicidad de desarrollo y despliegue inicial. | Acoplamiento tecnológico, escalabilidad monolítica. |
| Microservicios | Sistemas complejos, equipos grandes, necesidad de escalabilidad granular. | Autonomía de equipos, despliegues independientes, resiliencia. | Complejidad operacional, consistencia eventual (Sagas), latencia de red. |
| Arquitectura Orientada a Eventos (EDA) | Procesos asíncronos, alta desacoplación, sistemas reactivos. | Desacoplamiento máximo, escalabilidad, resiliencia a picos. | Complejidad en la depuración de flujos, requiere un broker robusto. |
| Serverless (FaaS) | Cargas de trabajo intermitentes, tareas basadas en eventos. | Coste cero en reposo, escalado automático gestionado. | Cold starts, vendor lock-in, limitaciones de ejecución. |

Principio Rector: Comience con un Monolito Modular bien estructurado. Extraiga Microservicios solo cuando el dolor del acoplamiento supere la complejidad de la distribución.

## 2. Protocolo de Ciclo de Vida de Desarrollo (SDLC)

Este protocolo asegura la calidad, seguridad y velocidad en la entrega de software.

1. Diseño y Arquitectura:
    * `Diagramas C4`: Modelar la arquitectura en niveles de abstracción (Contexto, Contenedores, Componentes).
    * `ADRs`: Documentar cada decisión arquitectónica significativa.
    * `SLOs` Cuantitativos: Definir objetivos de disponibilidad, latencia y error antes de escribir código.

2. Desarrollo e Integración Continua (CI):
    * Pipeline de CI: En cada `commit`, automatizar builds, tests (unitarios, integración) y análisis estático (`SAST`).
    * Análisis de Dependencias (`SCA`): Escanear continuamente las librerías de terceros en busca de vulnerabilidades (ej. Snyk, Dependabot).

3. Despliegue y Operación (CD/DevOps):
    * Infraestructura como Código (IaC): Usar Terraform o Pulumi para gestionar la infraestructura de forma declarativa y versionada.
    * Contenerización: Usar Docker y Kubernetes como estándar para empaquetar y orquestar.
    * Despliegue Automatizado: Utilizar estrategias seguras (Canary, Blue-Green) controladas por `Feature Flags`.

4. Observabilidad:
    * Logs Estructurados (JSON): Para un análisis y búsqueda eficientes (ELK, Loki).
    * Métricas: Series temporales para dashboards y alertas (Prometheus, Grafana).
    * Trazas Distribuidas: Para depurar cuellos de botella en sistemas de microservicios (Jaeger, OpenTelemetry).

## 3. Automatización de Procesos de Negocio (BPA)

La automatización de procesos es una capacidad de ingeniería de software, no una disciplina separada. Se rige por los mismos principios de calidad y seguridad.

### 3.1. Arquitectura de Referencia para BPA

Una solución de BPA es un sistema compuesto que orquesta diferentes tipos de `Entidades de Valor`.

*   Capa de Orquestación: Un motor de workflow (ej. Camunda) que ejecuta modelos de proceso (`BPMN`) y gestiona el estado de los flujos de larga duración.
*   Capa de Ejecución de Tareas:
    *   API-based (Preferido): Microservicios y conectores que ejecutan lógica de negocio a través de APIs.
    *   UI-based (Último Recurso): Flota de bots `RPA` para interactuar con sistemas legacy sin API.
    *   Human-in-the-Loop (HITL): Cola de tareas para que los humanos manejen excepciones y decisiones de alto juicio.
*   Capa de Inteligencia: Servicios de IA para tareas cognitivas (ej. `IDP` para leer documentos, `NLP` para entender texto). Ver `gt_ingenieria_ia.md`.

### 3.2. Patrones de Flujo de Proceso

*   Orquestación (Patrón Saga): Un orquestador central dirige el flujo y es responsable de ejecutar las acciones de compensación en caso de error. Proporciona alta visibilidad del estado del proceso.
*   Coreografía (Orientado a Eventos): Los servicios reaccionan a eventos en un bus de mensajes de forma autónoma. Promueve el desacoplamiento, pero la visibilidad del flujo de punta a punta es más compleja.

### 3.3. El `Contrato de Proceso`

Este `Contrato Nexus` formaliza los compromisos de un proceso automatizado. Debe ser un artefacto versionado que acompaña al modelo BPMN.

Atributos Clave:
*   `sla`: Objetivos de Nivel de Servicio (ej. `cycle_time_p95_minutes: 180`).
*   `stp_target_pct`: Porcentaje objetivo de casos procesados sin intervención humana (Straight-Through Processing).
*   `hitl`: Definición de las colas de excepciones y reglas de escalamiento.
*   `saga`: Mapeo de acciones de compensación para tareas críticas.
*   `events`: Lista de eventos de negocio canónicos que el proceso emite o consume.
*   `idempotency`: Claves de negocio que aseguran que la re-ejecución del proceso no duplique transacciones.

## 4. Seguridad Embebida (Shift-Left)

La seguridad es una responsabilidad del equipo de desarrollo, integrada en el SDLC.

*   Autenticación y Autorización: Usar estándares como OAuth 2.1 / OIDC. Implementar JWT para APIs stateless y RBAC/ABAC para control de acceso granular.
*   Gestión de Secretos: Utilizar un vault centralizado (ej. HashiCorp Vault). Nunca almacenar secretos en el código fuente o repositorios Git.
*   Análisis de Seguridad Automatizado: Integrar `SAST`, `DAST` y `SCA` en los pipelines de CI/CD para detectar vulnerabilidades de forma temprana.

```

### manual operacional/metodologia refactorizada/adopcion.md

```markdown
# Guía de Adopción Incremental de A-K

> Este documento es un mapa de ruta para equipos y organizaciones que desean adoptar la metodología ASTA-Kore. Su propósito es reducir la barrera de entrada, proponiendo un camino de adopción gradual que prioriza el aprendizaje y la entrega de valor desde el primer día.

## El Principio: Adopción como un Esqueleto Andante

No intente adoptar todo el marco de una vez. Eso sería una violación del propio principio de parsimonia cognitiva. En su lugar, trate la adopción del marco como la construcción de cualquier `Entidad de Valor`: comience con un `Esqueleto Andante`.

Este camino propone una secuencia de cuatro "rebanadas" de adopción. Cada paso se construye sobre el anterior, introduciendo nuevos protocolos solo cuando el valor del paso anterior ha sido demostrado.

### Paso 1: Instalar el Hábito del Aprendizaje Explícito (Nivel Operacional Δ-O)

Objetivo: Comenzar a combatir la "amnesia organizacional" y hacer visible el flujo de trabajo con las prácticas de menor costo y más alto apalancamiento.

Tiempo para Valor: Inmediato.

#### Protocolos a Introducir

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

### Paso 2: Mapear la Realidad Actual (Nivel Táctico Σ-T)

Objetivo: Crear un entendimiento compartido y holístico de un servicio o sistema existente, revelando sus puntos de dolor y oportunidades.

Tiempo para Valor: Días.

#### Protocolos a Introducir

1. `Canvas de Entidad de Valor` (en modo "As-Is")
    * Acción: Elija *un* servicio o sistema crítico (idealmente uno que sea doloroso o poco comprendido). Facilite un taller de 2-3 horas con el equipo y los stakeholders para llenar el `Canvas de EV` describiendo el sistema tal como funciona hoy.
    * Propósito Cognitivo: Transformar un sistema opaco en un mapa visual y compartido, exponiendo sus fronteras, dependencias y propósito real. Genera un alineamiento instantáneo.

2. `Contratos Conversacionales` (en modo "Arqueología")
    * Acción: Durante el taller del Canvas, identifique las dependencias más críticas. Use los checklists de `Contrato de Servicio` o `Contrato de Datos` para guiar una conversación sobre cómo funcionan *realmente* esas interacciones hoy.
    * Propósito Cognito: Hacer explícitos los acuerdos implícitos y frágiles que gobiernan las interacciones entre equipos.

Criterio de Salida: El equipo ha producido un `Canvas de EV` "As-Is" que todos los stakeholders reconocen como un mapa fiel de la realidad actual.

### Paso 3: Lanzar el Primer Ciclo de Valor Táctico (Nivel Táctico Δ-T)

Objetivo: Moverse de la reacción a la intención, enfocando el trabajo de un trimestre en una `Hipótesis de Valor` clara y medible.

Tiempo para Valor: Semanas.

#### Protocolos a Introducir

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

### Paso 4: Conectar la Táctica con la Gobernanza Estratégica (Nivel Estratégico Δ-E)

Objetivo: Cerrar el bucle de aprendizaje, permitiendo que la gobernanza tome decisiones de inversión basadas en la evidencia generada por el equipo.

Tiempo para Valor: Un trimestre.

#### Protocolos a Introducir

1. `Ciclo de Valor y Capacidad (CVC)`
    * Acción: Al final del trimestre, el equipo prepara su primer `Informe de CVC` y lo presenta a la gobernanza en una reunión de 60 minutos.
    * Propósito Cognitivo: Cambiar la conversación con el liderazgo de un "reporte de estado" (¿hicieron lo que dijeron?) a un "diálogo de inversión" (¿qué aprendimos y dónde deberíamos apostar ahora?).

2. Decisiones de Inversión
    * Acción: La gobernanza debe concluir el CVC con una de las cuatro decisiones explícitas: Continuar/Pivotar, Expandir, Reducir, o Cerrar.
    * Propósito Cognitivo: Hacer de la gobernanza un participante activo en la estrategia adaptativa, en lugar de un observador pasivo.

Criterio de Salida: La organización ha completado su primer CVC y ha tomado una decisión de inversión explícita sobre el futuro del equipo piloto, basándose en la evidencia presentada.

---

Al completar estos cuatro pasos, la organización habrá instalado un "sistema inmunológico" de agilidad y aprendizaje. El `Esqueleto Andante` de la metodología A-K estará operativo, y la organización estará lista para escalar la adopción a otros equipos.

```

### manual operacional/metodologia refactorizada/catalogo.md

```markdown
# Catálogo de Artefactos Parsimoniosos de A-K

> Una biblioteca de referencia, lista para uso en terreno, con las plantillas mínimas y rigurosas y los checklists de cada artefacto definido en el marco.

## A.1. Plantillas de Nivel Estratégico (Σ-E / Δ-E)

### Plantilla A.1.1: Mapa de Capacidades (Σ-E)

Instrucciones: Este artefacto se construye en un taller colaborativo con el liderazgo. El objetivo es crear un inventario de las "habilidades" de la organización, no de sus departamentos. Use esta estructura para formalizar el resultado. La evaluación de Madurez y Criticidad es clave para el diagnóstico.

```markdown
# Mapa de Capacidades v1.0 - [Nombre de la Organización]

Fecha: YYYY-MM-DD
Participantes: [Lista de participantes del taller]

---

## 1. Capacidades Centrales (Core)

*Estas son las capacidades que definen la misión principal de la organización.*

| Capacidad | Nivel 1 | Nivel 2 | Madurez (1-4) | Criticidad (1-4) | Notas y Brechas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| C.1 | Gestión de Beneficios Sociales | | 2 (En Desarrollo) | 4 (Crítica) | Proceso manual, alta dependencia de sistemas legacy. |
| | C.1.1 | Postulación y Admisibilidad | 2 (En Desarrollo) | 4 (Crítica) | Alta tasa de error en la documentación. |
| | C.1.2 | Evaluación y Otorgamiento | 1 (Emergente) | 4 (Crítica) | Criterios de evaluación poco claros y no estandarizados. |
| | C.1.3 | Pago y Seguimiento | 3 (Madura) | 3 (Alta) | Proceso de pago robusto pero seguimiento débil. |
| C.2 | Fiscalización en Terreno | | 3 (Madura) | 4 (Crítica) | Equipo experimentado pero sin herramientas digitales. |

## 2. Capacidades de Soporte

*Estas son las capacidades que habilitan a las capacidades centrales.*

| Capacidad | Nivel 1 | Nivel 2 | Madurez (1-4) | Criticidad (1-4) | Notas y Brechas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| S.1 | Gestión de Personas | | 2 (En Desarrollo) | 3 (Alta) | |
| S.2 | Gestión Tecnológica | | 2 (En Desarrollo) | 4 (Crítica) | Alta deuda técnica en plataformas centrales. |

---
Escala de Madurez: 1 (Emergente), 2 (En Desarrollo), 3 (Madura), 4 (Optimizada)
Escala de Criticidad: 1 (Baja), 2 (Media), 3 (Alta), 4 (Crítica)
```

### Plantilla A.1.2: Informe de Ciclo de Valor y Capacidad (CVC) (Δ-E)

Instrucciones: Este informe es la base para la ceremonia del CVC. Debe ser preparado por el equipo de la EV y enviado a los participantes de la gobernanza 48 horas antes de la reunión. Debe ser conciso, basado en evidencia y centrado en la narrativa de valor y aprendizaje.

```markdown
# Informe de CVC - [Nombre de la EV]

Trimestre: Q[X] [AÑO]
Fecha del Informe: YYYY-MM-DD
Dueño de Producto: [Nombre]
Líder Técnico: [Nombre]

---

### 1. Resumen Ejecutivo (La Historia en 30 Segundos)

*En una frase, ¿cuál fue nuestra misión este trimestre y cuál fue el resultado principal?*

Ejemplo: "Nuestra misión fue reducir la fricción en el proceso de postulación. Logramos disminuir el tiempo de postulación en un 40% y validamos que un simulador de elegibilidad es la funcionalidad más demandada por los ciudadanos."

---

### 2. Progreso de OKRs y Aprendizaje

| Objetivo: [El Objetivo del equipo para el trimestre] |
| :--- |
| Resultado Clave (KR) | Línea Base | Objetivo | Resultado Actual | Progreso | Aprendizaje Clave |
| KR 1: [Descripción del KR] | [Valor inicial] | [Valor objetivo] | [Valor al final] | [XX]% | [¿Qué aprendimos al intentar mover esta métrica?] |
| KR 2: [Descripción del KR] | [Valor inicial] | [Valor objetivo] | [Valor al final] | [XX]% | [¿Nuestra hipótesis fue correcta? ¿Qué nos sorprendió?] |

---

### 3. Salud del Sistema y del Equipo

| Métrica de Salud | Estado | Tendencia | Comentario |
| :--- | :--- | :--- | :--- |
| Disponibilidad del Servicio (SLO) | 🟢 (99.95%) | Estable | Cumplimos nuestro SLO. |
| Latencia p95 (SLO) | 🟡 (250ms) | Empeorando | El aumento de usuarios está impactando la latencia. |
| Salud del Equipo (Autoevaluación) | Nivel 2 | Mejorando | Implementamos CI, mejorando nuestro flujo. |
| Deuda Técnica | 🟡 | Estable | Pagamos el 15% de nuestra capacidad. Riesgo principal: [Describir]. |

---

### 4. Demo de Valor

*Enlace a un video de 3 minutos o preparado para demo en vivo mostrando el incremento de valor entregado a los usuarios este trimestre.*

---

### 5. Próxima Apuesta de Valor (Propuesta para el Siguiente Trimestre)

*Basado en nuestros aprendizajes, esta es nuestra recomendación para el próximo trimestre.*

Objetivo Propuesto: [El nuevo Objetivo para el próximo Q]

| Resultado Clave Propuesto (KR) | Hipótesis de Valor |
| :--- | :--- |
| KR 1: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |
| KR 2: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |

Petición a la Gobernanza: Solicitamos la aprobación para [Continuar / Pivotar / Expandir] con este nuevo conjunto de OKRs.
```

## A.2. Plantillas de Nivel Táctico (Σ-T / Δ-T)

### Plantilla A.2.1: Canvas de Entidad de Valor (EV) (Σ-T)

Instrucciones: Este no es un documento para ser rellenado en solitario. Utilice este canvas en una sesión de taller colaborativo (físico o digital) con todos los miembros del equipo de la EV y stakeholders clave. Use post-its y marcadores. El objetivo es generar diálogo, visualizar el sistema como un todo y crear un entendimiento compartido. El resultado es un mapa vivo, no un documento estático.

```markdown
# Canvas de Entidad de Valor: [Nombre de la EV]

ID: `EV-XXX` | Versión: `1.0` | Equipo Dueño: `<Nombre del Equipo>` | Fecha: `YYYY-MM-DD`

| 1. Propósito y Valor Público | 2. Actores y Experiencia | 3. Flujo de Valor y Proceso Principal |
| :--- | :--- | :--- |
| Pregunta Clave: ¿POR QUÉ existe esta EV? | Pregunta Clave: ¿PARA QUIÉN estamos diseñando? | Pregunta Clave: ¿CÓMO funciona de punta a punta? |
| • Propósito Esencial: (Verbo + Qué + Para Qué)<br>• Alineamiento Estratégico: (OKR Anual al que contribuye)<br>• Problema/Oportunidad: (Dolor del ciudadano o fricción interna que resuelve) | • Clientes/Usuarios: (Beneficiarios finales)<br>• Participantes Internos: (Funcionarios que operan el sistema)<br>• Experiencia (Journey): (Frustraciones y motivaciones del actor principal) | • Evento de Inicio: (Detonante del flujo)<br>• Etapas Macro: (Flujo simple de 3-5 pasos)<br>• Resultado Final: (Producto, servicio o decisión generada) |
| 4. Capacidades y Servicios Expuestos | 5. Datos Clave (Consumidos y Producidos) | 6. Tecnología y Plataformas de Soporte |
| Pregunta Clave: ¿Qué VALOR produce para otros? | Pregunta Clave: ¿Qué INFORMACIÓN necesita y genera? | Pregunta Clave: ¿Sobre qué CIMIENTOS se construye? |
| • Capacidades de Negocio: (Habilidades que realiza)<br>• Servicios Expuestos (APIs): (Servicios reutilizables que ofrece)<br>• Consumidores: (Otras EVs que consumen estos servicios) | • Datos Consumidos: (Productos de Datos que necesita)<br>• Datos Producidos: (Productos de Datos que genera)<br>• Fuente de Verdad: (Dónde reside la fuente autoritativa) | • Aplicaciones y Componentes: (Portal Web, API Gateway, etc.)<br>• Plataformas Transversales: (Plataforma de Identidad, Bus de Eventos, etc.)<br>• Stack Tecnológico: (Lenguajes, frameworks, BBDD) |
| 7. Dependencias (Internas y Externas) | 8. Gobernanza, Riesgo y Mandato Regulatorio | 9. Métricas de Éxito (KRs y SLOs) |
| Pregunta Clave: ¿El éxito DEPENDE de alguien más? | Pregunta Clave: ¿Cuáles son las REGLAS DEL JUEGO? | Pregunta Clave: ¿Cómo sabremos que estamos GANANDO? |
| • Dependencias Internas: (Otras EVs de las que dependemos)<br>• Dependencias Externas: (Proveedores, otros servicios públicos)<br>• Riesgos de Dependencia: (Principal riesgo si una dependencia falla) | • Dueño de Producto/Servicio: (Persona con autoridad final)<br>• Mandato Regulatorio: (Leyes, decretos, normativas)<br>• Nivel de Riesgo: (Bajo, Medio, Alto) | • Resultados Clave (KRs): (2-3 métricas de *outcome*)<br>• Objetivos de Nivel de Servicio (SLOs): (2-3 compromisos de fiabilidad y calidad)<br>• Métricas de Experiencia (UX): (CSAT, Tasa de Éxito de Tarea) |
```

### Guía A.2.2: Mapeo de Historias (Story Mapping) (Δ-T)

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

## A.3. Plantillas de Nivel Operacional (Σ-O / Δ-O)

### Plantilla A.3.1: Reglas del Tablero de Flujo (Xanpan) (Δ-O)

Instrucciones: Esta no es una plantilla de un tablero en sí, sino de las "reglas del juego" que el equipo define para su tablero. Estas políticas deben estar visibles para todo el equipo.

```markdown
# Políticas del Tablero de Flujo - Equipo [Nombre del Equipo]

Fecha de Última Revisión: YYYY-MM-DD

### 1. Columnas del Flujo de Trabajo
*   Opciones: Historias priorizadas, listas para ser tomadas.
*   Análisis/Diseño (WIP: 2): Refinando requerimientos y diseño técnico.
*   En Desarrollo (WIP: 3): Codificación activa.
*   En Revisión/QA (WIP: 2): Code review y pruebas de aceptación.
*   Listo para Desplegar: Feature completa, esperando la ventana de despliegue.
*   Hecho: En producción y valor entregado.

### 2. Límites de Trabajo en Progreso (WIP)
*   Se aplican por columna (ver arriba).
*   Regla: Un miembro del equipo no puede iniciar un nuevo ítem si la columna de destino está en su límite de WIP. En su lugar, debe ayudar a "desatascar" un ítem de una columna posterior.

### 3. Definición de "Hecho" (Definition of Done)
Una historia se considera "Hecha" solo cuando cumple TODOS los siguientes criterios:
- [ ] El código está fusionado (merged) a la rama principal.
- [ ] Todas las pruebas automatizadas pasan en el pipeline de CI.
- [ ] La revisión de código (code review) ha sido aprobada por al menos un par.
- [ ] La funcionalidad ha sido desplegada en el entorno de producción.
```

### Plantilla A.3.2: Bitácora de Decisiones (ADR) (Δ-O)

Instrucciones: Use esta plantilla para registrar una decisión arquitectónica significativa. Cree un nuevo archivo Markdown para cada ADR (ej. `001-patron-de-autenticacion.md`). Un ADR, una vez publicado, es inmutable.

```markdown
# ADR-XXX: [Título de la Decisión]

Fecha: YYYY-MM-DD
Estado: Propuesto | Aceptado | Reemplazado por ADR-YYY

---

## Contexto

*¿Cuál es el problema que estamos tratando de resolver? ¿Qué alternativas se consideraron?*

Ejemplo: "El sistema actual de autenticación basado en sesiones locales no escala y dificulta la integración con nuevos servicios móviles. Evaluamos tres alternativas: 1. Mantener el sistema actual. 2. Implementar un servidor OAuth 2.0 desde cero. 3. Integrar un servicio de identidad federada basado en OIDC."

---

## Decisión

*Declaración clara y concisa de la decisión tomada.*

Ejemplo: "Decidimos adoptar la opción 3: integraremos un servicio de identidad federada basado en OIDC para toda la autenticación y autorización de la plataforma."

---

## Consecuencias

*¿Cuáles son los resultados positivos y los compromisos o riesgos que estamos aceptando?*

### Positivas
*   Desacoplamiento: La autenticación se convierte en un servicio centralizado.
*   Seguridad Mejorada: Delegamos la gestión de credenciales a un sistema especializado.
*   Experiencia de Usuario (SSO): Habilita el Single Sign-On.

### Negativas / Compromisos
*   Dependencia Externa: Introducimos una dependencia crítica en el proveedor de identidad.
*   Curva de Aprendizaje: El equipo necesita capacitarse en OIDC.
*   Costo de Migración: Requerirá un esfuerzo para migrar las aplicaciones existentes.
```

## A.4. Checklists de Contratos Conversacionales

Instrucciones: Estas no son plantillas de documentos a rellenar, sino agendas para una conversación estratégica. Utilice el checklist correspondiente para guiar una reunión entre las partes involucradas. El objetivo es alcanzar un entendimiento mutuo y un acuerdo explícito.

### Checklist A.4.1: Contrato de Datos (Σ-O)

* Propósito: Guiar la conversación entre un productor de datos y un consumidor de datos.
* Cuándo usarlo: Cada vez que una EV expone un conjunto de datos significativo.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Propósito y Semántica | • ¿Cuál es el nombre y la descripción de este Producto de Datos?<br>• ¿Quién es el equipo "Dueño" responsable?<br>• ¿Para qué casos de uso está diseñado este dato? |
| 2. Estructura y Acceso | • ¿Qué campos de información contiene (esquema)?<br>• ¿Cómo se accederá a los datos (API, vista en BBDD, etc.)? |
| 3. Calidad y Fiabilidad (SLOs) | • ¿Con qué frecuencia se actualizarán los datos?<br>• ¿Cuál es el compromiso de disponibilidad del acceso? |
| 4. Gobernanza y Seguridad | • ¿Cuál es la clasificación de seguridad? ¿Contiene PII?<br>• ¿Cuál es la política de retención? |

### Checklist A.4.2: Contrato de Servicio / API (Σ-O)

* Propósito: Guiar la conversación entre el equipo proveedor de una API y el equipo consumidor.
* Cuándo usarlo: Para cada API o servicio expuesto por una EV.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Identidad y Propósito | • ¿Cuál es el nombre y el propósito de este servicio?<br>• ¿Quién es el equipo "Dueño"? |
| 2. Interfaz y Endpoints | • ¿Cuáles son los principales endpoints?<br>• ¿Dónde está la documentación técnica (OpenAPI/Swagger)? |
| 3. Fiabilidad y Rendimiento (SLOs) | • ¿Cuál es el compromiso de disponibilidad (ej. 99.95%)?<br>• ¿Cuál es el compromiso de latencia (ej. p95 < 200ms)? |
| 4. Seguridad y Acceso | • ¿Cómo se autentican los consumidores?<br>• ¿Existen límites de uso (rate limiting)? |
| 5. Evolución y Soporte | • ¿Qué estrategia de versionado se usará?<br>• ¿Cuál es el canal de comunicación para soporte? |

### Checklist A.4.3: Contrato de Agente IA (Σ-O)

* Propósito: Guiar una conversación profunda sobre la delegación de una tarea a un Agente Digital (IA).
* Cuándo usarlo: Cada vez que se diseña o integra un componente de IA en una EV.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| 1. Propósito y Rol (HCAI) | • ¿Cuál es el propósito del agente en relación al humano? (Asistir, Aumentar, Orquestar, Automatizar).<br>• ¿Qué función cognitiva principal realiza? (Sentir, Decidir, Actuar). |
| 2. Autonomía y Supervisión | • ¿Cuál es el modo de interacción con el humano? (Humano-en-el-Bucle es el defecto para alto riesgo).<br>• ¿Cuáles son los puntos de control donde DEBE escalar a un humano? |
| 3. Guardarraíles y Seguridad | • ¿Qué tipo de acciones tiene estrictamente prohibido realizar?<br>• ¿Existe un "interruptor de apagado" (kill switch)? |
| 4. Transparencia y Explicabilidad | • ¿Cómo se le informará al usuario que está interactuando con una IA?<br>• Si el agente toma una decisión, ¿cómo se explicará el "porqué"? |

```

### manual operacional/metodologia refactorizada/ontologia.md

```markdown
# Ontología Formal de la Metodología ASTA-Kore (A-K)

## Versión 1.0

## Propósito

Esta ontología formaliza los conceptos y relaciones de la metodología ASTA-Kore (A-K) para reducir la ambigüedad, asegurar la interoperabilidad semántica y servir como un modelo de referencia para la implementación y la gobernanza.

---

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

---

## 2. Taxonomía de Artefactos

Estos son los instrumentos cognitivos tangibles para visualizar, discutir y alinear el trabajo.

### 2.1. Artefactos del Eje Σ (Diseño)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Mapa de Capacidades` | Σ-E | Inventariar y evaluar las "habilidades" de la organización para guiar la estrategia. |
| `Canvas de Entidad de Valor` | Σ-T | Mapear la anatomía completa de una EV de forma colaborativa. |
| `Contratos Conversacionales` | Σ-O | Definir acuerdos explícitos de interacción entre EVs (Datos, API, IA). |
| `Fichas de Control` | Σ-O | Especificar reglas de negocio o procedimientos operacionales de bajo nivel. |

### 2.2. Artefactos del Eje Δ (Flujo)

| Artefacto | Celda | Propósito |
| :--- | :--- | :--- |
| `Ciclo de Valor y Capacidad (CVC)` | Δ-E | Ritual de gobernanza estratégica para tomar decisiones de inversión basadas en evidencia. |
| `OKRs` | Δ-E, Δ-T | Lenguaje universal para el alineamiento estratégico y la formulación de hipótesis de valor. |
| `Mapeo de Historias` | Δ-T | Organizar visualmente el backlog para la entrega incremental de valor. |
| `Tablero de Flujo (Xanpan)` | Δ-O | Gestionar el flujo de trabajo diario, limitando el WIP para maximizar la velocidad. |
| `Bitácora de Decisiones (ADR)` | Δ-O | Registrar decisiones arquitectónicas significativas para combatir la amnesia organizacional. |

## 3. Léxico de Conceptos Clave

### 3.1. Conceptos Estratégicos (Nivel E)

Estos conceptos se relacionan con el propósito, la dirección y la gobernanza a largo plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `Capacidad` | Una habilidad de la organización para lograr un resultado (ej. "Fiscalización"). Es agnóstica a la estructura. | • `es inventariada en` -> `Mapa de Capacidades` (Σ-E)<br>• `es materializada por` -> una o más `Entidades de Valor`<br>• `su madurez y criticidad son evaluadas en` -> Protocolo de Diagnóstico de Capacidades (3.1) |
| `Portafolio de EVs` | El conjunto de todas las `Entidades de Valor` que una organización gestiona y financia. | • `es gestionado a través de` -> `Ciclo de Valor y Capacidad (CVC)` (Δ-E)<br>• `es revisado durante` -> Protocolo de Revisión del Portafolio (3.3)<br>• `contiene` -> `Entidades de Valor` |
| `Valor Público` | El impacto positivo y medible en la ciudadanía. Es el norte ético y estratégico. | • `es el propósito último de` -> toda `Entidad de Valor` en el sector público<br>• `se mide a través de` -> `OKRs` de alto nivel |
| `Overlay Regulatorio` | Conjunto de axiomas globales derivados de la regulación, que actúan como restricciones de diseño. | • `es traducido desde` -> Leyes y Normativas<br>• `restringe el diseño de` -> todas las `Entidades de Valor`<br>• `su cumplimiento se verifica en` -> `Contratos Conversacionales` y `CVCs` |

### 3.2. Conceptos Tácticos (Nivel T)

Estos conceptos se centran en el diseño y la planificación de una `Entidad de Valor` en el mediano plazo.

| Concepto | Descripción | Relaciones Clave |
| :--- | :--- | :--- |
| `#NoProjects` | Filosofía operativa que aboga por equipos estables y flujos de valor continuos en lugar de proyectos con inicio y fin. | • `es el paradigma operativo para la evolución de` -> `Entidades de Valor` |
| `Hipótesis de Valor` | La premisa experimental detrás de un OKR: "Creemos que haciendo X, lograremos el resultado Y". | • `es formulada en` -> `OKRs Trimestrales` (Δ-T)<br>• `se valida o invalida mediante` -> la medición de `Resultados Clave (KRs)`<br>• `su resultado se reporta en` -> el `Informe de CVC` |
| `Esqueleto Andante` | La versión más simple de un servicio que permite a un usuario completar el viaje de punta a punta. El primer incremento de valor. | • `es definido en` -> el `Mapeo de Historias` (Δ-T)<br>• `es el objetivo de entrega del` -> Protocolo "Génesis" (7.1)<br>• `es un tipo de` -> MVP (Minimum Viable Product) |

### 3.3. Conceptos Operacionales (Nivel O)

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

```

### manual operacional/metodologia refactorizada/protocolos.md

```markdown
# Libro de Protocolos de ΑΣ-K

> Este libro traduce el modelo mental abstracto en una serie de protocolos ejecutables y rituales organizacionales. Se estructura en torno a los ciclos temporales de la organización, desde la estrategia anual hasta la entrega diaria, enseñando el "cómo" de manera prescriptiva y detallada.

## CAPÍTULO 1: EL CICLO ANUAL — CALIBRACIÓN ESTRATÉGICA (Σ-E / Δ-E)

> Este es el protocolo de más bajo ritmo y más alto impacto, donde la organización define su dirección y calibra su portafolio de capacidades.

### 1.1. Fase 1: Diagnóstico de Capacidades (Protocolo Σ-E)

Propósito: Crear un `Mapa de Capacidades` para comprender las fortalezas y debilidades de la organización.
Artefacto Asociado: `catalogo.md`

#### Protocolo de Facilitación: Taller de Mapeo de Capacidades

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

### 1.2. Fase 2: Declaración de Propósito (Protocolo Σ-E)

Propósito: Traducir el diagnóstico en una dirección estratégica clara a través de `OKRs Anuales`.

#### Protocolo de Facilitación: Taller de Definición de `OKRs Anuales`

1. Preparación:
    * Insumos: `Mapa de Capacidades` con brechas identificadas, resultados de OKRs anteriores, mandatos externos.
2. Ejecución (Taller de 2-3 horas):
    * Derivar Objetivos: Basado en la evidencia, definir 3-5 Objetivos (O) cualitativos e inspiradores para el año.
    * Definir Resultados Clave: Para cada Objetivo, definir 3-5 Resultados Clave (KRs) cuantitativos y medibles que verifiquen el logro del Objetivo.
3. Comunicación:
    * Comunicar los `OKRs Anuales` de forma radical y repetida. Deben actuar como una "Estrella Polar" para toda la organización.

### 1.3. Fase 3: Revisión del Portafolio de EVs (Protocolo Δ-E)

Propósito: Alinear la inversión y la estructura (el `Portafolio de EVs`) con la nueva estrategia.

#### Protocolo de Decisión:

1. Preparación:
    * Crear un inventario de todas las `Entidades de Valor (EVs)` existentes, mapeando cada una a las `Capacidades` que materializa y su costo operacional.
2. Evaluación:
    * Evaluar cada EV según su Costo, Valor, Riesgo y Alineamiento Estratégico con los nuevos `OKRs Anuales`.
3. Ritual de Decisión:
    * Tomar decisiones de inversión a nivel macro para cada EV: Crear, Fusionar, Cerrar (Desinvertir), o Invertir/Mantener.

## CAPÍTULO 2: EL CICLO TRIMESTRAL — NAVEGACIÓN TÁCTICA (Σ-T / Δ-T / Δ-E)

> El corazón del modelo de gobernanza adaptativa. Conecta el diseño, la planificación y la toma de decisiones basada en evidencia para cada `Entidad de Valor`.

### 2.1. Fase 1: Diseño de la Entidad de Valor (Protocolo Σ-T)

Propósito: Crear o actualizar el `Canvas de Entidad de Valor` para asegurar un entendimiento compartido de la anatomía de la EV.
Artefacto Asociado: `catalogo.md`

#### Protocolo de Facilitación: Taller Colaborativo del `Canvas de EV`

1. Preparación:
    * Participantes: Equipo completo de la EV y stakeholders clave.
    * Insumos: `Mapa de Capacidades` y `OKRs Anuales`.
2. Ejecución (Taller de 2-3 horas):
    * Usando la plantilla del `Canvas de EV` en una pizarra, guiar al equipo a través de las 9 secciones, comenzando por el Propósito y los Actores.
    * Fomentar el diálogo con preguntas desafiantes.
    * Validar la coherencia interna del canvas al finalizar.

### 2.2. Fase 2: Planificación de la Evolución (Protocolo Δ-T)

Propósito: Formular una `Hipótesis de Valor` para el trimestre y un plan para validarla.
Artefacto Asociado: `catalogo.md`

Secuencia de Protocolos:

1. Formulación de `OKRs Trimestrales`:
    * Principio OKR-First: El backlog se subordina a los OKRs. Primero se define el resultado (KR), luego se crea el trabajo.
    * Taller de Formulación: Basado en el `Canvas de EV` y los `OKRs Anuales`, el equipo define 1-2 Objetivos y 2-4 Resultados Clave para el trimestre. Foco en *outcomes*, no *outputs*.
2. Desglose de Valor con `Mapeo de Historias`:
    * Taller de Mapeo: El equipo traduce los OKRs en un backlog visual.
    * Construir la Espina Dorsal: Identificar las grandes etapas del viaje del usuario.
    * Lluvia de Ideas de Historias: Generar `Historias de Usuario` debajo de cada etapa.
    * Definir el `Esqueleto Andante`: Trazar la primera "rebanada" de valor (MVP) que se construirá para validar la hipótesis del OKR.

### 2.3. Fase 3: Gobernanza del Valor (Protocolo Δ-E)

Propósito: Cerrar el bucle de aprendizaje, conectando la ejecución táctica con la gobernanza estratégica.
Artefacto Asociado: `catalogo.md`

#### Protocolo del Ritual: Ciclo de Valor y Capacidad (CVC)

1. Preparación:
    * El equipo de la EV prepara un `Informe de CVC` conciso y basado en evidencia (progreso de OKRs, salud del sistema, aprendizaje).
2. Ejecución (Reunión de 60 min):
    * Agenda Estricta:
        1. Progreso de OKRs y Aprendizaje (20 min).
        2. Demostración de Valor (Software funcionando) (15 min).
        3. Salud del Sistema y del Equipo (10 min).
        4. Próxima Apuesta de Valor y Decisión (15 min).
    * Decisión de Inversión Obligatoria: La gobernanza debe tomar una de cuatro decisiones explícitas sobre la EV: Continuar/Pivotar, Expandir, Reducir, o Cerrar.

## CAPÍTULO 3: EL CICLO DE ENTREGA — EJECUCIÓN OPERACIONAL (Σ-O / Δ-O)

> Los ritmos de alta frecuencia que transforman la planificación táctica en valor tangible y aprendizaje estructurado.

### 3.1. Fase 1: Refinamiento de Interfaces y Controles (Protocolo Σ-O)

Propósito: Asegurar que las "reglas del juego" entre componentes y equipos sean explícitas antes de construir.
Artefacto Asociado: `catalogo.md`

#### Protocolo de Diseño: Negociación de `Contratos Conversacionales`

1. Activación: Se activa cuando una nueva `Historia de Usuario` requiere una nueva interacción entre sistemas o equipos.
2. Ejecución (Conversación Guiada):
    * El arquitecto o líder técnico facilita una reunión entre las partes.
    * Usando los Checklists de Contratos (de API, Datos o IA), se negocian y acuerdan explícitamente los compromisos (interfaces, SLOs, manejo de errores).
    * El acuerdo se documenta de forma ligera (ej. en una wiki).

### 3.2. Fase 2: Gestión del Flujo de Entrega (Protocolo Δ-O)

Propósito: Maximizar el flujo de valor usando Xanpan.
Artefacto Asociado: `catalogo.md`

#### Protocolos de Flujo:

1. Diseño del `Tablero de Flujo (Xanpan)`:
    * Definir las columnas que modelan el flujo de trabajo.
    * Establecer Límites de WIP explícitos para las columnas "en progreso".
    * Acordar una Definición de "Hecho" rigurosa.
2. Rituales de Flujo:
    * Daily Standup (15 min): Sincronización diaria enfocada en el flujo (de derecha a izquierda en el tablero).
    * Reposición Semanal (30 min): El equipo "jala" nuevas historias priorizadas al tablero.
    * Retrospectiva del Flujo (60 min, cada 1-2 semanas): El equipo reflexiona sobre cómo mejorar su sistema de trabajo.

### 3.3. Fase 3: Captura del Aprendizaje (Protocolo Δ-O)

Propósito: Transformar el conocimiento tácito del equipo en un activo explícito para la organización.
Artefacto Asociado: `catalogo.md`

#### Protocolo de Documentación: `Bitácora de Decisiones (ADR)`

1. Identificar una Decisión Significativa:
    * Heurística: ¿La decisión afecta la estructura, las características no funcionales, las dependencias o las interfaces? ¿Fue un debate con múltiples opciones? ¿Es costosa de revertir? Si es así, merece un ADR.
2. Redactar el ADR "Justo a Tiempo":
    * Usar la plantilla del `ADR` para documentar el Contexto, la Decisión y las Consecuencias (positivas y negativas).
3. Inmutabilidad:
    * Un ADR publicado no se edita. Si la decisión cambia, se crea un nuevo ADR que reemplaza al antiguo, creando un historial trazable.

## CAPÍTULO 4: PROTOCOLOS DE INSTANCIACIÓN AVANZADA

> "Recetas" que orquestan los protocolos básicos para abordar escenarios de transformación complejos.

### 4.1. Protocolo "Génesis" (Para Creación de Valor)

Escenario: Una nueva idea de servicio digital.

1. Ignición: Conectar la idea a un `OKR Anual` y formar un Equipo Mínimo Viable (MVT) para validar la hipótesis de valor.
2. Validación: El MVT ejecuta un ciclo rápido de `Canvas de EV` y `Mapeo de Historias` para definir y construir un `Esqueleto Andante`.
3. Escalado: El MVT presenta su aprendizaje y demo en un `CVC`. Si la evidencia es positiva, la gobernanza aprueba la inversión para escalar la iniciativa a una EV formal.

### 4.2. Protocolo "Metamorfosis" (Para Modernización de Legacy)

Escenario: Un sistema monolítico crítico y obsoleto.

1. Arqueología: Usar el `Canvas de EV` para modelar el sistema legacy "As-Is" y entender su rol actual.
2. Estrangulamiento: Identificar la primera capacidad a extraer. Definir su nueva interfaz con un `Contrato de Servicio (API)`. Formular un `OKR Trimestral` para la migración del primer consumidor.
3. Coexistencia: Construir el nuevo microservicio. Redirigir el flujo de valor hacia él. Repetir el ciclo, "estrangulando" gradualmente el legacy.

### 4.3. Protocolo "Simbiosis" (Para Ecosistemas)

Escenario: Un proceso que requiere la colaboración de múltiples entidades.

1. Mapeo Federado: Modelar a cada actor del ecosistema como una `EV` independiente usando el `Canvas de EV`.
2. Negociación: Orquestar la definición de `Contratos Conversacionales` entre las EVs para reemplazar los traspasos informales por acuerdos de servicio explícitos.
3. Orquestación: Diseñar una `EV Orquestadora` ligera cuyo único propósito es gestionar el flujo de valor de punta a punta, llamando a los servicios de las otras EVs según los contratos.

```

