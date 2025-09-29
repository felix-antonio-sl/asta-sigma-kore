# **Manual de ASTA-SIGMA Lite: Arquitectura Adaptativa para la Transformación Digital**

## **PARTE 0: PREFACIO — LA FILOSOFÍA DE LA ARQUITECTURA LIGERA**

### **0.1. ¿Por qué una versión "Lite"?**

La Arquitectura Empresarial (AE) nació de una necesidad noble: comprender y racionalizar los complejos sistemas de información de una organización para alinear la tecnología con la estrategia de negocio. Sin embargo, en su búsqueda de rigor, la AE tradicional a menudo cayó en su propia trampa. Se convirtió en una disciplina de especialistas, generando vastos repositorios de "listas, documentos, dibujos y modelos". Este enfoque, aunque bien intencionado, frecuentemente conduce a un estado de **"parálisis por análisis"**, donde el esfuerzo por documentar la organización supera el esfuerzo por transformarla.

En el vertiginoso mundo digital del siglo XXI, donde "los ciclos de CPU son demasiado baratos para medirlos, la planificación es extremadamente cara", este modelo ya no es sostenible. La velocidad con la que la tecnología y los mercados evolucionan hace que los planes detallados y los modelos exhaustivos se vuelvan obsoletos casi al momento de ser completados. El resultado es una arquitectura que vive en documentos, desconectada de la realidad operativa, y que, en lugar de guiar, frena la capacidad de adaptación. Como advierte la crítica a los enfoques tradicionales, examinar únicamente el funcionamiento interno de la organización sin comprender su interacción dinámica con el entorno nos deja con una capacidad predictiva casi nula, obligándonos a tomar decisiones basadas en "conjeturas y suposiciones que pueden salir terriblemente (y caramente) mal".

**ASTA-SIGMA Lite** nace como una respuesta directa a este desafío. No es una versión "menor" o incompleta del marco original; es una **reimaginación fundamental** de su propósito. La filosofía "Lite" es una decisión consciente de priorizar la **agilidad, la entrega de valor y la adaptabilidad por sobre la exhaustividad documental**. Reconoce que en la era digital, el costo del retraso (`cost of delay`) a menudo supera con creces el costo de la imperfección inicial.

Este marco cambia radicalmente el foco. El objetivo ya no es producir un conjunto perfecto de artefactos, sino facilitar y estructurar los elementos que realmente impulsan la transformación:

* **Las Conversaciones:** El valor de un artefacto no reside en su completitud, sino en su capacidad para generar un diálogo significativo y un entendimiento compartido. Las herramientas de ASTA-SIGMA Lite, como el Canvas del Sistema de Trabajo, están diseñadas para ser utilizadas en una pizarra, para ser el centro de una conversación estratégica entre perfiles de negocio, tecnología y operaciones. Son, como las Historias de Usuario, "ligeras, fáciles de entender y fáciles de compartir", diseñadas para derribar las barreras entre los especialistas y el resto de la organización.

* **Los Principios:** En un entorno que cambia rápidamente, las reglas detalladas son frágiles. Los principios, en cambio, son robustos. ASTA-SIGMA Lite se fundamenta en un conjunto acotado de principios clave (como la Organización como Organismo, el Flujo Continuo de Valor y la IA Centrada en el Humano) que actúan como una brújula para la toma de decisiones, permitiendo a los equipos navegar la incertidumbre con autonomía y coherencia.

* **Las Decisiones:** El objetivo final de la arquitectura no es modelar, sino decidir y actuar. El marco se concentra en hacer explícitas las decisiones clave de arquitectura (a través de ADRs Ligeros), de inversión (en la Revisión de Valor y Capacidad) y de diseño (en los Contratos Conversacionales). Se valora la capacidad de tomar decisiones informadas rápidamente y de revertirlas si el feedback del entorno así lo indica.

En esencia, ASTA-SIGMA Lite es un **sistema operativo minimalista para la transformación**. Despoja a la arquitectura empresarial de su peso ceremonial y la devuelve a su propósito central: ser una herramienta práctica y dinámica para ayudar a las organizaciones a prosperar en un mundo incierto y en constante cambio. Abrazamos la idea de que, a menudo, "más se puede aprender, y más rápidamente, haciendo". Este manual es tu guía para hacerlo.

### **0.2. ¿Para quién es este manual?**

Este manual no está escrito exclusivamente para Arquitectos Empresariales con profundos conocimientos técnicos. Si bien ellos encontrarán un sistema coherente para estructurar su trabajo, su verdadero propósito es más amplio y ambicioso. **ASTA-SIGMA Lite está diseñado para ser el lenguaje común de la transformación**, un puente entre la estrategia, el negocio y la tecnología.

Por lo tanto, este manual está dirigido a un ecosistema de roles interconectados, cada uno de los cuales es vital para el éxito de la modernización de una institución:

**1. Para el Arquitecto Organizacional y Empresarial: El Estratega y Facilitador**

Tradicionalmente, el rol del arquitecto ha sido visto como el custodio de los planos y los estándares, una figura que garantiza el orden técnico. ASTA-SIGMA Lite redefine este rol. Aquí, el arquitecto es, ante todo, un **facilitador estratégico**. Su principal herramienta no es un software de modelado complejo, sino su capacidad para guiar conversaciones productivas. Su valor no se mide por la cantidad de diagramas que produce, sino por la calidad de las decisiones que ayuda a la organización a tomar.

El arquitecto que utiliza este manual:

* **Facilita el diálogo:** Utiliza los "Canvas" y "Checklists" para que personas de distintas áreas (legal, finanzas, operaciones, tecnología) puedan visualizar y debatir sobre un Sistema de Trabajo desde una perspectiva compartida.
* **Conecta los puntos:** Asegura que las decisiones tácticas de un equipo (capturadas en un ADR) no contradigan los objetivos estratégicos de la organización (definidos en los OKRs).
* **Gestiona la complejidad:** Ayuda a los equipos a navegar las interdependencias en un ecosistema complejo, utilizando los "Contratos Conversacionales" para hacer explícitos los acuerdos entre sistemas y equipos.
* **Es un Coach de Principios:** Más que imponer reglas, enseña y promueve los principios fundacionales del marco, empoderando a los equipos para que tomen decisiones autónomas pero alineadas.

**2. Para los Líderes de la Transformación y Directivos Públicos**

Este manual es para ti si eres un directivo, un Coordinador de Transformación Digital (CTD) o un líder de área que busca un método práctico para guiar a tu institución a través del cambio. ASTA-SIGMA Lite te proporciona:

* Un **modelo operativo** para salir del ciclo de "proyectos eternos" y pasar a un flujo de entrega de valor continuo y medible.
* Un **mecanismo de gobernanza (la RVC)** que transforma las reuniones de seguimiento de un reporte de estado a una conversación estratégica sobre inversión, riesgo y valor público.
* Un **lenguaje claro** para entender y evaluar las propuestas tecnológicas, no por sus características técnicas, sino por su impacto directo en los Resultados Clave (KRs) de la organización.

**3. Para los Dueños de Producto y Líderes de Equipos de Flujo de Valor**

Si tu responsabilidad es maximizar el valor de un servicio o producto digital, este manual es tu guía para el día a día. Te ofrece:

* Un **método claro para definir y priorizar el trabajo** (OKRs → Mapeo de Historias → Backlog) que asegura que tu equipo siempre esté trabajando en lo más importante.
* Una **filosofía de equipo (`Xanpan`)** que fomenta la autonomía, el flujo continuo y la calidad sostenible, permitiendo a tu equipo entregar valor de forma predecible y sin agotamiento.
* **Herramientas para gestionar dependencias** de forma ágil y explícita, liberando a tu equipo de los bloqueos y retrasos causados por la falta de coordinación inter-áreas.

En resumen, ASTA-SIGMA Lite es para los **agentes de cambio**. Es una herramienta para quienes entienden que la transformación digital no es un problema técnico que se resuelve con más software, sino un desafío organizacional que se resuelve con un mejor sistema operativo: uno que fomente la colaboración, la claridad, la autonomía y un enfoque implacable en la entrega de valor para el ciudadano.

### **0.3. Cómo leer este manual**

Este no es un manual de arquitectura tradicional para ser leído de manera lineal y archivado en un estante. Es una guía de campo, un sistema operativo para el pensamiento y la acción. Su estructura está diseñada para construir progresivamente un modelo mental robusto, llevándote desde los fundamentos filosóficos hasta la aplicación táctica en tu día a día. Para aprovecharlo al máximo, es crucial entender su lógica y sus herramientas.

#### **La estructura del conocimiento: de la teoría a la práctica.**

El manual está organizado en un viaje deliberado que va desde el "porqué" abstracto hasta el "cómo" concreto. Cada parte construye sobre la anterior, creando un andamiaje de conocimiento que te permitirá aplicar el marco no como una receta, sino como un verdadero estratega.

1. **Parte 1: Fundamentos Esenciales.** Aquí establecemos el **ADN del marco**. No te saltes esta parte. Comprender estos principios (el Sistema de Trabajo, el Flujo Continuo, los OKRs y el Foco Humano) es lo que te permitirá adaptar el resto del manual a tu realidad. Es el cimiento sobre el que se construye todo lo demás.

2. **Parte 2: Los Componentes del Marco Lite.** Una vez que entiendes la filosofía, te presentamos las **herramientas de pensamiento**. Aquí es donde los conceptos teóricos se materializan en artefactos prácticos como el Canvas del Sistema de Trabajo y los Checklists de Contratos. Aprenderás a usar estas herramientas no para generar burocracia, sino para estructurar el análisis y la conversación.

3. **Parte 3: El Modelo Operativo Lite.** Con las herramientas en mano, esta parte te enseña el **ritmo y la cadencia** del marco. Describe el ciclo de doble bucle (táctico y estratégico) y las ceremonias clave como la Revisión de Valor y Capacidad (RVC). Es el "cuándo" y el "dónde" se aplican las herramientas para mantener la organización en movimiento y alineada.

4. **Parte 4: El Proceso de Arquitectura Práctica.** Este es el **manual de juego del día a día**. Te guía paso a paso a través de las fases de una iniciativa de transformación, desde su concepción hasta su mejora continua. Es la sección más prescriptiva y te muestra cómo orquestar los componentes y el modelo operativo en una secuencia lógica.

5. **Parte 5: Recetas y Heurísticas.** Finalmente, esta sección es la **caja de herramientas del experto**. Destila la experiencia en "recetas" para problemas comunes y "heurísticas" (reglas prácticas) para la toma de decisiones rápidas, permitiéndote aplicar la sabiduría del marco sin necesidad de un análisis exhaustivo en cada situación.

#### **El uso de los "Canvas" y "Checklists" como herramientas centrales.**

ASTA-SIGMA Lite abandona deliberadamente los artefactos pesados y computables de su versión completa en favor de dos tipos de herramientas ligeras y de alto impacto, diseñadas para el diálogo humano.

* **El Poder del Canvas: Herramientas para el Pensamiento Visual y la Colaboración.**

    Un "Canvas" en este marco es una plantilla visual de una sola página diseñada para ser usada de forma colaborativa, idealmente en una pizarra (física o digital). Su propósito es sacar las ideas de los documentos y ponerlas en un espacio compartido donde puedan ser vistas, debatidas y co-creadas por un equipo multidisciplinario.

    El **Canvas del Sistema de Trabajo (ST)**, por ejemplo, no es un formulario para rellenar en solitario. Es un catalizador para una conversación estratégica que obliga al equipo a responder preguntas fundamentales: ¿Qué valor entregamos? ¿Quiénes son nuestros usuarios? ¿Cuáles son nuestras dependencias críticas? ¿Cómo medimos el éxito? Al hacer visibles todas las facetas de un sistema en un solo lugar, el canvas combate el pensamiento en silos y fomenta una visión sistémica. Es una herramienta para **crear alineamiento y un entendimiento compartido**.

* **El Rigor del Checklist: Herramientas para la Decisión Guiada y la Claridad.**

    Un "Checklist" en ASTA-SIGMA Lite reemplaza la rigidez de un esquema computable (como un JSON Schema). En lugar de forzar una estructura estricta, un checklist guía al arquitecto y al equipo a través de un proceso de descubrimiento y acuerdo, asegurando que no se olviden aspectos críticos.

    Los **Checklists de Contratos Conversacionales**, por ejemplo, no son plantillas de documentos legales. Son una serie de preguntas clave que dos equipos deben responder para definir su interfaz: *¿Qué datos intercambiaremos? ¿Cuáles son nuestros compromisos de disponibilidad (SLOs)? ¿Cómo manejaremos los errores? ¿Cómo versionaremos los cambios?* El resultado no es un archivo YAML validado por una máquina, sino un **acuerdo explícito y entendido por los humanos** que lo construirán y mantendrán. Es una herramienta para **inyectar rigor en la conversación y formalizar acuerdos** sin caer en la sobrecarga técnica.

Ambas herramientas encarnan la filosofía central de ASTA-SIGMA Lite: **facilitar interacciones humanas de alta calidad para tomar mejores decisiones más rápido**. El éxito de su aplicación no se medirá por cuán completos estén los artefactos, sino por la claridad, el alineamiento y el impulso que generen en tu organización.

## **PARTE 1: FUNDAMENTOS ESENCIALES — EL ADN DE ASTA-SIGMA**

Para transformar una organización, primero debemos cambiar la forma en que la vemos. Los organigramas tradicionales, con sus cajas y líneas jerárquicas, son útiles para entender la estructura de autoridad, pero nos dicen muy poco sobre cómo se crea y entrega valor realmente. Nos muestran silos departamentales —"Finanzas", "Operaciones", "TI"— pero ocultan los flujos de trabajo transversales que realmente atienden las necesidades de los ciudadanos. Este es el modelo de la organización como una máquina: un conjunto de piezas especializadas que se asume que funcionarán en perfecta armonía.

El problema es que las organizaciones, especialmente las públicas, no son máquinas predecibles. Son ecosistemas complejos y vivos, en constante interacción con un entorno dinámico y a menudo turbulento. Tratar de gestionar un organismo vivo con el manual de una máquina es una receta para la frustración, la burocracia y la incapacidad de adaptarse.

ASTA-SIGMA Lite comienza por cambiar esta lente. Te invita a ver tu institución no como una colección de departamentos, sino como un **sistema vivo**, un organismo que debe prosperar en su entorno. Para hacerlo, necesitamos una unidad de análisis que capture esta realidad sociotécnica.

---

### **1.1. Principio Fundacional #1: La Organización como un Sistema de Trabajo Vivo**

#### **1.1.1. El Sistema de Trabajo (ST) como unidad de análisis: Introducción a la Work System Theory de Alter**

Para dejar atrás los silos del organigrama, necesitamos un nuevo bloque de construcción fundamental. En ASTA-SIGMA, esta unidad de análisis es el **Sistema de Trabajo (ST)**, un concepto extraído directamente de la robusta "Work System Theory" (WST) del académico Steven Alter.

Un Sistema de Trabajo es mucho más que un proceso o una aplicación. Según la definición de Alter, es:

> **Un sistema en el que participantes humanos y/o máquinas realizan trabajo (procesos y actividades) utilizando información, tecnología y otros recursos para producir productos y/o servicios específicos para clientes internos y/o externos.**

Analicemos esta definición, porque es la piedra angular de todo el marco:

* **Es Sociotécnico por Naturaleza:** La definición une inseparablemente a "participantes humanos" y "máquinas". Esto nos obliga a abandonar la falsa dicotomía entre "el negocio" y "TI". En un Sistema de Trabajo, los funcionarios, los procesos que siguen, los datos que consultan y las tecnologías que utilizan son parte de un **todo indivisible**. No se puede diseñar la tecnología sin entender el trabajo humano, y no se puede optimizar el trabajo humano sin considerar las capacidades de la tecnología.

* **Está Orientado a un Propósito:** Un ST existe para "producir productos y/o servicios para clientes". Esto nos fuerza a pensar en términos de **valor entregado**, no en términos de funciones departamentales. La pregunta deja de ser "¿Qué hace la División de Finanzas?" y pasa a ser "¿Cuál es el Sistema de Trabajo que se encarga de 'Asegurar la ejecución presupuestaria' y qué valor entrega a sus clientes (otras divisiones, la ciudadanía)?".

* **Es Holístico:** Incluye todos los componentes necesarios para la entrega de valor: los **participantes**, los **procesos**, la **información**, la **tecnología** y los **recursos**.

En ASTA-SIGMA Lite, el **Sistema de Trabajo** se convierte en nuestra unidad fundamental de arquitectura, diseño y gobernanza. Ya no hablamos de "proyectos de TI" o "procesos de negocio" como si fueran cosas separadas. Hablamos de **diseñar, financiar y mejorar Sistemas de Trabajo**.

Por ejemplo, la "Gestión de Solicitudes de Subsidio" es un Sistema de Trabajo. Involucra a ciudadanos (clientes), analistas (participantes), normativas (información), un sistema de software (tecnología) y un proceso definido para evaluar y aprobar las solicitudes. Verlo como un ST nos permite analizarlo y mejorarlo como un todo coherente, en lugar de optimizar una de sus partes (como el software) de forma aislada, corriendo el riesgo de simplemente "hacer las cosas mal, pero más rápido".

La adopción del Sistema de Trabajo como unidad de análisis es el primer y más crucial paso para liderar la transformación. Nos proporciona un lenguaje y un modelo mental para ver nuestra organización como realmente es: un ecosistema vivo de sistemas que colaboran (o luchan) para entregar valor. La herramienta principal para visualizar y diseñar estos sistemas será el **Canvas del Sistema de Trabajo**, que exploraremos en la Parte 2.

### **1.2. Principio Fundacional #2: El Flujo Continuo de Valor**

Si el "Sistema de Trabajo" es nuestra unidad de análisis, el "Flujo Continuo de Valor" es nuestro **modo de operación**. Este principio representa un cambio radical respecto a cómo las organizaciones tradicionalmente han gestionado la tecnología y el cambio. Abandona la idea de esfuerzos discretos y finitos para abrazar un modelo de evolución y adaptación perpetua, más acorde con la naturaleza de un organismo vivo que con la de una máquina.

#### **1.2.1. Adiós a los proyectos, bienvenida la continuidad (`#NoProjects`): La filosofía de Allan Kelly para la entrega de valor sostenido.**

El modelo de "proyecto" ha dominado la gestión durante décadas. Con su promesa de un inicio, un medio y un fin, ofrece una sensación de control y cierre que es psicológicamente atractiva. Sin embargo, este modelo es una herencia de una era pre-digital y es fundamentalmente inadecuado para la realidad de la transformación digital.

El problema central es lo que Allan Kelly denomina la **"Miopía del Proyecto"**: la creencia de que el trabajo tiene un final definitivo. Hacemos preguntas como "¿Cuándo estará listo el proyecto?", pero rara vez nos preguntamos "¿Cuándo estará 'terminada' nuestra empresa?" o "¿Cuándo 'finalizará' nuestro servicio al ciudadano?". Estas últimas preguntas solo tienen sentido para organizaciones en crisis. Si queremos que nuestra institución y sus servicios perduren y mejoren, ¿por qué tratamos la tecnología que los sustenta como algo que un día estará "terminado"?.

La filosofía **`#NoProjects`** es el reconocimiento de esta contradicción. No significa "no planificar" o "no tener objetivos"; significa reorientar la forma en que organizamos el trabajo. En lugar de agrupar el cambio en "proyectos" temporales, lo organizamos en **flujos de valor continuos**, alineados con los Sistemas de Trabajo que la organización necesita para cumplir su misión. La tecnología no es un evento único, es la sangre vital de la organización digital; interrumpir su flujo es arriesgar la salud del organismo completo.

#### **1.2.2. Activos que viven y evolucionan: Entender los sistemas como activos que requieren inversión continua para no decaer.**

Para operar en un flujo continuo, debemos cambiar nuestra percepción de lo que estamos construyendo. Un sistema digital no es un edificio que se construye una vez y luego solo requiere mantenimiento menor. Es un **activo estratégico vivo**, más parecido a un jardín que a una estructura de hormigón.

Kelly introduce el concepto de **"Software como un Activo" (SaaA)**, el cual posee una característica crucial: **decae si no se invierte en él continuamente**. El software no se oxida ni se desgasta físicamente, pero su valor decae por otras razones:

* **Decadencia por el Entorno:** El mundo cambia. Nuevas leyes entran en vigor, las expectativas de los ciudadanos evolucionan, surgen nuevas tecnologías. Un sistema que no se adapta a estos cambios se vuelve progresivamente menos útil y, eventualmente, obsoleto.
* **Decadencia por Conocimiento:** El modelo de proyectos acelera esta decadencia. Las pausas entre proyectos provocan la pérdida de conocimiento tácito esencial sobre el sistema. El equipo que construyó la versión 1.0 rara vez es el mismo que aborda la 2.0, lo que obliga a un costoso y arriesgado proceso de re-aprendizaje.
* **Decadencia por Deuda Técnica:** La presión por "terminar el proyecto a tiempo y dentro del presupuesto" a menudo lleva a tomar atajos, acumulando "deuda técnica". Esto es como "decidir conscientemente dejar una parte de un puente sin pintar solo para terminar según el cronograma". Cada atajo hace que el siguiente cambio sea más lento, más caro y más arriesgado.

Reconocer los sistemas como activos vivos implica que la inversión debe ser continua, no esporádica. En lugar de grandes inyecciones de capital cada pocos años para "proyectos de modernización" masivos y arriesgados, el modelo de flujo de valor aboga por **inversiones más pequeñas, frecuentes e incrementales** destinadas a la mejora continua, la adaptación y el pago constante de la deuda técnica.

#### **1.2.3. Equipos Estables de Flujo de Valor (EFV): El modelo "ameba" de equipos persistentes que son dueños de los ST.**

Si el trabajo es un flujo continuo y los sistemas son activos vivos, ¿quién se encarga de ellos? La respuesta no puede ser un "equipo de proyecto" temporal que se disuelve al "entregar" la solución. La responsabilidad debe recaer en una estructura organizacional igualmente persistente.

Aquí es donde ASTA-SIGMA Lite introduce el concepto de **Equipo de Flujo de Valor (EFV)**. Un EFV es la encarnación del principio de "equipos estables".

* **Son Estables, no Estáticos:** Un EFV es un equipo multidisciplinario (con perfiles de negocio, diseño y tecnología) que permanece unido a largo plazo. Sus miembros pueden cambiar con el tiempo, pero el equipo como entidad perdura, acumulando un profundo conocimiento tanto del dominio de negocio como de la tecnología que lo soporta.
* **Son Dueños de los Sistemas de Trabajo:** Cada EFV es el **dueño** de uno o más Sistemas de Trabajo (STs) relacionados. Son responsables de su ciclo de vida completo: desde el diseño y la construcción hasta la operación, el monitoreo y la evolución continua. Adoptan la mentalidad de *"tú lo construyes, tú lo operas"*.
* **Crecen y se Adaptan como Organismos:** El modelo sigue el patrón "ameba" descrito por Kelly. Un equipo exitoso que entrega valor puede justificar su crecimiento. Si se vuelve demasiado grande y la comunicación se hace ineficiente, se divide en dos equipos más pequeños y viables, cada uno asumiendo la propiedad de una parte del dominio. De manera inversa, los equipos que gestionan sistemas en declive pueden reducirse o fusionarse con otros.

Esta estructura organizacional es la clave para hacer realidad el flujo continuo. Los EFV, al ser dueños a largo plazo de sus activos, tienen el incentivo intrínseco de mantener la calidad técnica, gestionar la deuda y buscar constantemente oportunidades para mejorar el valor que entregan, asegurando que el "organismo" no solo sobreviva, sino que prospere.

### **1.3. Principio Fundacional #3: Alineamiento Estratégico Radical**

Hemos establecido que la organización es un ecosistema de Sistemas de Trabajo vivos, operados por Equipos de Flujo de Valor estables y autónomos. Esto resuelve el problema de la agilidad y la entrega continua. Sin embargo, introduce un nuevo desafío, quizás el más crítico de todos: **¿cómo nos aseguramos de que todos estos equipos autónomos remen en la misma dirección?**

La autonomía sin alineamiento es caos. Un equipo puede ser increíblemente eficiente entregando valor, pero si ese valor no contribuye a la misión global de la institución, el esfuerzo es, en el mejor de los casos, subóptimo, y en el peor, contraproducente. La gestión pública tradicional resolvía esto con planificación centralizada y control jerárquico, un modelo que sacrifica la agilidad en el altar de la coherencia.

ASTA-SIGMA Lite propone una solución diferente, una que busca lograr tanto la autonomía como el alineamiento. Este es el principio del **Alineamiento Estratégico Radical**, que se materializa a través de dos conceptos entrelazados: un lenguaje universal para los objetivos y una definición clara del propósito final.

#### **1.3.1. OKRs como lenguaje universal: El poder de los Objetivos y Resultados Clave para conectar la estrategia con la ejecución táctica.**

Para alinear a los equipos sin recurrir al micro-management o a planes detallados de cientos de páginas, necesitamos un lenguaje común que conecte la visión de más alto nivel con el trabajo diario. Ese lenguaje en ASTA-SIGMA Lite son los **OKRs (Objectives and Key Results)**.

Los OKRs son un marco para la definición de metas que se distingue por su simplicidad y potencia. Un OKR consta de dos componentes:

1. **El Objetivo (O):** Es una declaración **cualitativa, ambiciosa e inspiradora** de lo que se quiere lograr. Responde a la pregunta "¿Hacia dónde vamos?". Debe ser memorable y motivador.
    * *Ejemplo de Objetivo:* "Transformar la obtención de permisos de edificación en una experiencia ciudadana excepcional."

2. **Los Resultados Clave (KRs):** Son un conjunto de **métricas cuantitativas** que miden el progreso hacia el Objetivo. Responden a la pregunta "¿Cómo sabremos que hemos llegado?". Deben ser medibles, verificables y difíciles, pero no imposibles, de alcanzar.
    * *Ejemplos de Resultados Clave para el Objetivo anterior:*
        * **KR1:** Reducir el tiempo promedio de aprobación de un permiso de 45 a 15 días hábiles.
        * **KR2:** Aumentar el índice de satisfacción ciudadana (CSAT) del trámite de un 60% a un 90%.
        * **KR3:** Disminuir la tasa de solicitudes con errores que requieren reingreso de un 40% a un 5%.

El poder de los OKRs en ASTA-SIGMA Lite es triple:

* **Fomentan el Alineamiento sin Destruir la Autonomía:** La dirección establece los OKRs estratégicos de la organización. Luego, cada Equipo de Flujo de Valor define sus propios OKRs trimestrales, preguntándose: "¿Cómo podemos contribuir a los OKRs de la institución?". Esto crea una cascada de alineamiento, pero deja al equipo la autonomía para decidir *cómo* alcanzar sus propios KRs.
* **Enfocan en Resultados (Outcomes), no en Tareas (Outputs):** El éxito ya no se mide por la cantidad de "features" entregadas o tareas completadas. Se mide por el movimiento de la aguja en los Resultados Clave. Esto cambia la conversación de "¿Terminamos el trabajo?" a "¿Logramos el impacto deseado?".
* **Crean Transparencia Radical:** Los OKRs de toda la organización, desde el nivel más alto hasta el de cada equipo, son públicos y visibles para todos. Esto permite que cualquier persona vea cómo su trabajo contribuye al panorama general y facilita la colaboración entre equipos que persiguen objetivos similares.

En ASTA-SIGMA Lite, los OKRs no son una herramienta más; son el **sistema nervioso central de la estrategia**, el mecanismo que asegura que la energía de cada equipo se canalice hacia un propósito común.

#### **1.3.2. El valor público como norte: Adaptación de los principios de gestión al contexto del sector público (Weisbluth).**

Si los OKRs son la brújula, el **valor público** es el Norte magnético al que siempre debe apuntar. En una empresa privada, el objetivo final suele ser claro: la rentabilidad. En el sector público, el propósito es más complejo y profundo.

ASTA-SIGMA Lite reconoce esta diferencia fundamental. No se puede liderar una transformación en el Estado aplicando métricas puramente corporativas. Por ello, la definición y medición del valor deben adaptarse explícitamente a este contexto.

* **Definiendo el Valor Público:** Inspirados en los principios de gestión pública de Weisbluth, entendemos que el control de gestión no se basa únicamente en números. Es un proceso que debe guiar a la institución "conforme a las direcciones estratégicas establecidas", combinando "datos cuantitativos con intuición cualitativa para lograr el éxito". En nuestro marco, esto significa que los **Objetivos** de nuestros OKRs deben estar siempre anclados en la misión de la institución y en el impacto positivo en la vida de las personas. La **Estrategia de Gobierno Digital 2030** nos da lineamientos claros al respecto, con principios como "centrado en las personas" y "gobierno integrado".

* **Midiendo el Valor Público:** Los **Resultados Clave (KRs)** son nuestra herramienta para cuantificar este valor. Si bien pueden incluir métricas de eficiencia interna (ej. reducción de costos, tiempo de ciclo), deben priorizar la medición del impacto externo:
  * **Calidad de vida:** ¿Redujimos el tiempo que un ciudadano debe esperar por un servicio esencial?
  * **Equidad:** ¿Aumentamos el acceso a un beneficio para grupos históricamente desatendidos?
  * **Confianza:** ¿Mejoramos la percepción de transparencia y eficacia de la institución?

En la práctica, este principio actúa como un filtro ético y estratégico para todo el marco. Al definir los OKRs de un nuevo Sistema de Trabajo, la primera pregunta no es "¿Cómo puede esto hacernos más eficientes?", sino **"¿Cómo puede esto generar más valor público?"**. Esta orientación asegura que la agilidad y la tecnología no se conviertan en fines en sí mismos, sino que permanezcan como lo que deben ser: poderosas herramientas al servicio de la ciudadanía.

### **1.4. Principio Fundacional #4: Humanidad en el Centro del Diseño**

Un sistema puede ser técnicamente brillante, operativamente eficiente y estratégicamente alineado, pero si es incomprensible, inaccesible o frustrante para las personas que lo usan —sean ciudadanos o funcionarios—, ha fracasado. En el sector público, la tecnología no es un fin en sí misma; es el principal canal a través del cual el Estado se relaciona con la ciudadanía. Por lo tanto, la experiencia humana no es un aspecto secundario, es la medida final del éxito.

Este principio establece que cada Sistema de Trabajo, cada proceso y cada Agente Digital debe ser diseñado desde y para las personas. Esto se manifiesta en dos dominios críticos: cómo concebimos el rol de la inteligencia artificial y cómo diseñamos la experiencia de cada interacción.

#### **1.4.1. IA Centrada en el Humano (HCAI): El espectro de propósito (Asistir, Aumentar, Orquestar, Automatizar) y cognición (Sentir, Decidir, Actuar).**

La inteligencia artificial (IA) ofrece un potencial extraordinario, pero también presenta riesgos de crear sistemas opacos, sesgados o que devalúen la pericia humana. Para gobernar esta poderosa capacidad, ASTA-SIGMA Lite adopta un marco de **IA Centrada en el Humano (HCAI, por sus siglas en inglés)**, basado en el trabajo de Ben Shneiderman y otros.

Este enfoque nos obliga, como arquitectos y diseñadores, a ser explícitos sobre el rol que la IA jugará en un Sistema de Trabajo. En lugar de hablar genéricamente de "usar IA", debemos definir su función a lo largo de dos espectros complementarios:

**1. El Espectro del Propósito HCAI:** Define la **relación** entre el agente de IA y el participante humano. ¿Qué rol juega la IA para la persona?

* **Asistir (Assist):** La IA actúa como un ayudante reactivo. Proporciona información, responde preguntas o ejecuta tareas simples a petición del usuario. *Ejemplo: Un chatbot que responde preguntas frecuentes sobre un trámite*.
* **Aumentar (Augment):** La IA actúa como una herramienta que potencia las capacidades del humano. El humano sigue al mando, pero es más rápido, más preciso o más creativo gracias a la IA. *Ejemplo: Un "copiloto" que sugiere redacciones para un oficio o resalta cláusulas relevantes en un documento legal*.
* **Orquestar (Orchestrate):** La IA actúa como un coordinador. Gestiona la interacción entre múltiples agentes (humanos o de IA) para lograr un objetivo complejo. *Ejemplo: Un sistema que optimiza la asignación de inspectores en terreno basándose en la ubicación, urgencia y carga de trabajo de cada uno*.
* **Automatizar (Automate):** La IA ejecuta un proceso de forma autónoma, pero siempre dentro de límites definidos y bajo supervisión humana. El humano delega la ejecución, pero retiene el control estratégico y la capacidad de intervenir.

**2. El Espectro de la Cognición:** Define la **función cognitiva** principal que el agente de IA realiza dentro del Sistema de Trabajo. ¿Qué tipo de "pensamiento" está haciendo?

* **Sentir (Sense):** La IA se especializa en la percepción y el monitoreo. Su función es observar grandes volúmenes de datos para detectar patrones, anomalías o eventos críticos. *Ejemplo: Un sistema que detecta patrones de fraude en solicitudes de subsidios*.
* **Decidir (Decide):** La IA se especializa en la toma de decisiones. Aplica reglas de negocio o modelos predictivos para evaluar opciones y recomendar o seleccionar un curso de acción. *Ejemplo: Un motor que determina la admisibilidad inicial de una postulación basándose en reglas predefinidas*.
* **Actuar (Act):** La IA se especializa en la ejecución. Su función es realizar acciones concretas en otros sistemas o generar artefactos. *Ejemplo: Un agente que, tras una aprobación, envía automáticamente una notificación y actualiza el estado en el sistema de expedientes*.

El trabajo del arquitecto es posicionar cada Agente Digital en este mapa bidimensional. Un agente que **Siente** un riesgo de fraude (Cognición) puede **Asistir** a un analista humano mostrándole una alerta (Propósito). O bien, un agente que **Decide** la ruta óptima (Cognición) puede **Automatizar** el despacho de un vehículo (Propósito).

Esta clasificación deliberada se captura en el **Checklist del Contrato de Agente Lite** y nos fuerza a mantener el control humano donde el riesgo es alto, estableciendo por defecto un modo de **Humano-en-el-Bucle (HITL)** para decisiones críticas.

#### **1.4.2. Diseño de Experiencia (UX): Principios de diseño modular, divulgación progresiva y accesibilidad como requisitos no negociables.**

Si HCAI es la estrategia para la inteligencia del sistema, el **Diseño de Experiencia (UX)** es la disciplina para su interacción con el mundo. Una buena UX asegura que el valor que un Sistema de Trabajo puede entregar sea efectivamente accesible y utilizable por las personas a las que sirve.

En ASTA-SIGMA Lite, la UX no es una capa de "pintura" que se añade al final; es un pilar del diseño desde el inicio. Nos basamos en principios modernos de diseño para aplicaciones empresariales, que son especialmente relevantes para la complejidad del sector público:

* **Diseño Modular y Basado en Tarjetas:** En lugar de interfaces monolíticas y abrumadoras, el diseño se descompone en componentes modulares y reutilizables (a menudo presentados como "tarjetas"). Esto permite a los usuarios personalizar sus espacios de trabajo y enfocarse en la información relevante, haciendo que los flujos complejos sean más digeribles.

* **Divulgación Progresiva (Progressive Disclosure):** La complejidad debe revelarse solo cuando es necesaria. Las interfaces deben ser limpias y simples por defecto, ocultando las opciones avanzadas hasta que el usuario las solicita explícitamente. Esto reduce la carga cognitiva y guía al usuario a través del flujo de manera más natural, en lugar de presentarle todas las opciones posibles a la vez.

* **Microinteracciones para un Feedback Claro:** Cada acción del usuario debe tener una reacción inmediata y perceptible. Pequeñas animaciones, cambios de estado en un botón o mensajes de confirmación sutiles (microinteracciones) son cruciales. Proporcionan al usuario la seguridad de que el sistema ha registrado su acción, haciendo que la experiencia se sienta más responsiva y confiable.

* **Accesibilidad y Lenguaje Claro como Obligación:** En el sector público, la accesibilidad no es una opción, es un requisito fundamental de equidad. Todos los servicios digitales deben ser diseñados desde el inicio para cumplir con los estándares de accesibilidad (como WCAG 2.1 Nivel AA), garantizando que personas con diversas capacidades puedan utilizarlos. Esto se complementa con el uso del **Lenguaje Claro**, asegurando que los textos y las instrucciones sean comprensibles para todos los ciudadanos, independientemente de su nivel de familiaridad con la jerga administrativa.

Estos principios de diseño se documentan y se trabajan en la **Ficha de UX**, un artefacto vivo que acompaña al Sistema de Trabajo a lo largo de su ciclo de vida. Al poner la humanidad en el centro del diseño, nos aseguramos de que la transformación digital no solo sea eficiente, sino también inclusiva, justa y respetuosa.

## **PARTE 2: LOS COMPONENTES DEL MARCO LITE — LAS HERRAMIENTAS DEL ARQUITECTO**

Si los fundamentos de la Parte 1 son el ADN del marco, los componentes de esta sección son sus **órganos vitales**. Son las herramientas que nos permiten aplicar esos principios en el mundo real. Fieles a la filosofía "Lite", hemos abandonado los repositorios masivos de diagramas UML, los extensos documentos de requisitos y las complejas matrices de trazabilidad. En su lugar, hemos adoptado un conjunto mínimo de herramientas de alto impacto, diseñadas para ser visuales, colaborativas y, sobre todo, prácticas.

La pieza central de este kit de herramientas, el sol alrededor del cual orbitan todos los demás componentes, es el Canvas del Sistema de Trabajo.

### **2.1. El Artefacto Central: El Canvas del Sistema de Trabajo (ST)**

#### **2.1.1. Propósito: Más que un documento, una herramienta para el diálogo y el diseño colaborativo.**

La arquitectura empresarial tradicional a menudo sufre de una desconexión fatal: los arquitectos crean modelos precisos pero incomprensibles para el resto de la organización, mientras que los equipos de negocio definen estrategias que no se traducen en realidades técnicas. El resultado es una brecha entre la estrategia y la ejecución, donde los artefactos se convierten en "letra muerta", archivados y rápidamente desactualizados.

El **Canvas del Sistema de Trabajo (ST)** está diseñado para destruir esta brecha. Su propósito fundamental **no es documentar, sino facilitar el diálogo y catalizar el entendimiento compartido**. Es un mapa, no el territorio. Es una herramienta para pensar juntos.

Inspirado en el "Work System Snapshot" de la Work System Theory de Steven Alter, el Canvas condensa los nueve elementos esenciales de cualquier sistema sociotécnico en una única vista visual. Al hacerlo, cumple con varios propósitos críticos:

* **Fomenta un Entendimiento Común y Holístico:**
  Al reunir en una sola página a los **Clientes**, los **Productos/Servicios**, los **Procesos**, los **Participantes**, la **Información**, la **Tecnología**, el **Entorno**, la **Infraestructura** y la **Estrategia**, el Canvas obliga a todos los involucrados a adoptar una visión sistémica. Un tecnólogo no puede hablar de una nueva plataforma sin ver inmediatamente su impacto en los participantes y sus procesos. Un líder de negocio no puede definir un nuevo servicio sin considerar las dependencias tecnológicas y de datos que requiere. El Canvas hace que las interconexiones sean visibles, rompiendo los silos de pensamiento y creando un lenguaje común para toda la organización.

* **Es un Catalizador para el Diseño Colaborativo (Co-Creación):**
  El Canvas del ST no es un formulario que un arquitecto rellena en solitario. Es una herramienta diseñada para ser utilizada en talleres colaborativos, en una pizarra (física o virtual), con post-its y marcadores. Es el punto de encuentro donde el dueño del producto, el arquitecto, el diseñador UX, los desarrolladores y los expertos operativos se reúnen para mapear el estado actual ("As-Is") de un Sistema de Trabajo y co-diseñar su estado futuro ("To-Be"). Facilita una conversación estructurada que externaliza el conocimiento tácito y las suposiciones de cada participante, permitiendo que el diseño emerja de la inteligencia colectiva del equipo.

* **Actúa como un Artefacto Vivo y Dinámico:**
  A diferencia de los documentos de arquitectura estáticos, el Canvas del ST está diseñado para evolucionar. Es una fotografía del sistema en un momento dado, y como el sistema es un organismo vivo, la fotografía debe actualizarse constantemente. Se revisa y ajusta al inicio de una iniciativa, se refina a medida que el equipo aprende durante la ejecución, y se presenta en la Revisión de Valor y Capacidad (RVC) para mostrar la evolución. Su valor no está en su estado final, sino en su capacidad para reflejar el aprendizaje continuo del equipo.

En esencia, el Canvas del Sistema de Trabajo es la encarnación de la filosofía Lite. Sustituye la exhaustividad por la claridad, la rigidez por la flexibilidad y el monólogo del experto por la conversación multidisciplinaria. Es la herramienta que te permitirá, como arquitecto, pasar de ser un "dibujante de planos" a un **facilitador estratégico**, guiando a tu organización en la compleja pero vital tarea de entenderse a sí misma para poder transformarse.

#### **2.1.2. Las 9 secciones del Canvas ST Lite**

El Canvas del Sistema de Trabajo (ST) es el mapa visual de tu iniciativa. No es un documento exhaustivo, sino un "lienzo" para el diálogo estratégico. Su poder reside en su capacidad para mostrar el sistema completo en una sola página, forzando a todos los participantes a pensar de forma interconectada. A continuación, se detalla cada una de sus nueve secciones, diseñadas para ser completadas de forma colaborativa en un taller de diseño.

***

**1. Propósito y Valor Público (Alineado a OKRs)**

* **Propósito:** Esta es la sección más importante. Es el "norte" del Sistema de Trabajo. Responde a las preguntas fundamentales: **¿Por qué existe este sistema? ¿Qué valor público genera? ¿Cómo contribuye a la misión de la institución?**
* **Preguntas Guía:**
  * ¿Cuál es el **Objetivo** estratégico (la "O" del OKR) al que este ST contribuye directamente?
  * ¿Cuál es la **fricción** principal que estamos resolviendo para el ciudadano o para la organización?
  * En una sola frase (verbo + qué + para qué), ¿cuál es el propósito del sistema?
* **Ejemplo Práctico (ST "Gestión de Solicitudes de Subsidio"):**
    > **Propósito:** *Agilizar y transparentar el proceso de postulación a subsidios para reducir la incertidumbre del ciudadano y mejorar la eficiencia en la asignación de recursos.*
    > **Alineado al OKR Organizacional:** *O: Mejorar radicalmente la experiencia del ciudadano en el acceso a beneficios sociales.*
* **Conexión Teórica:** Esta sección conecta directamente con el **Alineamiento Estratégico Radical** y el principio de **Valor Público como Norte**. Obliga a que cada iniciativa comience con un "porqué" claro y anclado en la misión, no en una solución tecnológica.

***

**2. Actores y Experiencia (Humanos y Digitales)**

* **Propósito:** Identificar a todos los participantes, tanto humanos como de IA, que interactúan en el sistema y comprender su experiencia. Responde a: **¿Para quién estamos diseñando y cómo es su viaje?**
* **Preguntas Guía:**
  * ¿Quiénes son los **clientes/usuarios** principales (ciudadanos, otros servicios)?
  * ¿Quiénes son los **participantes internos** (funcionarios) que operan el sistema?
  * ¿Qué **Agentes Digitales (IA)** participan? ¿Cuál es su propósito HCAI (Asistir, Aumentar, etc.)?
  * ¿Cuáles son los principales "dolores" y "ganancias" en la experiencia actual de cada actor?
* **Ejemplo Práctico:**
    > **Actores Humanos:** Ciudadano postulante, Analista de Admisibilidad, Supervisor de Aprobaciones.
    > **Agentes Digitales:** AG-001: Asistente de Verificación de Admisibilidad (Propósito: **Asistir** al analista).
    > **Experiencia Clave:** *El ciudadano experimenta alta ansiedad por la falta de visibilidad del estado de su postulación. El analista sufre de sobrecarga por la revisión manual de documentos repetitivos.*
* **Conexión Teórica:** Este cuadrante materializa el principio de **Humanidad en el Centro del Diseño**. Nos obliga a pensar en términos de "User Personas" y "User Journeys" y a ser explícitos sobre el rol de la IA.

***

**3. Flujo de Valor y Proceso Principal (Modelado simple)**

* **Propósito:** Describir a alto nivel la secuencia de actividades que transforman una necesidad en valor entregado. Responde a: **¿Cómo funciona el sistema de punta a punta?**
* **Preguntas Guía:**
  * ¿Cuál es el **evento** que inicia el flujo? (ej. una solicitud ciudadana).
  * ¿Cuáles son las 3 a 5 **etapas macro** del proceso?
  * ¿Cuál es el **acto administrativo o resultado final** que concluye el flujo?
* **Ejemplo Práctico:**
    > 1. **Recepción y Clasificación:** El ciudadano postula a través del portal.
    > 2. **Verificación de Admisibilidad:** El Analista, asistido por AG-001, revisa los documentos.
    > 3. **Evaluación y Decisión:** El Supervisor aprueba o rechaza la solicitud.
    > 4. **Notificación y Cierre:** Se notifica al ciudadano y se archiva el expediente.
* **Conexión Teórica:** Es una aplicación ligera del modelado de procesos, enfocada en el flujo de valor y no en la notación BPMN detallada. Visualiza el "cómo" del Sistema de Trabajo.

***

**4. Capacidades y Servicios Expuestos**

* **Propósito:** Definir qué "servicios" reutilizables ofrece este ST al resto de la organización. Responde a: **¿Qué valor produce este sistema para otros sistemas?**
* **Preguntas Guía:**
  * ¿Qué capacidades de negocio realiza este sistema? (ej. "Gestión de Expedientes")
  * Si otros sistemas necesitaran interactuar con nosotros, ¿qué servicios (APIs) les ofreceríamos? (ej. "Consultar Estado de Trámite").
* **Ejemplo Práctico:**
    > **Capacidades:** Gestión de Postulaciones, Verificación de Documentos.
    > **Servicios Expuestos (APIs):** `GET /solicitudes/{id}`, `POST /solicitudes`.
* **Conexión Teórica:** Este es el núcleo del pensamiento en plataformas y ecosistemas. Fomenta el diseño de componentes desacoplados y reutilizables, un pilar de las arquitecturas modernas.

***

**5. Datos Clave (Consumidos y Producidos)**

* **Propósito:** Identificar los "nutrientes" y "residuos" informacionales del sistema. Responde a: **¿Qué información necesita este sistema para vivir y qué información valiosa genera?**
* **Preguntas Guía:**
  * ¿Cuáles son los principales **productos de datos** que este sistema consume? (ej. Registro Social de Hogares).
  * ¿Cuáles son los principales **productos de datos** que este sistema produce? (ej. Expediente de Postulación).
* **Ejemplo Práctico:**
    > **Consume:** Datos del Registro Civil (validación de identidad), Base de Datos de Subsidios Anteriores.
    > **Produce:** Expediente Digital de Postulación, Datos para el Dashboard de Transparencia.
* **Conexión Teórica:** Se alinea con la arquitectura orientada a productos de datos (**Data as a Product**), tratando la información como un activo de primera clase.

***

**6. Tecnología y Plataformas de Soporte**

* **Propósito:** Mapear las herramientas y plataformas tecnológicas que habilitan el sistema. Responde a: **¿Sobre qué cimientos tecnológicos se construye este sistema?**
* **Preguntas Guía:**
  * ¿Qué **aplicaciones** o componentes de software principales utiliza?
  * ¿Qué **plataformas transversales** consume? (ej. Plataforma de Identidad Digital, Motor de Pagos).
* **Ejemplo Práctico:**
    > **Aplicaciones:** Portal Web de Postulación (Vue.js), Servicio de Orquestación (Node.js), Bot de Verificación (Python).
    > **Plataformas:** ClaveÚnica (Identidad), PISEE (Interoperabilidad).
* **Conexión Teórica:** Conecta el diseño sociotécnico con la realidad de la infraestructura, un componente esencial de la **Work System Theory**.

***

**7. Dependencias (Internas y Externas)**

* **Propósito:** Hacer visibles las conexiones críticas que pueden afectar la resiliencia y el flujo del sistema. Responde a: **¿El éxito de este sistema depende de alguien más?**
* **Preguntas Guía:**
  * ¿De qué otros **Sistemas de Trabajo internos** dependemos para funcionar?
  * ¿De qué **proveedores o entidades externas** dependemos?
* **Ejemplo Práctico:**
    > **Dependencias Internas:** ST de Notificaciones Centralizadas, ST de Archivo Digital.
    > **Dependencias Externas:** Servicio de Registro Civil (Proveedor de datos de identidad).
* **Conexión Teórica:** Es una aplicación directa del enfoque de **Organización como Organismo**, que vive en un ecosistema interconectado.

***

**8. Gobernanza, Riesgo y Mandato Regulatorio**

* **Propósito:** Definir los "guardarraíles" dentro de los cuales debe operar el sistema. Responde a: **¿Cuáles son las reglas del juego para este sistema?**
* **Preguntas Guía:**
  * ¿Cuál es el **mandato legal** o normativo principal que rige este sistema?
  * ¿Cuál es su **Nivel de Riesgo** (Bajo, Medio, Alto) según la guía GM-002?
  * ¿Quién es el **Dueño del Producto/Servicio** (el responsable final del valor)?
* **Ejemplo Práctico:**
    > **Mandato:** Ley 19.880 de Procedimiento Administrativo.
    > **Nivel de Riesgo:** Alto (maneja datos personales y decide sobre beneficios).
    > **Dueño del Producto:** Jefa de la División de Desarrollo Social.
* **Conexión Teórica:** Aquí se ancla la **Gobernanza como Código**. La clasificación de riesgo determinará qué **Checklists de Contratos** son obligatorios y qué controles deben aplicarse.

***

**9. Métricas de Éxito (SLOs y KPIs del ST)**

* **Propósito:** Definir cómo se medirá el éxito del sistema de manera objetiva y continua. Responde a: **¿Cómo sabremos que estamos ganando?**
* **Preguntas Guía:**
  * ¿Cuáles son los **Resultados Clave (KRs)** que este ST debe mover?
  * ¿Cuáles son los **Indicadores de Nivel de Servicio (SLIs)** más importantes? (ej. disponibilidad, latencia, tasa de error).
  * ¿Cuáles son los **Objetivos de Nivel de Servicio (SLOs)** para esos indicadores? (ej. 99.9% de disponibilidad).
* **Ejemplo Práctico:**
    > **KR del ST:** Reducir el tiempo de ciclo de postulación en un 50% este trimestre.
    > **SLO de Disponibilidad:** 99.9% para el portal de postulación.
    > **SLO de Calidad:** Tasa de éxito de la verificación automática de documentos > 90%.
* **Conexión Teórica:** Esta es la materialización de la **vista Dinámica (Δ)** del ST y la pieza central para la revisión en la ceremonia de **RVC**, donde se rinde cuentas sobre estas métricas.

### **2.2. Los Contratos Conversacionales: Definiendo las Fronteras**

Si el Canvas del Sistema de Trabajo (ST) nos da el mapa interno de una iniciativa, los **Contratos Conversacionales** definen sus fronteras y sus relaciones con el mundo exterior. En un ecosistema organizacional complejo, el mayor riesgo no suele ser el fallo técnico de un componente aislado, sino el malentendido en la interacción entre componentes. Las suposiciones implícitas, las expectativas no comunicadas y los acuerdos ambiguos son la principal fuente de fricción, retrasos y fracasos en la transformación digital.

El propósito de los Contratos Conversacionales es eliminar esta ambigüedad.

#### **2.2.1. El principio del "Contrato Ligero"**

A diferencia de su contraparte en el marco completo, un Contrato en ASTA-SIGMA Lite **no es un archivo YAML para ser validado por una máquina**. Es algo mucho más poderoso: **es la evidencia de una conversación estructurada entre dos partes**. Es un acuerdo explícito, co-creado y entendido por los humanos que son responsables de construir y mantener la interacción.

El rol del arquitecto aquí es ser un mediador y un facilitador. Utilizando los checklists que se presentan a continuación, el arquitecto guía a los equipos (por ejemplo, el productor de una API y su consumidor) a través de un diálogo que les obliga a responder preguntas fundamentales sobre sus compromisos mutuos. El resultado no es un documento burocrático que se archiva, sino un entendimiento compartido que se convierte en la base para el diseño y el desarrollo.

Estos contratos son "ligeros" porque se centran en lo esencial, pero son robustos porque hacen explícito lo que a menudo se deja implícito.

#### **2.2.2. Checklist del Contrato de Datos**

* **Propósito:** Guía la conversación entre un **productor de datos** (un ST que genera un Producto de Datos) y un **consumidor de datos** (otro ST que lo necesita para operar). Asegura que los datos sean tratados como un producto de primera clase.
* **Cuándo usarlo:** Cada vez que un ST expone un conjunto de datos significativo para ser utilizado por otros.
* **Preguntas Guía del Checklist:**

| Categoría | Preguntas Clave a Responder |
| :--- | :--- |
| **1. Propósito y Semántica** | • ¿Cuál es el nombre y la descripción de este Producto de Datos?<br>• ¿Quién es el equipo "Dueño" responsable de su calidad y ciclo de vida?<br>• ¿Para qué casos de uso está diseñado este dato? ¿Para cuáles NO debe usarse? |
| **2. Estructura y Acceso** | • ¿Qué campos de información contiene? ¿Cuáles son obligatorios?<br>• ¿Cómo se accederá a los datos (ej. API, vista en BBDD, archivo en Data Lake)? |
| **3. Calidad y Fiabilidad (SLOs)** | • ¿Con qué frecuencia se actualizarán los datos y cuál es el compromiso de puntualidad (ej. "actualizado en menos de 30 minutos")?<br>• ¿Cuál es el compromiso de disponibilidad del acceso a los datos (ej. 99.9%)?<br>• ¿Cuáles son las 2 o 3 reglas de calidad más importantes que deben cumplir estos datos para ser útiles? |
| **4. Gobernanza y Seguridad** | • ¿Cuál es la clasificación de seguridad de estos datos? ¿Contienen información personal identificable (PII)?<br>• ¿Cuál es la base legal que nos permite tratar estos datos?<br>• ¿Cuál es la política de retención? ¿Cuándo se deben eliminar estos datos? |
| **5. Evolución y Linaje** | • ¿Cómo se versionará este producto de datos? ¿Cómo se comunicarán los cambios?<br>• ¿De qué fuentes de origen provienen estos datos (linaje)? |

* **Conexión Teórica:** Este checklist operacionaliza los principios de **Data as a Product (DaP)** y la gobernanza de datos de DAMA-DMBOK2, adaptándolos a un formato conversacional.

#### **2.2.3. Checklist del Contrato de Servicio (API)**

* **Propósito:** Guía la conversación entre el equipo **proveedor** de una API y el equipo **consumidor**. Es la herramienta fundamental para una arquitectura orientada a servicios.
* **Cuándo usarlo:** Para cada API o servicio expuesto por un Sistema de Trabajo.
* **Preguntas Guía del Checklist:**

| Categoría | Preguntas Clave a Responder |
| :--- | :--- |
| **1. Identidad y Propósito** | • ¿Cuál es el nombre y el propósito de este servicio?<br>• ¿Quién es el equipo "Dueño" del servicio?<br>• ¿A qué nivel de riesgo está clasificado este servicio (Bajo, Medio, Alto)? |
| **2. Interfaz y Endpoints** | • ¿Cuáles son los principales endpoints que ofrece la API?<br>• ¿Dónde está la documentación técnica (ej. OpenAPI/Swagger)?<br>• ¿Qué formato de datos utiliza (ej. JSON)? |
| **3. Fiabilidad y Rendimiento (SLOs)** | • ¿Cuál es el compromiso de disponibilidad (ej. 99.95%)?<br>• ¿Cuál es el compromiso de latencia (ej. "el 95% de las peticiones responderán en menos de 200ms")?<br>• ¿Cuál es el "presupuesto de error" que podemos tolerar? |
| **4. Seguridad y Acceso** | • ¿Cómo se autentican los consumidores (ej. OAuth 2.0)?<br>• ¿Qué permisos o "scopes" se necesitan para usar cada endpoint?<br>• ¿Existen límites de uso (rate limiting)? |
| **5. Evolución y Soporte** | • ¿Qué estrategia de versionado se usará? ¿Cómo se manejarán los cambios que rompen la compatibilidad?<br>• ¿Cuál es el canal de comunicación para soporte o anuncios sobre el servicio? |

* **Conexión Teórica:** Este checklist aplica los principios de diseño de API y arquitecturas de microservicios, asegurando que las interacciones sean explícitas y resilientes.

#### **2.2.4. Checklist del Contrato de Agente (IA)**

* **Propósito:** Guía la conversación sobre la delegación de una tarea a un **Agente Digital (IA)**. Es la herramienta de gobernanza ética y operativa más importante para la IA.
* **Cuándo usarlo:** Cada vez que se diseña o integra un componente de IA en un Sistema de Trabajo.
* **Preguntas Guía del Checklist:**

| Categoría | Preguntas Clave a Responder |
| :--- | :--- |
| **1. Propósito y Rol (HCAI)** | • ¿Cuál es el propósito del agente en relación al humano? (**Asistir, Aumentar, Orquestar, Automatizar**).<br>• ¿Qué función cognitiva principal realiza? (**Sentir, Decidir, Actuar**). |
| **2. Autonomía y Supervisión** | • ¿Cuál es el nivel de autonomía del agente (ej. RAG simple, Agente ReAct)?.<br>• ¿Cuál es el modo de interacción con el humano? (**Humano-en-el-Bucle** es el defecto para alto riesgo).<br>• ¿Cuáles son los puntos de control exactos donde el agente DEBE escalar a un humano? |
| **3. Datos y Conocimiento** | • ¿Con qué fuentes de conocimiento (internas/externas) está autorizado a operar?<br>• ¿Cómo garantizamos la calidad y vigencia de ese conocimiento?<br>• ¿Cómo se manejarán los datos personales que procese? |
| **4. Guardarraíles y Seguridad** | • ¿Qué tipo de acciones tiene estrictamente prohibido realizar?<br>• ¿Cómo se monitoreará su rendimiento, coste y calidad (fidelidad, precisión de citas)?<br>• ¿Existe un "interruptor de apagado" (kill switch) en caso de comportamiento anómalo? |
| **5. Transparencia y Explicabilidad** | • ¿Cómo se le informará al usuario que está interactuando con una IA?<br>• Si el agente toma una decisión, ¿cómo se explicará el "porqué" de esa decisión de forma simple? |

* **Conexión Teórica:** Este checklist es la aplicación directa del **Agent Responsibility Framework** de Alter y los principios de **Human-Centered AI**.

#### **2.2.5. Checklist del Contrato de Suministro**

* **Propósito:** Guía la conversación con un **proveedor externo** cuya tecnología es una dependencia crítica para un Sistema de Trabajo.
* **Cuándo usarlo:** Antes de firmar un contrato o al evaluar a un proveedor para un ST de riesgo Medio o Alto.
* **Preguntas Guía del Checklist:**

| Categoría | Preguntas Clave a Responder |
| :--- | :--- |
| **1. Acuerdos de Nivel de Servicio (SLAs)** | • ¿Cuáles son los compromisos de disponibilidad, latencia y soporte que ofrece el proveedor?<br>• ¿Qué penalizaciones existen si no se cumplen los SLAs? |
| **2. Continuidad de Negocio y Resiliencia** | • ¿Cuál es el Objetivo de Tiempo de Recuperación (RTO) y el Objetivo de Punto de Recuperación (RPO) del proveedor en caso de desastre?<br>• ¿Está el proveedor dispuesto a participar en nuestros `Game Days` o ejercicios de simulación de fallos? |
| **3. Seguridad y Cumplimiento** | • ¿Qué certificaciones de seguridad posee (ej. ISO 27001)?<br>• ¿Nos proporcionará un SBOM (Software Bill of Materials) de su producto?<br>• ¿Cómo manejan los datos de nuestra organización? ¿Cumplen con la ley de protección de datos? |
| **4. Gestión de Cambios y Soporte** | • ¿Cómo y con cuánta antelación notifican los cambios en su servicio?<br>• ¿Cuál es el canal y el tiempo de respuesta para incidentes críticos? |

* **Conexión Teórica:** Este checklist formaliza la gestión de dependencias, un aspecto clave de la visión de **Organización como Organismo** que interactúa con su ecosistema externo.

### **2.3. El Registro de Decisiones de Arquitectura (ADR) Ligero**

En un entorno de flujo continuo, las decisiones se toman constantemente. Muchas son pequeñas y reversibles, pero algunas tienen un impacto duradero en la estructura, la resiliencia y la mantenibilidad de un Sistema de Trabajo. Tradicionalmente, la justificación de estas decisiones importantes se pierde en correos electrónicos, documentos de diseño olvidados o, peor aún, únicamente en la memoria de los miembros del equipo que las tomaron. Cuando esas personas se van, el "porqué" detrás de la arquitectura se desvanece, dejando al equipo sucesor con miedo a cambiar cualquier cosa por no entender sus fundamentos.

El **Registro de Decisiones de Arquitectura (ADR, por sus siglas en inglés)** es la herramienta de ASTA-SIGMA Lite para combatir esta "amnesia arquitectónica". Es un artefacto simple, enfocado y diseñado para ser creado en minutos, no en días.

#### **2.3.1. Cuándo y por qué usar un ADR: Documentar lo Significativo**

El error más común al adoptar ADRs es intentar documentarlo todo. Esto transforma una herramienta ágil en una carga burocrática. La clave de la versión "Lite" es usar un ADR solo para documentar decisiones que son **arquitectónicamente significativas**.

Una decisión es "arquitectónicamente significativa" si afecta a:

* La **estructura** del sistema (ej. cómo se dividen los componentes).
* Las **características no funcionales** (ej. rendimiento, seguridad, fiabilidad).
* Las **dependencias** entre componentes o con sistemas externos.
* Las **interfaces** que el sistema expone.
* Los **estándares o tecnologías** que el equipo se compromete a usar.

**Heurísticas para crear un ADR:**

* **¿La decisión tiene un impacto a largo plazo y es costosa de revertir?** → Crea un ADR.
* **¿Hubo un debate significativo con múltiples opciones viables?** → Crea un ADR para registrar por qué se eligió una sobre las otras.
* **¿La decisión introduce una nueva tecnología o patrón en el equipo?** → Crea un ADR para formalizar su adopción.
* **¿La decisión afectará a otros equipos que consumen tu servicio?** → Crea un ADR para comunicar el cambio y su justificación.

El propósito de un ADR no es solicitar permiso. En un modelo de equipos autónomos, la decisión ya ha sido tomada por el equipo. El propósito es crear un **registro inmutable y contextualizado** que sirva para:

* **Alinear al equipo actual:** Formaliza lo que se acordó y por qué.
* **Acelerar el onboarding de futuros miembros:** Un nuevo integrante puede leer la secuencia de ADRs para entender la historia evolutiva del sistema.
* **Informar a otros equipos:** Proporciona transparencia sobre las decisiones técnicas que pueden afectar a los sistemas con los que interactúan.
* **Evitar re-litigar el pasado:** Si surge la misma pregunta en seis meses, el ADR explica por qué se tomó la decisión original, permitiendo un debate más informado sobre si el contexto ha cambiado lo suficiente como para reconsiderarla.

#### **2.3.2. La plantilla ADR Lite: Contexto, Decisión, Consecuencias**

La belleza del ADR Lite reside en su simplicidad. Consta de tres secciones que fuerzan la claridad y la honestidad intelectual.

**1. Contexto**

* **Propósito:** Contar la historia. Esta sección describe el problema, la necesidad o la oportunidad que desencadenó la necesidad de una decisión. Debe explicar las fuerzas en juego, las restricciones y las alternativas que se consideraron.
* **Preguntas Guía:**
  * ¿Cuál es el problema de negocio o técnico que estamos intentando resolver?
  * ¿Cuáles eran las principales opciones que evaluamos? (ej. Opción A, Opción B, Opción C).
  * ¿Cuáles son las restricciones (técnicas, presupuestarias, de tiempo) que influyeron en la decisión?

**2. Decisión**

* **Propósito:** Declarar de forma clara, concisa e inequívoca la decisión que se tomó. Esta es la parte más corta pero más importante del documento.
* **Preguntas Guía:**
  * ¿Qué decidimos hacer?
  * La declaración debe ser activa y directa. Por ejemplo: *"Adoptaremos el protocolo X para todas las comunicaciones asíncronas entre servicios."*

**3. Consecuencias**

* **Propósito:** Esta es la sección que distingue a un buen arquitecto. Aquí se articulan los **trade-offs**. Ninguna decisión de arquitectura es perfecta; siempre hay beneficios y costos. Ser explícito sobre las consecuencias demuestra madurez y ayuda a gestionar las expectativas futuras.
* **Preguntas Guía:**
  * ¿Cuáles son los **beneficios** que esperamos de esta decisión? (ej. mayor rendimiento, menor acoplamiento, desarrollo más rápido).
  * ¿Cuáles son los **costos, riesgos o consecuencias negativas** que estamos aceptando? (ej. mayor complejidad operativa, dependencia de un proveedor, una curva de aprendizaje para el equipo).
  * Se recomienda dividir esta sección explícitamente en **"Positivas"** y **"Negativas / Compromisos"** para forzar un análisis equilibrado.

Al mantener los ADRs enfocados en estos tres puntos, los equipos pueden capturar la esencia de su evolución arquitectónica de una manera que es rápida de escribir, fácil de leer y enormemente valiosa para el futuro del Sistema de Trabajo.

### **2.4. El Backlog Ágil: De la Estrategia a la Tarea**

Hemos definido el propósito de un Sistema de Trabajo (ST) con el Canvas y hemos establecido sus fronteras con los Contratos Conversacionales. Ahora, necesitamos un mecanismo para traducir esa visión estratégica en trabajo tangible y priorizado para el Equipo de Flujo de Valor (EFV). Este mecanismo es el **Backlog Ágil**.

En el modelo `#NoProjects`, el backlog no es una lista finita de requisitos que se "quema" hasta llegar a cero. Es un **organismo vivo**: un repositorio dinámico de oportunidades de valor, necesidades de los usuarios, obligaciones técnicas y aprendizajes del equipo. Su gestión no es un acto administrativo, sino una de las actividades estratégicas más importantes del equipo.

#### **2.4.1. Historias de Usuario: El Átomo del Valor**

Para poblar el backlog, ASTA-SIGMA Lite adopta la **Historia de Usuario** como la unidad fundamental de trabajo. Abandonamos los extensos documentos de requisitos en favor de un formato simple y conversacional que mantiene el foco en el humano.

La estructura clásica de una Historia de Usuario es:

> **Como** \<un tipo de usuario\>, **quiero** \<realizar una acción\> **para que** \<pueda obtener un beneficio\>.

La adopción de este formato no es una elección estilística, sino una decisión filosófica con implicaciones profundas:

* **Fomenta la Conversación sobre la Especificación:** Una historia de usuario no es una especificación detallada; es, como se dice en la comunidad ágil, una **"promesa de una conversación"**. Su propósito es invitar al diálogo entre el dueño del producto, los diseñadores y los desarrolladores para co-crear la mejor solución. Sustituye la barrera de los documentos formales por la colaboración directa.

* **Centrada en el Usuario y el Valor:** La estructura `Como... quiero... para que...` nos obliga a articular tres cosas cruciales en cada pieza de trabajo:

  * **¿Para QUIÉN es esto?** (El usuario)
  * **¿QUÉ necesita?** (La funcionalidad)
  * **¿POR QUÉ lo necesita?** (El valor/beneficio)
        La cláusula "para que" es la más importante, ya que conecta directamente la tarea con el propósito.

* **Conecta la Tarea con la Estrategia (OKRs):** Aquí es donde el Backlog Ágil se une con el Alineamiento Estratégico Radical. El beneficio en la cláusula "para que" de una historia de usuario **debe, idealmente, ser un eco de un Resultado Clave (KR)**.

  * **OKR del Equipo:**
    * **O:** Transformar la obtención de permisos de edificación en una experiencia ciudadana excepcional.
    * **KR:** Reducir el tiempo promedio de aprobación de 45 a 15 días.
  * **Historia de Usuario Alineada:**
    * **Como** un analista de expedientes, **quiero** que el sistema valide automáticamente los documentos de identidad **para que** pueda reducir el tiempo de revisión manual y acelerar la aprobación.

    Esta conexión directa asegura que cada tarea en el backlog tiene una justificación estratégica clara.

#### **2.4.2. Mapeo de Historias (Story Mapping): Visualizando el Viaje Completo**

Un backlog puede convertirse rápidamente en una lista larga y plana que hace perder la visión de conjunto. Para evitar esto, ASTA-SIGMA Lite utiliza la técnica del **Mapeo de Historias (Story Mapping)** como la principal herramienta para organizar y visualizar el backlog.

Un Story Map es una técnica colaborativa que organiza las historias de usuario en un modelo bidimensional que representa el viaje del usuario a través del servicio.

* **El Eje Horizontal (La "Narrativa"):** En la parte superior del mapa, se colocan las "actividades" o "pasos" principales que un usuario realiza para completar su objetivo. Estas actividades se ordenan cronológicamente de izquierda a derecha, contando la historia del viaje del usuario. *Ejemplo: `Buscar información` → `Completar formulario` → `Subir documentos` → `Realizar pago` → `Recibir confirmación`.*

* **El Eje Vertical (La "Profundidad"):** Debajo de cada actividad principal, se colocan las historias de usuario específicas que permiten realizar esa actividad. Estas historias se priorizan verticalmente: las más importantes y esenciales van arriba, y las menos críticas o mejoras van abajo.

El Mapeo de Historias es fundamental en el marco Lite por tres razones:

1. **Proporciona Contexto y Visión de Conjunto:** A diferencia de una lista plana, el mapa muestra cómo cada historia individual contribuye a una parte específica del viaje del usuario y al objetivo general. Ayuda al equipo a "ver el bosque completo, no solo los árboles individuales".

2. **Facilita el "Rebanado" (Slicing) para Entregas Incrementales:** Una vez que el viaje completo está mapeado, el equipo puede trazar una línea horizontal a través del mapa para definir una "rebanada" de valor. La primera rebanada, a menudo llamada el "esqueleto andante" (*walking skeleton*), representa el conjunto mínimo de historias necesarias para que un usuario pueda completar el viaje de principio a fin, aunque sea de forma muy básica. Esto se convierte en la base para el primer lanzamiento o MVP. Las siguientes rebanadas horizontales representan incrementos de valor sucesivos.

3. **Es una Herramienta de Colaboración, no de Documentación:** Al igual que el Canvas del ST, el Story Map es un artefacto diseñado para ser creado en un taller por todo el equipo (dueño de producto, UX, desarrolladores). Esta sesión de mapeo colaborativo es una de las formas más efectivas de construir un entendimiento compartido profundo sobre el producto que se está construyendo.

En la práctica, el Mapeo de Historias es el puente perfecto entre el **Canvas del ST** y el **Tablero Xanpan**. El "Flujo de Valor" del Canvas inspira la narrativa horizontal del mapa, y las historias de usuario de la primera "rebanada" del mapa son las que se mueven al tablero para ser implementadas por el equipo.

## **PARTE 3: EL MODELO OPERATIVO LITE — EL RITMO DE LA TRANSFORMACIÓN**

Un marco de arquitectura no es solo una colección de artefactos y principios; es un **sistema operativo** para la organización. Define cómo fluye el trabajo, cómo se toman las decisiones y cómo se sincronizan los esfuerzos de los equipos para lograr un propósito común. El modelo operativo de ASTA-SIGMA Lite está diseñado para ser a la vez ágil en la ejecución y riguroso en la estrategia, resolviendo la tensión histórica entre la autonomía del equipo y el alineamiento organizacional.

### **3.1. Visión General: El Ciclo de Doble Bucle**

El motor de ASTA-SIGMA Lite es un **ciclo de doble bucle**, un concepto que integra dos cadencias de trabajo distintas pero interconectadas: una táctica y una estratégica. Este modelo permite a los equipos operar con alta velocidad en el corto plazo, mientras que la organización en su conjunto mantiene una dirección coherente en el largo plazo.

* **El Bucle Táctico (Semanal):** Este es el "motor" del equipo. Es el ciclo de ejecución rápida donde se construyen, prueban y entregan incrementos de valor. Su foco es la **eficiencia y la calidad de la entrega**. Opera en una cadencia de semanas.

* **El Bucle Estratégico (Trimestral):** Este es el "timón" de la organización. Es el ciclo de gobernanza y reflexión donde se evalúa el valor generado, se revisa el progreso hacia los objetivos estratégicos (OKRs) y se toman decisiones de inversión. Su foco es la **eficacia y el alineamiento estratégico**. Opera en una cadencia de trimestres.

Visualmente, el bucle táctico gira rápidamente, impulsando al equipo hacia adelante, mientras que el bucle estratégico, más lento, ajusta periódicamente la dirección del viaje. Uno sin el otro es ineficaz: el bucle táctico sin el estratégico conduce a un "vagabundeo eficiente" (hacer muy bien las cosas equivocadas), y el bucle estratégico sin el táctico conduce a la "parálisis por análisis" (planes perfectos que nunca se ejecutan).

A continuación, detallaremos cada uno de estos bucles.

### **3.2. El Bucle Táctico: El Ritmo del Equipo (Metodología Xanpan)**

El bucle táctico es donde los Equipos de Flujo de Valor (EFV) transforman las ideas del Backlog Ágil en valor tangible para los usuarios. Para gestionar este flujo de trabajo, ASTA-SIGMA Lite adopta **Xanpan**, una metodología híbrida y ligera que combina la disciplina de Extreme Programming (XP) con la simplicidad visual de Kanban. Xanpan es una filosofía, no un conjunto rígido de reglas; es "un método derivado, un método híbrido, un ejemplo de un método que cualquiera podría crear".

#### **3.2.1. Principios de Xanpan**

Xanpan se basa en un conjunto de principios simples diseñados para maximizar el flujo de valor y la calidad sostenible:

1. **Visualizar el Trabajo:** Todo el trabajo del equipo, desde las ideas hasta la entrega, se visualiza en un tablero compartido. Esto crea una transparencia radical sobre lo que se está haciendo, quién lo está haciendo y dónde están los cuellos de botella.
2. **Limitar el Trabajo en Progreso (WIP):** Este es el principio más contraintuitivo y poderoso. El equipo establece límites explícitos sobre cuántas tareas pueden estar "en progreso" simultáneamente. Limitar el WIP reduce el cambio de contexto, mejora el enfoque, acelera el tiempo de entrega y saca a la luz los problemas del sistema en lugar de ocultarlos bajo una pila de trabajo a medio hacer.
3. **Gestionar el Flujo:** El objetivo no es mantener a las personas "ocupadas", sino mover el trabajo a través del sistema de la manera más fluida y rápida posible. El equipo se enfoca en "terminar cosas" en lugar de "empezar cosas".
4. **Hacer las Políticas del Proceso Explícitas:** Las reglas del juego (ej. la "Definición de Hecho", los límites de WIP, cómo se prioriza) se acuerdan y se hacen visibles para todos.
5. **Mejora Continua y Colaborativa:** El equipo revisa y adapta su propio proceso de forma regular a través de retrospectivas, siendo dueño de su forma de trabajar.

#### **3.2.2. El Tablero Xanpan Lite**

La herramienta central del bucle táctico es el tablero. En su versión "Lite", el tablero Xanpan puede ser tan simple como una pared con post-its o un tablero digital básico. No requiere software complejo. Una estructura inicial recomendada es:

| **Opciones (Backlog)** | **Próximo (Comprometido)** | **En Progreso (WIP: 3)** | **Hecho (Entregado)** |
| :--- | :--- | :--- | :--- |
| *Aquí viven las Historias de Usuario priorizadas del Story Map. Es el "menú" de lo que se podría hacer.* | *Al inicio de la iteración, el equipo "jala" las historias en las que se compromete a trabajar. Esta es la cola de entrada.* | *Aquí es donde ocurre el trabajo activo. El número (ej. 3) es el límite de WIP: no puede haber más de 3 historias en esta columna a la vez.* | *Aquí se mueven las historias que han sido completadas, probadas y entregadas a los usuarios. Es la columna del valor realizado.* |

#### **3.2.3. Las ceremonias ágiles mínimas**

Xanpan evita la sobrecarga de reuniones. El ritmo del equipo se mantiene con tres ceremonias esenciales:

1. **Planificación de la Iteración (al inicio de cada ciclo, ej. semanal):** El equipo se reúne frente al Story Map y el tablero. jalan las historias de mayor prioridad de la siguiente "rebanada" del mapa a la columna "Próximo" de su tablero, hasta llenar su capacidad para la iteración. Es una conversación de compromiso.
2. **Reunión Diaria (diaria, 15 minutos):** No es un reporte de estado para un jefe. Es una reunión de sincronización para el equipo. Se paran frente al tablero y se enfocan en el flujo: ¿Qué podemos hacer hoy para mover las tarjetas de la derecha? ¿Hay algo bloqueado? ¿Alguien necesita ayuda?
3. **Retrospectiva (al final de cada ciclo):** El equipo reflexiona sobre su proceso: ¿Qué funcionó bien? ¿Qué podríamos mejorar? ¿Qué experimento probaremos en la próxima iteración? Esta es la ceremonia que impulsa la mejora continua.

### **3.3. El Bucle Estratégico: La Revisión de Valor y Capacidad (RVC)**

Si el bucle táctico es el motor, el bucle estratégico es el timón. La **Revisión de Valor y Capacidad (RVC)** es la ceremonia trimestral que conecta el trabajo del EFV con la estrategia de la organización.

#### **3.3.1. Propósito: Una conversación de inversión estratégica, no un reporte de estado.**

La RVC no es una reunión para mostrar "luces verdes" en un Gantt. Es una conversación de alto nivel entre el equipo y la gobernanza (líderes de la transformación, directivos, otros dueños de producto). Su propósito, inspirado en el modelo de gobierno continuo de Allan Kelly, es triple:

1. **Rendir Cuentas sobre el Valor Entregado:** El equipo demuestra, con datos y software funcionando, el impacto que ha generado en el último trimestre.
2. **Revisar el Alineamiento Estratégico:** Se evalúa si el trabajo realizado ha movido la aguja en los OKRs estratégicos y si los objetivos siguen siendo los correctos.
3. **Tomar Decisiones de Inversión:** Basado en la evidencia presentada, la gobernanza decide cómo asignar los recursos (personas y presupuesto) para el próximo trimestre.

#### **3.3.2. La agenda de la RVC Lite**

Una RVC efectiva es una conversación estructurada y basada en evidencia. La agenda se centra en responder cuatro preguntas clave, utilizando el `Informe de Portafolio RVC` como guía:

1. **¿Qué progreso hicimos hacia nuestros OKRs? (20 min):**
    * El equipo presenta sus OKRs del trimestre y muestra los datos que miden su progreso. La conversación se centra en los **Resultados Clave (KRs)**: ¿logramos mover las métricas que nos propusimos? ¿Qué aprendimos en el proceso?

2. **¿Qué valor entregamos? (Demostración) (15 min):**
    * **"Mostrar, no contar".** El equipo realiza una demostración en vivo del software o del servicio, mostrando las nuevas capacidades entregadas a los usuarios durante el trimestre.

3. **¿Cuál es la salud de nuestro Sistema de Trabajo y de nuestro Equipo? (10 min):**
    * **Salud del ST:** Se revisan los SLOs clave (disponibilidad, rendimiento). ¿Estamos cumpliendo nuestros compromisos de fiabilidad? ¿Cuántos incidentes tuvimos?
    * **Salud del Equipo:** ¿Cuál es nuestro nivel de madurez actual según la guía? ¿Qué hemos hecho para mejorar como equipo?

4. **¿Cuál es nuestra próxima apuesta de valor? (15 min):**
    * El equipo presenta sus OKRs propuestos para el próximo trimestre, explicando por qué creen que es la siguiente oportunidad de mayor valor para la organización.

#### **3.3.3. Las cuatro decisiones de inversión**

La RVC culmina con una decisión explícita de inversión por parte de la gobernanza. Inspirado en el modelo de Venture Capital, hay cuatro opciones posibles para el Equipo de Flujo de Valor para el próximo trimestre:

1. **🚀 Continuar / Pivotar:** La inversión en el equipo se mantiene. Se le da luz verde para perseguir los OKRs propuestos, o se le pide que "pivote" y ajuste sus objetivos basándose en los aprendizajes del trimestre. Es la decisión por defecto para un equipo saludable.
2. **💰 Expandir:** El equipo ha demostrado un retorno de valor excepcional y ha identificado una oportunidad estratégica mayor. La gobernanza decide aumentar la inversión, asignando más personas o presupuesto al equipo.
3. **📉 Reducir:** El valor generado por el ST está disminuyendo o ha alcanzado un punto de rendimientos decrecientes. La gobernanza decide reducir la inversión, quizás moviendo a algunos miembros del equipo a otras iniciativas de mayor prioridad.
4. **🛑 Cerrar:** El ST ya no está alineado con la estrategia, su tecnología es obsoleta o el valor que genera es mínimo. La gobernanza toma la difícil pero necesaria decisión de descontinuar el sistema y reasignar al equipo completo a un nuevo desafío.

Este ciclo de doble bucle asegura que la organización sea a la vez **ágil y dirigida**, capaz de moverse rápidamente en el día a día mientras mantiene un rumbo estratégico claro a largo plazo.

## **PARTE 4: EL PROCESO DE ARQUITECTURA PRÁCTICA — LA GUÍA DEL DÍA A DÍA**

El marco ASTA-SIGMA Lite no es solo un conjunto de ideas, es un proceso. Esta parte del manual te guiará a través de las fases de una iniciativa de transformación, desde el alineamiento estratégico inicial hasta la operación y mejora continua de un Sistema de Trabajo. Este no es un proceso lineal tipo "cascada"; es un ciclo que se repite, donde cada fase alimenta a la siguiente, encarnando la filosofía de la adaptabilidad continua.

### **4.1. Fase 0: Preparación y Alineamiento**

Toda iniciativa de transformación exitosa comienza mucho antes de que se escriba la primera línea de código o se dibuje el primer diagrama. La Fase 0 es el trabajo fundacional. Su objetivo no es producir una solución, sino crear las condiciones de **claridad, capacidad y consciencia** necesarias para que la iniciativa prospere. Como arquitecto, tu rol aquí es principalmente el de un facilitador estratégico.

#### **4.1.1. Entender el Contexto Estratégico: Taller de definición de OKRs anuales.**

* **Propósito:** Antes de construir cualquier cosa, debemos saber "hacia dónde vamos". El primer paso es traducir la visión de alto nivel de la institución en objetivos concretos y medibles. El taller de OKRs es la ceremonia donde el liderazgo define lo que significa "ganar" para el próximo ciclo estratégico (generalmente un año).

* **Participantes:** El equipo directivo de la institución, líderes de las divisiones clave y los Dueños de Producto de los principales flujos de valor. El arquitecto actúa como facilitador del proceso.

* **Proceso:** Este no es un ejercicio de planificación detallada, sino una conversación estratégica enfocada en el impacto. La meta es definir de 3 a 5 **Objetivos** ambiciosos y para cada uno, de 3 a 5 **Resultados Clave** medibles.
    1. **Revisión de la Estrategia:** Se revisa la misión institucional y los planes estratégicos (ej. Estrategia de Gobierno Digital 2030, Plan de Desarrollo Regional).
    2. **Brainstorming de Objetivos:** ¿Cuáles son las 3-5 cosas más importantes que debemos lograr este año para avanzar en nuestra misión? Los Objetivos deben ser inspiradores y cualitativos.
    3. **Definición de Resultados Clave:** Para cada Objetivo, ¿cuáles son las métricas que nos dirán, sin ambigüedad, si hemos tenido éxito? Los KRs deben ser cuantitativos, basados en resultados (outcomes) y no en tareas (outputs).

* **Resultado:** Un conjunto claro y público de OKRs anuales para la organización (ej. el archivo `okrs_anuales.yaml`). Este artefacto se convierte en la "Estrella Polar" que guiará todas las decisiones de priorización y diseño durante el año.

#### **4.1.2. Conformar el Equipo de Flujo de Valor (EFV): Roles mínimos y deseables.**

* **Propósito:** Con los objetivos estratégicos definidos (el "qué"), el siguiente paso es conformar el equipo que los llevará a cabo (el "quién"). Un EFV no es un "pool de recursos" asignado a un proyecto, sino un equipo estable, multifuncional y duradero, dueño de un Sistema de Trabajo.

* **Proceso: Empezar con un Equipo Mínimo Viable (MVT):** Una nueva iniciativa no comienza con un equipo grande. Comienza con un **Equipo Mínimo Viable (MVT)** de 2 a 3 personas, cuya misión es explorar el problema, validar hipótesis y "fallar rápido, fallar barato, aprender y rescatar". Este núcleo inicial es el que justificará, con evidencia, la necesidad de crecer.

* **La Composición de un EFV Maduro:** A medida que la iniciativa demuestra valor, el MVT evoluciona hacia un EFV completo. La composición ideal es multifuncional para minimizar las dependencias externas.

  * **Roles Mínimos (El Trío Esencial):**
        1. **Dueño de Producto (Product Owner):** Es la voz del ciudadano y de la estrategia. Define la visión del ST, gestiona el backlog y prioriza el trabajo basándose en el impacto en los OKRs. No es un jefe, es un guía.
        2. **Líder Técnico (Tech Lead):** Es el custodio de la calidad y la coherencia técnica del ST. Guía al equipo en las decisiones de arquitectura, asegura las buenas prácticas de ingeniería y es responsable de la salud a largo plazo del activo digital.
        3. **Equipo de Entrega (Delivery Team):** Son los constructores. Un grupo de desarrolladores, ingenieros y otros especialistas que diseñan, codifican, prueban y operan el sistema.

  * **Roles Deseables (Para Equipos de Alta Madurez):**
    * **Diseñador de Experiencia (UX Designer):** Un especialista dedicado a la investigación de usuarios, el diseño de interacción y la usabilidad, asegurando que el principio de "Humanidad en el Centro" se cumpla.
    * **Especialista en Calidad (QA):** Un rol enfocado en construir la calidad desde el inicio, automatizando pruebas y promoviendo una cultura de cero defectos.
    * **Analista de Datos:** Un especialista que ayuda al equipo a instrumentar y analizar las métricas de los KRs y SLOs, transformando los datos de operación en aprendizaje.

#### **4.1.3. Taller de Autoevaluación de Madurez del Equipo.**

* **Propósito:** Una vez conformado, el nuevo EFV necesita un punto de partida honesto. Este taller es una ceremonia interna, facilitada por el arquitecto, donde el equipo crea una conciencia compartida sobre sus capacidades actuales e identifica sus principales oportunidades de crecimiento.

* **Proceso:** El equipo se reúne y utiliza como guía el `GM-001_Guia_Madurez_Equipos_de_Flujo.md`. En una conversación abierta y segura, se autoevalúan en las cuatro dimensiones clave:
    1. **Propiedad y Autonomía:** ¿Cuán empoderados estamos para tomar decisiones?
    2. **Flujo de Trabajo:** ¿Cuán eficientemente entregamos valor?
    3. **Enfoque en el Valor:** ¿Medimos el éxito por tareas completadas o por impacto real?
    4. **Capacidades Técnicas:** ¿Cuán robustas son nuestras prácticas de ingeniería?

* **Resultado:** El resultado no es una puntuación, sino una **conversación y un plan de mejora**. El equipo identifica su nivel de madurez (1, 2 o 3) y, lo más importante, acuerda **1 o 2 prácticas concretas** en las que se enfocarán para mejorar durante el próximo trimestre. Por ejemplo: *"Somos Nivel 1 en Capacidades Técnicas. Nuestro objetivo para este trimestre es implementar un pipeline de CI básico para movernos hacia el Nivel 2"*.

Al completar la Fase 0, la iniciativa ya está preparada para el éxito. Tenemos una **dirección estratégica clara (OKRs)**, un **equipo dueño y capaz (EFV)**, y una **conciencia de sus propias fortalezas y debilidades (Autoevaluación de Madurez)**. Ahora, y solo ahora, estamos listos para empezar a diseñar la solución.

### **4.2. Fase 1: Enmarcar el Sistema de Trabajo (ST)**

Con los objetivos estratégicos (OKRs) claros y un Equipo de Flujo de Valor (EFV) conformado y consciente de sus capacidades, la Fase 1 se enfoca en responder una pregunta fundamental: **¿Qué vamos a construir exactamente y por qué?** Esta no es una fase de análisis exhaustivo, sino un ciclo rápido de descubrimiento y definición colaborativa, diseñado para crear un entendimiento compartido profundo antes de iniciar la construcción.

El objetivo de esta fase es triple:

1. **Definir el Sistema:** Lograr una visión holística y compartida del Sistema de Trabajo (ST).
2. **Alcance del Primer Incremento:** Definir el Mínimo Producto Viable (MVP) o el primer "esqueleto andante" que entregue valor real.
3. **Establecer las Fronteras:** Hacer explícitos los acuerdos de interacción con otros sistemas y equipos.

Esto se logra a través de tres talleres prácticos y altamente interactivos.

#### **4.2.1. Taller colaborativo de llenado del Canvas ST**

* **Propósito:** Este no es un ejercicio de documentación, es una sesión de **co-creación**. El objetivo es que todo el EFV, junto con stakeholders clave, construya colectivamente el mapa del Sistema de Trabajo. Es la primera y más importante conversación para asegurar que todos "vean" el mismo sistema.

* **Participantes:**
  * **Obligatorios:** Todo el Equipo de Flujo de Valor (Dueño de Producto, Líder Técnico, Equipo de Entrega).
  * **Recomendados:** Un representante de los usuarios finales y un representante de un sistema dependiente clave.
  * **Tu Rol (Arquitecto):** Facilitador. Tu trabajo es hacer las preguntas difíciles, asegurar que se cubran los 9 cuadrantes y capturar visualmente la conversación.

* **Proceso del Taller (Duración sugerida: 3-4 horas):**
    1. **Preparación (15 min):** Dibuja el Canvas del ST en una pizarra grande o en un tablero digital. Explica brevemente el propósito de cada una de las 9 secciones.
    2. **Comenzar por el Propósito (30 min):** Rellena colaborativamente la sección 1: "Propósito y Valor Público". Asegúrate de que el propósito esté explícitamente vinculado a un OKR estratégico de la organización. Si no se puede trazar esta línea, es una señal de alerta temprana.
    3. **Mapear los Actores y el Flujo (60 min):** Continúa con las secciones 2 ("Actores y Experiencia") y 3 ("Flujo de Valor"). Pide al equipo que use post-its para identificar a cada actor y cada paso macro del proceso. Esta es una excelente oportunidad para que el Diseñador UX comparta los primeros "insights" sobre los dolores de los usuarios.
    4. **Definir Entradas y Salidas (60 min):** Rellena las secciones 4 ("Capacidades y Servicios"), 5 ("Datos Clave") y 7 ("Dependencias"). Esta parte es crucial para entender las "fronteras" del sistema. ¿Qué servicios consumimos? ¿Qué APIs expondremos? ¿Qué datos necesitamos para vivir y cuáles producimos?
    5. **Establecer los Cimientos y Reglas (45 min):** Finaliza con las secciones 6 ("Tecnología y Plataformas"), 8 ("Gobernanza y Riesgo") y 9 ("Métricas de Éxito"). Aquí se define el stack tecnológico inicial, se clasifica el riesgo del ST (usando la guía GM-002) y se establecen los SLOs y KPIs iniciales que medirán el éxito.

* **Resultado:** Al final del taller, no tendrás un documento perfecto, tendrás algo mejor: un **entendimiento compartido visible**. El Canvas, con sus post-its y dibujos, se convierte en la primera versión del "mapa del tesoro" del equipo. Fotografía el resultado y súbelo al repositorio del equipo como la `ficha_st_v0.1.md`.

#### **4.2.2. Taller de Mapeo de Historias para el MVP**

* **Propósito:** El Canvas nos da la visión completa. Ahora necesitamos definir el primer paso, la primera "rebanada" de valor que podemos entregar rápidamente para aprender del mercado. El Taller de Mapeo de Historias es la técnica para pasar de la visión holística a un backlog accionable para el primer incremento (MVP).

* **Participantes:** El Equipo de Flujo de Valor completo.

* **Proceso del Taller (Duración sugerida: 4 horas):**
    1. **Construir la Narrativa (Eje Horizontal) (60 min):** Toma los pasos del "Flujo de Valor" del Canvas ST. Escríbelos en post-its grandes y pégalos en la parte superior de una pared, de izquierda a derecha. Esta es la "columna vertebral" del viaje del usuario.
    2. **Detallar las Tareas (Brainstorming Vertical) (90 min):** Debajo de cada paso de la narrativa, el equipo realiza una lluvia de ideas de todas las "Historias de Usuario" necesarias para completar ese paso. Se escriben en post-its de otro color y se pegan verticalmente. No se prioriza todavía, solo se genera el universo de posibilidades.
    3. **Ordenar y Priorizar Verticalmente (30 min):** Ahora, dentro de cada columna, el equipo ordena las historias de arriba hacia abajo. Las historias en la parte superior son las más esenciales, las que son absolutamente necesarias para que el paso funcione. Las de abajo son mejoras o casos de uso menos frecuentes.
    4. **Definir la Primera Rebanada (MVP) (60 min):** Esta es la parte crucial. El Dueño de Producto, en conversación con el equipo, traza una línea horizontal a través del mapa. Todas las historias **por encima de la línea** constituyen el MVP. El objetivo es crear la "rebanada" más delgada posible que permita a un usuario completar el viaje de principio a fin, entregando valor real. Este conjunto de historias se convierte en el backlog inicial.

* **Resultado:** Un **Story Map visual** que muestra el panorama completo del producto y define claramente el alcance del primer lanzamiento. Las historias de la primera "rebanada" se documentan formalmente y se convierten en el backlog inicial del equipo en su tablero Xanpan.

#### **4.2.3. Definición de los primeros "Contratos Conversacionales"**

* **Propósito:** Durante el llenado del Canvas y el Mapeo de Historias, inevitablemente surgirán las dependencias e interacciones identificadas en las secciones de "Capacidades y Servicios", "Datos Clave" y "Dependencias". El último paso de la Fase de Enmarcado es formalizar estos puntos de contacto.

* **Participantes:** El arquitecto facilita reuniones específicas entre el EFV y los equipos dueños de los sistemas con los que necesitan interactuar.

* **Proceso (Sesiones de 1 hora por contrato):**
    1. **Identificar los Contratos Críticos para el MVP:** No es necesario definir todos los contratos al inicio. ¿Cuáles son las 2 o 3 interacciones (con APIs, proveedores de datos, etc.) sin las cuales nuestro MVP no puede funcionar?
    2. **Convocar la Conversación:** Reúne a los representantes técnicos y de producto de ambos equipos.
    3. **Usar el Checklist como Guía:** Utiliza el **Checklist del Contrato** correspondiente (de Datos, de Servicio, etc.) de la Parte 2 como agenda para la conversación. Tu rol como arquitecto es asegurar que se respondan todas las preguntas clave: ¿Qué nos comprometemos a entregar? ¿Con qué nivel de fiabilidad (SLOs)? ¿Cómo manejaremos los cambios?
    4. **Documentar el Acuerdo:** El resultado de la conversación se documenta de forma simple (puede ser en una página de la wiki o un archivo Markdown en el repositorio). No necesita ser un documento legalista, sino un resumen claro de los puntos acordados.

* **Resultado:** Un conjunto de **acuerdos explícitos y compartidos** que definen las fronteras del Sistema de Trabajo. Esto reduce drásticamente el riesgo de problemas de integración en el futuro, ya que las expectativas se han alineado entre los equipos antes de que comience el desarrollo intensivo.

Al finalizar la Fase 1, el equipo no tiene un documento de requisitos de 200 páginas. Tiene algo mucho más valioso: **claridad y alineamiento**. Tiene un mapa visual de su sistema, un plan de acción para entregar el primer incremento de valor y un conjunto de acuerdos claros con sus socios. Ahora, y solo ahora, están listos para entrar en el ciclo de construcción.

### **4.3. Fase 2: Diseño y Construcción Iterativa**

Esta es la fase donde la estrategia se encuentra con la ejecución. Después de enmarcar el Sistema de Trabajo (ST) y definir el primer incremento de valor (MVP), el Equipo de Flujo de Valor (EFV) entra en un ritmo de entrega sostenible. El objetivo de esta fase no es "completar el proyecto", sino establecer un **flujo continuo de entrega de valor**, donde cada iteración mejora el ST, responde al feedback y acerca al equipo a sus OKRs.

#### **4.3.1. El ciclo de Xanpan en acción: Priorizar, construir, entregar.**

El trabajo diario del EFV se organiza mediante la metodología **Xanpan**, un sistema de flujo que prioriza el terminar tareas sobre el empezarlas. El ciclo es simple y se centra en el movimiento de las Historias de Usuario a través del tablero del equipo.

1. **Priorizar (Jalar el Trabajo):** El ciclo comienza con la ceremonia de **Planificación de la Iteración**. El equipo no tiene trabajo "asignado" o "empujado" por un jefe de proyecto. En cambio, el equipo, liderado por el Dueño de Producto, **"jala"** (pulls) las Historias de Usuario de mayor prioridad desde la columna "Próximo" hacia la columna "En Progreso" de su tablero, respetando siempre el límite de Trabajo en Progreso (WIP). Esta acción es un acto de **compromiso colectivo**. La priorización se basa en una pregunta clave: **"¿Qué historias nos acercarán más a nuestros Resultados Clave (KRs) este ciclo?"**.

2. **Construir (El Foco en la Calidad):** Durante la iteración, el equipo se enfoca en mover las historias "En Progreso" hacia la derecha. Esto implica todas las actividades de desarrollo: diseño de detalle, codificación, pruebas automatizadas, revisiones de código y pruebas de aceptación. El principio de **calidad integrada**, fundamental en Xanpan y XP, es no negociable. La calidad no es una "fase" al final, sino una práctica constante que asegura que el activo digital no decaiga y permanezca adaptable.

3. **Entregar (Definición de "Hecho"):** Una historia solo se mueve a la columna "Hecho" cuando cumple con la **"Definición de Hecho"** del equipo. En ASTA-SIGMA Lite, "Hecho" no significa "código terminado". Significa: **valor entregado**. La historia ha sido desplegada en producción, está disponible para los usuarios y, idealmente, está instrumentada para que podamos medir su impacto. El objetivo del equipo es maximizar la frecuencia con la que entregan valor real.

**Tu Rol como Arquitecto:** En este ciclo, no eres un aprobador de diseños. Eres un **mentor y un par técnico**. Participas en las conversaciones de diseño, ayudas al equipo a evaluar trade-offs, promueves patrones de arquitectura robustos (de la `arquitectura_de_referencia`) y actúas como un coach para mantener alta la calidad técnica.

#### **4.3.2. Documentación emergente: Crear ADRs cuando sea necesario.**

En un flujo ágil, la arquitectura no se define por completo al inicio; **emerge y evoluciona** con el aprendizaje del equipo. ASTA-SIGMA Lite abraza este principio a través de la **documentación emergente**. No buscamos crear documentación exhaustiva por si acaso, sino capturar el conocimiento arquitectónico clave justo en el momento en que se genera.

La herramienta principal para esto es el **Registro de Decisiones de Arquitectura (ADR) Ligero**.

* **El Disparador:** Durante la construcción, el equipo se enfrentará a una decisión arquitectónicamente significativa. Quizás deban elegir entre dos bases de datos, definir un nuevo patrón de comunicación o adoptar una nueva librería. Este es el momento de pausar.
* **La Conversación:** El equipo debate las opciones, evalúa las consecuencias de cada una y llega a una decisión.
* **El Registro:** Inmediatamente después de decidir, el equipo invierte 15-20 minutos en escribir un ADR, capturando el **Contexto, la Decisión y las Consecuencias**.

Este acto de "documentación justo a tiempo" transforma la documentación de una carga burocrática a una práctica de aprendizaje valiosa. El conjunto de ADRs se convierte en la biografía viva de la arquitectura del sistema, explicando no solo "qué" se construyó, sino "por qué" se construyó de esa manera.

**Tu Rol como Arquitecto:** Eres el **campeón de los ADRs**. Tu labor es ayudar al equipo a reconocer cuándo una conversación merece ser capturada en un ADR. Facilitas la discusión sobre las consecuencias y ayudas a redactar la decisión de forma clara y concisa. Eres el guardián de la memoria arquitectónica del equipo.

#### **4.3.3. Pruebas de usabilidad y feedback continuo.**

La entrega continua de software es solo la mitad del ciclo. La otra mitad, la más importante, es el **aprendizaje continuo**. Un sistema que se entrega pero no se mide es solo una suposición lanzada al vacío.

Esta fase integra un bucle de feedback constante para asegurar que lo que construimos no solo funciona, sino que es **útil, usable y valioso** para las personas.

* **El Mecanismo:** El feedback se recolecta a través de múltiples canales:
    1. **Pruebas de Usabilidad:** Regularmente (idealmente en cada iteración), el Diseñador UX o el equipo completo realizan sesiones con usuarios reales, observándolos interactuar con prototipos o con la última versión del software. El objetivo es identificar fricciones y oportunidades de mejora directamente de la fuente.
    2. **Métricas Cuantitativas:** El sistema debe estar instrumentado para medir el comportamiento del usuario. ¿Cuántas personas completan el flujo? ¿Dónde abandonan? ¿Cuánto tiempo tardan? Estos datos nos dan la visión cuantitativa del uso real.
    3. **Canales Directos:** El equipo debe mantener canales abiertos para que los usuarios puedan reportar problemas o sugerir ideas de forma sencilla (ej. un botón de "Enviar feedback").

* **El Cierre del Bucle:** Este es el paso crítico. El feedback recolectado **no se archiva en un reporte**. Se transforma en **nuevas Historias de Usuario** que entran en el backlog. Un problema de usabilidad detectado en una prueba se convierte en una tarea prioritaria para la siguiente iteración. Una sugerencia recurrente de los usuarios se convierte en una nueva "opción" a considerar en el Story Map.

Este flujo constante de **construir → medir → aprender** es el motor de la evolución del producto y la materialización del principio de **Humanidad en el Centro del Diseño**.

**Tu Rol como Arquitecto:** Aseguras que el sistema sea **observable por diseño**. Promueves la inclusión de telemetría y herramientas de analítica como requisitos no funcionales. Trabajas con el Dueño de Producto para ayudarle a interpretar los datos y a traducirlos en decisiones informadas para el backlog, garantizando que la arquitectura evolucione en respuesta a las necesidades reales de los usuarios y no solo a los requisitos técnicos.

### **4.4. Fase 3: Gobernanza y Mejora Continua**

El ciclo de Diseño y Construcción Iterativa es el motor que produce valor. Sin embargo, para que ese motor no gire sin rumbo, necesita un sistema de navegación y un piloto que ajuste la dirección. La Fase 3 es ese sistema de navegación. Es el bucle de feedback estratégico que asegura que el esfuerzo del equipo no solo sea eficiente, sino también **eficaz**.

Esta no es una fase de "control" en el sentido tradicional de la palabra, donde se verifica el cumplimiento de un plan. Es una fase de **aprendizaje y dirección**, donde la organización como un todo reflexiona sobre los resultados obtenidos y toma decisiones informadas sobre el futuro. Se materializa en la ceremonia de **Revisión de Valor y Capacidad (RVC)**.

#### **4.4.1. Preparación para la RVC: Recopilar métricas y preparar la narrativa de valor.**

* **Propósito:** El éxito de una RVC depende en un 90% de la preparación. Un equipo no llega a una RVC a "reportar el estado"; llega a **presentar un caso de inversión** basado en evidencia. El objetivo de esta preparación es construir ese caso, combinando datos cuantitativos con una narrativa cualitativa convincente.

* **El Proceso de Preparación (realizado por el EFV en la semana previa a la RVC):**

    1. **Recopilar las Métricas (La Evidencia Cuantitativa - Vista Δ):** El equipo reúne los datos duros que reflejan su desempeño durante el último trimestre. Esto se estructura en torno a tres áreas clave, utilizando la `plantilla de informe de portafolio RVC` como guía:
        * **Progreso de OKRs:** ¿Dónde estamos en relación a nuestros Resultados Clave? Se recopilan los datos de las métricas que miden el impacto y el resultado (outcome) del trabajo realizado.
        * **Salud del Sistema (SLOs):** ¿Cuál fue la disponibilidad real de nuestro servicio? ¿La latencia? ¿La tasa de error? ¿Cuánto de nuestro "presupuesto de error" consumimos? Estos datos demuestran la fiabilidad y calidad del activo digital.
        * **Métricas de Flujo del Equipo:** ¿Cuál fue nuestro tiempo de ciclo promedio (desde el compromiso hasta la entrega)? ¿Cuántas historias de usuario entregamos? Esto mide la capacidad y la predictibilidad del equipo.

    2. **Preparar la Narrativa de Valor (La Historia Cualitativa):** Los números por sí solos no cuentan toda la historia. El Dueño de Producto y el Líder Técnico deben construir una narrativa que dé contexto y significado a los datos:
        * **¿Qué aprendimos?** ¿Qué hipótesis validamos o invalidamos? ¿Qué nos sorprendió de cómo los usuarios interactuaron con lo que construimos?
        * **¿Cuál es la historia detrás de las métricas?** ¿Por qué ese KR está en verde? (Ej: "Descubrimos que simplificando el formulario en dos pasos, la tasa de éxito se disparó"). ¿Por qué ese SLO está en rojo? (Ej: "Tuvimos un incidente con un proveedor externo que consumió nuestro presupuesto de error, y este es nuestro plan de mitigación...").
        * **¿Cuál es nuestra recomendación?** Basado en todo lo anterior, el equipo formula una propuesta clara para el próximo trimestre: ¿En qué OKRs deberíamos enfocarnos ahora para maximizar el valor?

* **Tu Rol como Arquitecto:** Ayudas al equipo a recopilar y visualizar los datos de salud del sistema. Eres una voz crítica pero constructiva en la preparación de la narrativa, asegurando que la historia sea honesta, basada en evidencia y que considere la salud técnica a largo plazo del ST.

#### **4.4.2. Ejecución de la RVC y ajuste del rumbo.**

* **Propósito:** La RVC es el evento donde la estrategia se encuentra con la realidad. Es una **conversación estratégica cara a cara**, no una presentación pasiva. Su objetivo es que la gobernanza (directivos, líderes de transformación) tome una de las cuatro decisiones de inversión fundamentales, ajustando el rumbo de la organización en base a evidencia real.

* **La Agenda y el Espíritu de la Conversación:** La reunión sigue la agenda descrita en el Modelo Operativo, pero lo más importante es el tono. No es un juicio, es un diálogo de colaboración. Las preguntas de la gobernanza no deben ser "¿Por qué se retrasaron?", sino "¿Qué aprendieron de este retraso y cómo podemos ayudar?".

* **Las Cuatro Decisiones de Inversión:** Al final de la conversación, la gobernanza debe tomar una decisión explícita sobre el futuro del EFV y su ST para el próximo trimestre. Inspirado en el modelo de Venture Capital, las opciones son:

    1. **🚀 Continuar / Pivotar:** Esta es la decisión por defecto para un equipo que está aprendiendo y entregando valor. La inversión se mantiene. Se aprueban los OKRs propuestos para el siguiente trimestre, o se pide al equipo que "pivote" (ajuste su enfoque) basándose en los aprendizajes.
    2. **💰 Expandir:** El equipo ha demostrado un éxito excepcional y un alto retorno de valor, y ha identificado una oportunidad aún mayor. La gobernanza decide "doblar la apuesta", aumentando la inversión en el equipo (más personas, más presupuesto) para capturar esa oportunidad.
    3. **📉 Reducir:** El ST ha alcanzado un alto nivel de madurez, el mercado ha cambiado o su impacto estratégico ha disminuido. La gobernanza decide reducir la inversión, quizás moviendo a algunos miembros del equipo a otras iniciativas de mayor prioridad y dejando un núcleo para el mantenimiento.
    4. **🛑 Cerrar:** El ST ya no genera un valor que justifique su costo, es tecnológicamente obsoleto o ya no se alinea con la estrategia. La gobernanza toma la decisión de descontinuar el sistema de forma planificada y reasignar el talento del equipo a un nuevo desafío de mayor prioridad para la institución.

* **Tu Rol como Arquitecto:** Eres un participante activo en la RVC. Proporcionas contexto técnico a las decisiones, explicas las implicaciones de la deuda técnica, validas la viabilidad de las propuestas del equipo y ayudas a la gobernanza a entender los trade-offs de cada decisión de inversión.

#### **4.4.3. El ciclo vuelve a empezar: repriorización del backlog en base a la RVC.**

* **Propósito:** Este paso final es el que cierra el bucle estratégico y lo reconecta con el bucle táctico. La decisión tomada en la RVC no puede quedar en un acta; debe traducirse inmediatamente en un cambio en el trabajo diario del equipo.

* **El Proceso Post-RVC:**

    1. **Comunicación y Claridad:** Inmediatamente después de la RVC, el Dueño de Producto y el Líder Técnico comunican la decisión y la retroalimentación de la gobernanza a todo el EFV.
    2. **Ajuste del Backlog:** El equipo realiza un taller de **repriorización del backlog**. El Story Map se revisa a la luz de los nuevos OKRs trimestrales.
        * Si la decisión fue **"Continuar"**, se priorizan las historias que más aporten a los nuevos OKRs.
        * Si la decisión fue **"Pivotar"**, puede que sea necesario un nuevo Taller de Mapeo de Historias para redescubrir el MVP de la nueva dirección.
        * Si la decisión fue **"Reducir"**, el backlog se enfoca casi exclusivamente en mantenimiento y tareas de alta prioridad.
        * Si la decisión fue **"Cerrar"**, el backlog se convierte en un plan de desmantelamiento ordenado.
    3. **Inicio de la Siguiente Iteración:** Con un backlog realineado y una dirección estratégica clara y validada, el equipo está listo para iniciar su próxima iteración del ciclo Xanpan, jalando la primera historia de usuario que los acerca a su nuevo objetivo.

El ciclo se ha completado. El aprendizaje estratégico ha informado la ejecución táctica. La organización no solo está "haciendo cosas", sino que está **aprendiendo y adaptándose** de forma sistemática y continua. Este es el ritmo de la transformación en ASTA-SIGMA Lite.

## **PARTE 5: RECETAS Y HEURÍSTICAS DEL ARQUITECTO LIGERO**

Esta parte del manual es tu libro de jugadas tácticas. Mientras que las secciones anteriores establecieron el "qué" y el "porqué", aquí nos enfocamos en el "cómo" para escenarios específicos. Estas no son reglas inflexibles, sino "recetas": secuencias de pasos probadas que, como arquitecto, puedes adaptar a tu contexto para guiar a los equipos de manera efectiva.

### **5.1. Receta: Cómo iniciar una nueva iniciativa digital desde cero.**

**Escenario:** Un directivo o un líder de área tiene una idea para un nuevo servicio digital o una mejora significativa. La idea es prometedora, pero vaga. Hay energía, pero no hay claridad. El riesgo de lanzarse a un "proyecto" tradicional, con un gran presupuesto y un plan detallado basado en suposiciones, es altísimo.

**Tu Misión como Arquitecto:** Canalizar esa energía inicial en un proceso de descubrimiento y validación que transforme la idea en un **Sistema de Trabajo (ST)** viable, con un equipo dueño y una primera entrega de valor tangible, todo ello gestionando el riesgo y maximizando el aprendizaje.

---

**Paso 1: La Semilla — Enmarcar la Oportunidad Estratégica (Fase 0)**

*No empieces por la solución. Empieza por el "porqué".*

1. **Conectar con la Estrategia (Taller de OKRs):**
    * **Acción:** Convoca una reunión de 1 hora con el patrocinador de la idea y el Dueño de Producto potencial.
    * **Herramienta:** Revisa los OKRs anuales de la organización.
    * **Pregunta Clave:** ¿A cuál de nuestros Objetivos estratégicos contribuye esta idea? ¿Qué Resultado Clave (KR) organizacional podríamos mover con ella? Si la idea no se alinea claramente con un OKR existente, es una señal de alerta. El resultado debe ser una **hipótesis de valor** clara: "Creemos que construyendo [la iniciativa] lograremos mejorar [el KR específico]".

2. **Formar el Equipo Mínimo Viable (MVT):**
    * **Acción:** Basado en el principio de "empezar pequeño para aprender rápido", conforma un MVT de no más de 3 personas.
    * **Composición Ideal del MVT:**
        * Un **Dueño de Producto** (con visión de negocio y conexión con los usuarios).
        * Un **Líder Técnico** (con capacidad para explorar la viabilidad técnica y construir prototipos).
        * Un **Diseñador UX** (para liderar la investigación de usuarios).
    * **El Mandato del MVT:** Su misión no es "construir el proyecto". Es **validar la hipótesis de valor** en un plazo corto (ej. 4-6 semanas) y responder a la pregunta: ¿Vale la pena invertir más en esto?

3. **Realizar la Autoevaluación de Madurez:**
    * **Acción:** Facilita una sesión de 1 hora para que el nuevo MVT realice su autoevaluación inicial usando la `GM-001_Guia_Madurez_Equipos_de_Flujo.md`.
    * **Propósito:** No es para juzgar, sino para crear conciencia sobre sus capacidades actuales y establecer un punto de partida para su crecimiento como equipo.

**Resultado del Paso 1:** Tienes una hipótesis de valor alineada a la estrategia y un equipo pequeño y enfocado, consciente de sus capacidades, listo para explorar el problema.

---

**Paso 2: El Mapa — Definir el Sistema y el Primer Destino (Fase 1)**

*No escribas un documento de requisitos. Dibuja un mapa juntos.*

1. **Taller del Canvas del Sistema de Trabajo:**
    * **Acción:** Facilita el taller colaborativo de 3-4 horas para que el MVT y stakeholders clave llenen el Canvas del ST.
    * **Foco:** El objetivo es mapear el **estado actual ("As-Is")** para entender profundamente las fricciones y los actores involucrados. Luego, se esboza una primera versión del **estado futuro ("To-Be")**.
    * **Resultado Clave:** Un entendimiento compartido y visual del problema a resolver.

2. **Taller de Mapeo de Historias (Story Mapping):**
    * **Acción:** Inmediatamente después del Canvas, facilita el taller de Story Mapping.
    * **Propósito:** Traducir la visión del Canvas "To-Be" en un backlog visual y priorizado.
    * **El Momento Crítico - Definir el MVP:** Guía al Dueño de Producto y al equipo para que tracen la línea de la **primera "rebanada"**. La pregunta es: "¿Cuál es el conjunto más pequeño de funcionalidades que podemos construir para que un usuario complete el viaje de punta a punta y nos permita validar nuestra hipótesis de valor?". Este es el alcance del primer incremento.

3. **Identificar los Contratos Conversacionales Críticos:**
    * **Acción:** Revisa las dependencias identificadas en el Canvas que son necesarias para el MVP.
    * **Resultado:** Una lista corta de 1 a 3 "Contratos Conversacionales" que deben ser definidos antes de empezar a construir. Facilita estas conversaciones en la siguiente iteración.

**Resultado del Paso 2:** El equipo tiene un mapa claro del territorio (el Canvas ST), ha identificado el primer destino en ese mapa (el MVP definido en el Story Map) y conoce los puentes que necesita construir para llegar allí (los Contratos Conversacionales).

---

**Paso 3: El Viaje — Construir el Primer Incremento de Valor (Fase 2)**

*No te enfoques en la perfección. Enfócate en el aprendizaje a través de la entrega.*

1. **Establecer el Flujo de Xanpan:**
    * **Acción:** El equipo configura su tablero Xanpan (físico o digital) y establece sus límites de WIP iniciales. Las historias del MVP se mueven a la columna "Opciones".
    * **Ritmo:** El equipo comienza su ciclo de iteraciones (ej. semanales), jalando trabajo, construyendo y entregando.

2. **Construir para Aprender:**
    * **Foco:** El objetivo de este primer ciclo de construcción no es crear un producto pulido, sino un **"esqueleto andante" funcional** que pueda ser puesto en manos de usuarios reales lo antes posible.
    * **Prácticas Clave:** El equipo practica la **documentación emergente** (creando ADRs para decisiones clave) y realiza **pruebas de usabilidad** informales con prototipos o con las primeras versiones del software.

**Resultado del Paso 3:** Al final de su primer ciclo de exploración (ej. 4-6 semanas), el MVT tiene un **incremento de software funcionando** y, lo más importante, **feedback real de usuarios** y un entendimiento mucho más profundo de la viabilidad técnica y del valor de la iniciativa.

---

**Paso 4: El Punto de Control — La Primera Revisión de Valor y Capacidad (Fase 3)**

*No pidas permiso para continuar. Demuestra que mereces la inversión.*

1. **Preparar la Narrativa de Valor:**
    * **Acción:** El equipo prepara su presentación para la RVC. No se centran en "cuánto trabajo hicieron", sino en "qué aprendieron".
    * **Contenido Clave:**
        * **La Hipótesis de Valor Original:** Lo que creíamos al principio.
        * **La Demostración:** Muestran el software funcionando.
        * **Los Hallazgos:** ¿Qué nos dijo el feedback de los usuarios? ¿Qué descubrimos sobre la viabilidad técnica?
        * **La Recomendación:** Basado en la evidencia, ¿cuál es nuestra recomendación para la gobernanza? (Continuar, Pivotar o Cerrar).

2. **Ejecutar la RVC:**
    * **Propósito:** El equipo presenta su caso a la gobernanza. Esta no es una revisión de proyecto, es un **pitch de inversión**.
    * **Resultado:** La gobernanza toma una de las cuatro decisiones:
        * **Continuar/Expandir:** Si la evidencia es fuerte, se aprueba la siguiente fase de inversión y el MVT se gradúa para convertirse en un EFV completo, con más miembros para escalar la construcción.
        * **Pivotar:** Si se aprendió que el enfoque inicial era incorrecto, se aprueba un nuevo ciclo de descubrimiento en una dirección diferente.
        * **Cerrar:** Si se validó que la idea no tiene el valor esperado, se celebra el aprendizaje. "Fallar barato" es un éxito. El MVT se disuelve y su talento se reasigna a la siguiente oportunidad estratégica.

**Resultado del Paso 4:** La organización ha tomado una decisión de inversión informada y basada en evidencia, no en suposiciones. Si la iniciativa continúa, ahora tiene un mandato claro y un equipo listo para entrar en el ciclo continuo de entrega y mejora.

Al seguir esta receta, has transformado una idea ambigua en una iniciativa digital viva, con un equipo empoderado, un backlog priorizado por valor y un modelo operativo diseñado para la adaptación y el aprendizaje continuo. Has iniciado el viaje de la transformación, no como un proyecto, sino como un flujo de valor sostenible.

### **5.2. Receta: Cómo modernizar un sistema legacy sin "Big Bang".**

**Escenario:** Tu institución depende de un sistema "legacy" crítico. Es un monolito tecnológico, a menudo con décadas de antigüedad, que soporta un proceso de negocio esencial. Nadie entiende completamente cómo funciona, la documentación es escasa o inexistente, y cualquier cambio es lento, costoso y arriesgado. La presión para "reemplazarlo" es alta, pero la idea de un proyecto "Big Bang" de varios años, con millones de dólares en riesgo y una alta probabilidad de fracaso, es paralizante.

**Tu Misión como Arquitecto:** Liderar un proceso de **modernización evolutiva**. En lugar de intentar un reemplazo masivo, aplicarás los principios de ASTA-SIGMA Lite para "estrangular" gradualmente al sistema legacy, reemplazando sus capacidades pieza por pieza con componentes modernos, ágiles y alineados al valor, todo mientras el servicio principal se mantiene en operación.

---

**Paso 0: El Cambio de Mentalidad — De "Reemplazar un Sistema" a "Evolucionar una Capacidad"**

*El primer y más importante paso es redefinir el problema.*

1. **No es un Proyecto de TI:** La modernización de un sistema legacy no es, fundamentalmente, un problema técnico. Es un **problema de negocio y de riesgo**. El objetivo no es "cambiar el software", sino **asegurar la continuidad y mejorar la capacidad de la organización para entregar valor**.

2. **Abraza la Deuda Técnica como Realidad:** El sistema legacy no es "malo"; es el resultado de años de éxito y adaptaciones. Contiene décadas de lógica de negocio tácita y validada. Tu trabajo no es juzgarlo, sino entenderlo y liberarlo de sus ataduras tecnológicas.

3. **Piensa como un Cirujano, no como un Demoledor:** Un reemplazo "Big Bang" es como intentar un trasplante de corazón, cerebro y sistema nervioso al mismo tiempo. El riesgo de matar al paciente es altísimo. En su lugar, adoptaremos un enfoque quirúrgico, reemplazando pequeñas partes del sistema de forma controlada, permitiendo que el "organismo" se recupere y se fortalezca con cada intervención.

---

**Paso 1: Arqueología del Sistema — Mapear el "As-Is" (Fase 1)**

*No puedes modernizar lo que no entiendes. El primer paso es hacer visible lo invisible.*

1. **"Arquitectura Inversa" con el Canvas del ST:**
    * **Acción:** Convoca un taller de "arqueología" con las personas que más saben del sistema legacy (los usuarios expertos, los mantenedores de TI, los analistas de negocio).
    * **Herramienta:** Utiliza el **Canvas del Sistema de Trabajo** no para diseñar algo nuevo, sino para **documentar el sistema actual ("As-Is")**.
    * **Preguntas Clave:**
        * **Propósito y Valor Público:** ¿Qué valor entrega este sistema HOY? ¿Qué pasaría si dejara de funcionar mañana?
        * **Actores y Experiencia:** ¿Quiénes lo usan realmente? ¿Cuáles son sus principales "dolores" y "workarounds"?
        * **Flujo de Valor:** ¿Cuál es el proceso de negocio de punta a punta que soporta?
        * **Datos Clave:** ¿Qué datos críticos están "atrapados" dentro de este sistema?
        * **Dependencias:** ¿Qué otros sistemas consumen sus datos o servicios (a menudo de formas no documentadas)? ¿De qué otros sistemas depende él?
    * **Resultado:** Un mapa visual y compartido del rol real que el sistema legacy juega en la organización. Este Canvas es tu principal herramienta para comunicar la complejidad y el riesgo del estado actual a los directivos.

2. **Documentar los Contratos Implícitos:**
    * **Acción:** Durante el taller del Canvas, identifica los puntos de integración del sistema.
    * **Herramienta:** Usa los **Checklists de Contratos Conversacionales** para documentar los acuerdos **implícitos** existentes. Por ejemplo, si el sistema legacy genera un archivo plano que otro sistema consume, crea un "Contrato de Datos Conversacional" que describa ese archivo: sus campos, su frecuencia, etc.
    * **Propósito:** Hacer explícitas las dependencias que a menudo son frágiles y no están documentadas.

**Resultado del Paso 1:** Has transformado un "monolito opaco" en un **Sistema de Trabajo comprensible**. Tienes un mapa de sus funciones, sus usuarios, sus datos y sus interconexiones, lo que te permite tomar decisiones informadas sobre cómo empezar a modernizarlo.

---

**Paso 2: La Estrategia del Estrangulador — Definir el Primer Incremento de Valor (Fase 1)**

*No intentes modernizar todo a la vez. Elige la primera pieza y "estrangúlala" con valor.*

1. **Identificar el "Corte" Estratégico:**
    * **Acción:** Reúne al Equipo de Flujo de Valor (EFV) que será dueño del sistema modernizado. Revisa el Canvas "As-Is" y el Story Map (si existe).
    * **Pregunta Clave:** ¿Qué pieza de funcionalidad del sistema legacy podemos "extraer" y reconstruir como un servicio moderno e independiente que entregue valor por sí mismo y reduzca la fricción más dolorosa para los usuarios?
    * **Patrones Comunes para el Primer Corte:**
        * **Una nueva capacidad:** Construir una nueva funcionalidad como un servicio externo que el legacy no tiene, pero que los usuarios necesitan urgentemente.
        * **Una "fachada" para lectura:** Crear una API moderna que exponga los datos más importantes del legacy, protegiendo a los nuevos consumidores de su complejidad interna.
        * **Extraer un módulo completo:** Identificar un módulo cohesivo (ej. "cálculo de intereses", "generación de reportes") y reconstruirlo como un microservicio.

2. **Definir el OKR del Primer Incremento:**
    * **Acción:** Traduce la modernización de esta primera pieza en un OKR claro.
    * **Ejemplo:**
        * **O:** Liberar el acceso a los datos de expedientes para habilitar la innovación.
        * **KR1:** Implementar una API de consulta de expedientes que responda en menos de 200ms.
        * **KR2:** Lograr que 3 nuevos servicios consuman la nueva API en lugar de la base de datos legacy.

**Resultado del Paso 2:** Tienes un plan de ataque. En lugar de un plan de proyecto de 3 años, tienes un **objetivo trimestral claro y medible** enfocado en entregar el primer incremento tangible de la modernización.

---

**Paso 3: Construir la Enredadera — El Ciclo de Entrega Continua (Fase 2)**

*La nueva funcionalidad crece como una enredadera alrededor del viejo árbol, fortaleciéndose con cada iteración.*

1. **Ejecutar el Ciclo Xanpan:**
    * **Acción:** El EFV comienza a construir el nuevo componente o servicio. Utilizan su tablero Xanpan para gestionar el flujo de trabajo, entregando pequeñas piezas de funcionalidad de forma continua.
    * **Foco:** La calidad es primordial. El nuevo componente se construye con prácticas modernas: pruebas automatizadas, CI/CD, y observabilidad desde el día uno.

2. **Integración y Coexistencia:**
    * **El Desafío:** El nuevo componente debe coexistir con el sistema legacy. Esto a menudo requiere la creación de "capas anticorrupción" o "adaptadores" que traducen entre el mundo nuevo y el viejo.
    * **ADRs para Decisiones Clave:** Decisiones como "¿Cómo sincronizamos los datos entre el nuevo servicio y la base de datos legacy?" son críticas y deben ser documentadas en **ADRs Ligeros**.

**Resultado del Paso 3:** Tienes el primer componente moderno construido, probado y listo para ser puesto en producción, coexistiendo de forma segura con el sistema legacy.

---

**Paso 4: Redirigir el Flujo y Medir — La Gobernanza del Valor (Fase 3)**

*El éxito no es desplegar el nuevo componente, es que la gente lo use y genere valor.*

1. **Redirigir el Flujo de Valor:**
    * **Acción:** Una vez que el nuevo componente está en producción, se comienzan a redirigir los flujos de trabajo hacia él.
        * Si es una nueva capacidad, se expone a los usuarios.
        * Si es una fachada de datos, se actualizan los sistemas consumidores para que apunten a la nueva API.
        * Si es un módulo extraído, se "apaga" la funcionalidad correspondiente en el legacy y se redirigen las llamadas al nuevo servicio.
    * **Monitoreo:** Se monitorean de cerca los SLOs del nuevo servicio y el impacto en el sistema legacy.

2. **La RVC como Punto de Control:**
    * **Acción:** Al final del trimestre, el EFV presenta sus resultados en la RVC.
    * **Narrativa de Valor:** La presentación se centra en: "¿Logramos nuestro OKR? ¿Qué valor generó el nuevo componente? ¿Qué aprendimos sobre el sistema legacy en el proceso?".
    * **La Decisión de Inversión:** Basado en el éxito del primer "estrangulamiento", la gobernanza decide si **continuar** (elegir la siguiente pieza a modernizar), **expandir** (acelerar el esfuerzo) o **pivotar** (si se descubrió que el enfoque no es el correcto).

3. **El Ciclo Vuelve a Empezar:**
    * **Acción:** Con la decisión de la RVC, el equipo vuelve al Paso 2: elige la siguiente pieza del legacy a "estrangular", define el OKR para el próximo trimestre y comienza un nuevo ciclo de construcción.

Siguiendo esta receta, la modernización deja de ser un evento aterrador y de alto riesgo para convertirse en un **proceso orgánico, incremental y gestionado por el valor**. Con cada ciclo, la "enredadera" de la nueva arquitectura crece, el sistema legacy se encoge, y la organización evoluciona de forma segura y sostenible hacia su futuro digital.

### **5.3. Receta: Cómo diseñar un proceso que cruza múltiples divisiones.**

**Escenario:** Te enfrentas al "monstruo del silo", el desafío más endémico de las organizaciones jerárquicas. Un proceso de cara al ciudadano, como la "Obtención de una licencia de construcción", comienza en una división (Obras), requiere validaciones de otra (Medio Ambiente), necesita aprobación de una tercera (Finanzas) y finaliza en una cuarta (Tesorería). El resultado es un "agujero negro" burocrático: un viaje del ciudadano fragmentado, lleno de demoras inexplicables en las "zonas de nadie" entre divisiones, donde los expedientes se pierden y la responsabilidad se diluye. Cada división optimiza su pequeña parte del proceso, sin tener visibilidad ni incentivos para optimizar el flujo completo.

**Tu Misión como Arquitecto:** Actuar como un "diseñador de puentes" y un "traductor universal". Tu objetivo no es simplemente "mapear el proceso existente" y automatizar sus ineficiencias. Tu misión es **rediseñar el flujo de valor de punta a punta desde la perspectiva del ciudadano**, tratando a cada división no como una etapa secuencial, sino como un **proveedor de servicios** en un ecosistema coordinado.

---

**Paso 0: El Cambio de Mentalidad — De "Conectar Silos" a "Orquestar Capacidades"**

*El problema no es la conexión, es la concepción. Debemos cambiar el modelo mental.*

1. **Abandona el Diagrama de Flujo Tradicional (por ahora):** El primer instinto es dibujar un diagrama de carriles (swimlanes) que refuerza visualmente los silos. Resiste esa tentación. El problema no es el "traspaso" entre carriles, sino la existencia misma de los carriles como fronteras impermeables.

2. **Adopta una Perspectiva de "Servicio y Consumo":** En lugar de ver a la División de Medio Ambiente como "el paso 2", comienza a verla como un **Sistema de Trabajo (ST)** que provee una **capacidad** específica: "Validación de Impacto Ambiental como Servicio". El proceso principal (la obtención de la licencia) se convierte en un **consumidor** de este servicio. Este cambio de lenguaje es fundamental; transforma a las divisiones de feudos a socios en una cadena de valor.

3. **El Foco es el Viaje del Ciudadano, no el Proceso Interno:** El único flujo que importa es el del ciudadano intentando lograr su objetivo. Nuestro trabajo es hacer que la complejidad interna de la organización sea invisible para él.

---

**Paso 1: Mapear el Viaje Completo — El Taller de Event Storming (Fase 1)**

*Para romper los silos, primero debemos ignorarlos. Mapea el flujo de valor como si la organización no tuviera divisiones.*

1. **Convocar a los Actores Clave:**
    * **Acción:** Organiza un taller de "Event Storming" (una técnica de descubrimiento colaborativo). Invita a **un representante de cada división** involucrada en el proceso, al Dueño de Producto del flujo de valor completo y a un Diseñador UX.
    * **Tu Rol (Arquitecto):** Facilitador. Tu objetivo es guiar la conversación para que el grupo mapee el proceso ideal desde la perspectiva del ciudadano.

2. **Mapear los Eventos del Dominio:**
    * **Herramienta:** Una pared larga y post-its de diferentes colores.
    * **Proceso:** Pide al grupo que describa el proceso como una secuencia de **eventos de negocio** (escritos en post-its naranjas), en tiempo pasado. Ej: "Solicitud de Licencia Recibida", "Análisis de Admisibilidad Completado", "Informe Ambiental Aprobado", "Pago de Tasas Realizado", "Licencia Emitida".
    * **Propósito:** Al enfocarse en los eventos, el equipo construye la historia del flujo sin pensar (inicialmente) en quién hace qué, rompiendo el sesgo departamental.

3. **Identificar los Comandos y los Actores:**
    * **Acción:** Para cada evento, pregunta: "¿Qué **comando** o acción del usuario/sistema causó este evento?" (post-it azul). "¿Qué **actor** (persona o sistema) emitió ese comando?" (post-it amarillo).
    * **Resultado:** Comienzan a emerger los puntos de decisión y las responsabilidades, pero siempre anclados al flujo de valor, no a la estructura organizacional.

**Resultado del Paso 1:** Tienes un mapa visual y compartido del **flujo de valor de punta a punta**, creado por las personas que lo operan. Este mapa es la "fuente de la verdad" para el rediseño. Las fronteras entre los silos ahora son visibles no como muros, sino como puntos de interacción en el flujo.

---

**Paso 2: Modelar cada División como un Sistema de Trabajo (ST) Independiente (Fase 1)**

*Ahora que entendemos el flujo completo, volvemos a poner los silos, pero con un nuevo propósito: definirlos como sistemas autónomos que proveen servicios.*

1. **Crear un Canvas ST para cada División Participante:**
    * **Acción:** Realiza mini-talleres con los representantes de cada división.
    * **Herramienta:** Usa el **Canvas del Sistema de Trabajo** para modelar su "silo" como si fuera una unidad de negocio independiente.
    * **Preguntas Clave para cada División:**
        * **Propósito:** ¿Cuál es el propósito de tu división *en el contexto de este flujo de valor*? (Ej: "Garantizar el cumplimiento normativo ambiental de los proyectos de construcción").
        * **Capacidades y Servicios Expuestos:** ¿Qué "servicio" concreto ofreces a este proceso? (Ej: "Servicio de Emisión de Certificado Ambiental"). ¿Cuál es tu compromiso de tiempo de respuesta (SLO)?
        * **Datos Clave:** ¿Qué datos necesitas para operar (inputs) y qué datos produces (outputs)?

**Resultado del Paso 2:** Has descompuesto el problema. El proceso monolítico y fragmentado se ha convertido en un ecosistema de **Sistemas de Trabajo** claramente definidos, cada uno con un propósito, servicios y responsabilidades explícitas.

---

**Paso 3: Coser el Ecosistema — Definir los Contratos Conversacionales (Fase 1)**

*Este es el paso más crítico. Los "traspasos" informales entre divisiones se reemplazan por acuerdos de servicio explícitos.*

1. **Facilitar las Sesiones de Contratación:**
    * **Acción:** Convoca reuniones bilaterales entre los "dueños" de los ST que interactúan. Por ejemplo, el Dueño de Producto del flujo principal (el "consumidor") se reúne con el líder de la División de Medio Ambiente (el "proveedor").
    * **Herramienta:** Utiliza los **Checklists de Contratos Conversacionales** (principalmente el de Servicio y el de Datos) para guiar la negociación.
    * **Preguntas Clave en la Negociación:**
        * **Contrato de Servicio:** "¿Cuál es el SLO de tu 'Servicio de Emisión de Certificado Ambiental'? ¿Te comprometes a responder en 5 días hábiles?".
        * **Contrato de Datos:** "¿Qué campos exactos debe contener la solicitud para que puedas procesarla? ¿En qué formato?".
        * **Ambos:** "¿Qué pasa si no cumples el SLO? ¿Cómo manejaremos los errores y las excepciones?".

2. **Documentar los Acuerdos:**
    * **Acción:** Cada acuerdo se documenta en un artefacto ligero y compartido. Este documento es el **acuerdo vinculante** entre las divisiones.

**Resultado del Paso 3:** Has reemplazado la ambigüedad y la fricción de los silos con **interfaces claras y compromisos explícitos**. El proceso ya no es una "cadena de favores", sino una red de servicios con responsabilidades definidas.

---

**Paso 4: Orquestar el Flujo de Valor, no las Tareas (Fase 2)**

*Con los servicios definidos, ahora podemos automatizar el flujo de una manera resiliente y desacoplada.*

1. **Diseñar un Orquestador Ligero:**
    * **Acción:** El EFV principal, dueño del flujo de valor de punta a punta, diseña un componente de **orquestación**.
    * **Principio de Diseño:** Este orquestador **no contiene lógica de negocio de las divisiones**. Su única responsabilidad es **llamar a los servicios** expuestos por cada ST divisional en la secuencia correcta, manejar los estados del flujo y gestionar los timeouts basados en los SLOs acordados en los contratos.
    * **Ejemplo:** El orquestador recibe la solicitud, llama al "Servicio de Admisibilidad" del ST de Obras. Si la respuesta es positiva y se cumple el SLO, llama al "Servicio de Emisión de Certificado Ambiental" del ST de Medio Ambiente, y así sucesivamente.

2. **Preservar la Autonomía Divisional:**
    * **Beneficio Clave:** Cada división mantiene **autonomía total** sobre *cómo* implementa su servicio interno. La División de Medio Ambiente puede cambiar completamente su proceso interno, siempre y cuando siga cumpliendo con la interfaz y los SLOs definidos en su contrato. Esto permite la mejora continua dentro de los silos sin romper el flujo global.

**Resultado del Paso 4:** Has creado un proceso que es a la vez **coherente y desacoplado**. El flujo de valor es visible y gestionable de forma centralizada, pero la ejecución es distribuida y autónoma.

---

**Paso 5: Gobernanza Federada y OKRs Compartidos (Fase 3)**

*Para que el sistema funcione a largo plazo, los incentivos deben estar alineados.*

1. **Establecer un OKR Compartido:**
    * **Acción:** Durante la definición de OKRs, se crea un **OKR compartido** que mida el éxito del flujo de valor de punta a punta.
    * **Ejemplo de OKR Compartido:**
        * **O:** Convertir la obtención de licencias de construcción en un proceso rápido y transparente para el ciudadano.
        * **KR:** Reducir el tiempo total de ciclo de 90 a 30 días.
    * **Impacto:** Todas las divisiones participantes son **corresponsables** de mover esta métrica. El éxito de una división depende del éxito del todo.

2. **RVCs Coordinadas:**
    * **Acción:** En las RVCs trimestrales, los equipos de cada ST divisional reportan no solo sobre sus métricas internas, sino también sobre su contribución al OKR compartido.
    * **Conversación:** Esto fomenta un diálogo sobre los cuellos de botella del sistema completo. Si el proceso se atasca, la pregunta no es "¿Quién tiene la culpa?", sino "¿Qué contrato necesita ser renegociado o qué servicio necesita más inversión para desbloquear el flujo?".

Siguiendo esta receta, has transformado un proceso fragmentado y conflictivo en un **ecosistema de servicios colaborativos**. Has utilizado los principios de ASTA-SIGMA Lite para disolver las barreras organizacionales, no mediante una reestructuración masiva, sino cambiando la forma en que los equipos interactúan, se comprometen y miden el éxito.

### **5.4. Heurística: Cuándo usar un Agente de IA (y cuándo no).**

**Escenario:** La Inteligencia Artificial (IA) y los Modelos de Lenguaje (LLMs) dominan la conversación tecnológica. Existe una enorme presión organizacional para "usar IA" y no quedarse atrás. Sin embargo, aplicar IA a un problema equivocado no solo es un desperdicio de recursos, sino que puede introducir riesgos significativos de sesgos, errores y opacidad en los procesos públicos. La IA no es una solución mágica; es una herramienta específica para un tipo de problema específico.

**Tu Misión como Arquitecto:** Actuar como la voz de la razón y la estrategia. Tu trabajo es guiar a la organización más allá del "hype" y ayudar a los equipos a tomar decisiones deliberadas y justificadas sobre dónde y cómo aplicar un Agente Digital (IA). Esta heurística es tu guía para esa conversación.

---

**El Cambio de Mentalidad: De "¿Podemos usar IA?" a "¿Qué faceta del trabajo queremos mejorar?"**

La primera pregunta nunca debe ser sobre la tecnología. Debe ser sobre el trabajo. Basado en la **Work System Theory**, el punto de partida es siempre el **Sistema de Trabajo (ST)**. Antes de considerar una solución, debemos diagnosticar el problema en términos de las "facetas del trabajo" humano que se están realizando:

* ¿El desafío está en la **Toma de Decisiones**?
* ¿Está en la **Comunicación y Coordinación**?
* ¿Está en la **Ejecución de Tareas**?
* ¿O está en el **Aprendizaje y la Gestión del Conocimiento**?

Solo después de identificar la faceta del trabajo que es ineficiente o ineficaz, podemos empezar a preguntar qué herramienta es la más adecuada para mejorarla.

---

**Cuándo SÍ considerar un Agente de IA: Patrones de Alto Valor**

Un Agente de IA es una buena opción cuando el problema central involucra el manejo de **ambigüedad, lenguaje no estructurado o patrones complejos** que superan la capacidad de la automatización tradicional basada en reglas. Usa el marco de Cognición (Sentir, Decidir, Actuar) para identificar oportunidades:

**1. Para "SENTIR": Cuando necesitas encontrar una aguja en un pajar de datos no estructurados.**

* **Caso de Uso:** Monitoreo y Detección de Patrones.
* **Problema Típico:** "Tenemos miles de documentos, correos y solicitudes. Necesitamos detectar tempranamente riesgos, oportunidades o incumplimientos que son imposibles de encontrar manualmente."
* **Ejemplos:**
  * Detectar posibles fraudes analizando patrones sutiles en un gran volumen de solicitudes.
  * Identificar quejas ciudadanas recurrentes en redes sociales o canales de texto libre.
  * Clasificar y enrutar automáticamente documentos entrantes (ej. oficios, facturas) basándose en su contenido semántico, no solo en palabras clave.
* **Propósito HCAI Típico:** **Asistir** o **Aumentar** la capacidad de un analista humano.

**2. Para "DECIDIR": Cuando la decisión requiere juicio en un entorno de incertidumbre.**

* **Caso de Uso:** Apoyo a la Decisión y Recomendación.
* **Problema Típico:** "Nuestros expertos deben tomar decisiones complejas basadas en múltiples normativas y un gran volumen de evidencia. El proceso es lento y propenso a la inconsistencia."
* **Ejemplos:**
  * Un asistente que revisa una postulación a un subsidio y, basándose en la normativa (curada en un sistema RAG), recomienda al analista si es admisible o no, **citando siempre la fuente** de su recomendación.
  * Un sistema que recomienda la asignación óptima de recursos (ej. inspectores, vehículos de emergencia) basándose en variables en tiempo real.
  * Un agente que evalúa el riesgo de un proyecto basándose en el análisis de reportes de avance y noticias externas.
* **Propósito HCAI Típico:** **Aumentar**. La IA no toma la decisión final; potencia al humano para que tome una mejor decisión, más rápido.

**3. Para "ACTUAR": Cuando la acción requiere la generación de lenguaje natural contextualizado.**

* **Caso de Uso:** Generación de Contenido y Comunicación.
* **Problema Típico:** "Nuestros funcionarios dedican una enorme cantidad de tiempo a redactar documentos estandarizados pero que requieren personalización, como respuestas a ciudadanos, borradores de informes u oficios."
* **Ejemplos:**
  * Un "copiloto" que genera el borrador de una respuesta a una solicitud de transparencia, basándose en el expediente y en plantillas pre-aprobadas. El funcionario revisa, edita y envía.
  * Un agente que resume un largo expediente técnico en un párrafo claro y conciso para un informe directivo.
  * Un sistema que personaliza masivamente las comunicaciones a ciudadanos, adaptando el lenguaje y el contenido según el perfil del destinatario.
* **Propósito HCAI Típico:** **Aumentar** o **Asistir**. La IA crea el primer borrador, el humano aporta el juicio final.

---

**Cuándo NO usar un Agente de IA (o tener mucho cuidado): Los Anti-Patrones**

La IA no es la herramienta adecuada para todo. Usarla incorrectamente es como usar un bisturí para cortar un árbol: es la herramienta equivocada, es peligroso y probablemente no funcionará.

**1. Cuando el Problema es la Automatización de Tareas Repetitivas y Basadas en Reglas.**

* **El Problema Real:** El proceso es predecible, repetitivo y no requiere juicio. La información está estructurada.
* **La Solución Correcta:** No necesitas un LLM para esto. La solución es la **Automatización de Procesos de Negocio (BPA)** o, si interactúas con sistemas sin APIs, la **Automatización Robótica de Procesos (RPA)**.
* **Anti-Patrón:** Intentar que un LLM llene un formulario web o mueva datos entre dos bases de datos estructuradas. Es excesivamente caro, lento y propenso a errores (alucinaciones). Un script o un bot de RPA es miles de veces más eficiente y fiable para esta tarea.

**2. Cuando la "Fuente de la Verdad" es el Conocimiento Tácito o la Experiencia Profunda.**

* **El Problema Real:** La tarea depende del "olfato", la intuición, la empatía o la compleja red de relaciones que un funcionario experimentado ha construido durante años.
* **La Solución Correcta:** El objetivo aquí no es reemplazar al experto, sino **aumentar su capacidad**. La IA puede **asistir** al experto automatizando las partes rutinarias de su trabajo (ej. buscar documentos, preparar resúmenes) para liberarle tiempo para aplicar su juicio experto.
* **Anti-Patrón:** Intentar automatizar una decisión que requiere un profundo juicio ético o un entendimiento del contexto político y humano de una situación. Por defecto, estas decisiones deben permanecer bajo el control humano (**Humano-en-el-Bucle por defecto en situaciones de riesgo**).

**3. Cuando no tienes Datos de Calidad o un Proceso de Curación de Conocimiento.**

* **El Problema Real:** La calidad de cualquier sistema de IA, especialmente los basados en RAG, está limitada por la calidad de los datos y el conocimiento con el que se alimenta ("Garbage In, Garbage Out").
* **La Solución Correcta:** Antes de construir un agente de IA, debes tener una estrategia de **Gestión del Conocimiento (KM)** y de **Gobernanza de Datos**. Esto implica identificar las fuentes de verdad, asegurar su calidad y vigencia, y establecer un proceso de curación.
* **Anti-Patrón:** Conectar un LLM directamente a un repositorio de documentos desactualizados, contradictorios y sin control de versiones, y esperar que dé respuestas precisas y confiables. El resultado será un agente que alucina con confianza y erosiona la confianza en la tecnología.

**4. Cuando el Costo y la Complejidad Superan el Valor.**

* **El Problema Real:** La necesidad de negocio es real, pero el valor que se obtendría de la automatización es marginal.
* **La Solución Correcta:** A veces, la mejor solución es **no hacer nada** o hacer una mejora simple en el proceso manual. El **"Retorno de la Inversión (ROI)"** de una solución de IA debe ser claro.
* **Anti-Patrón:** Iniciar un proyecto de IA complejo y costoso para resolver un problema que solo ocurre unas pocas veces al mes y que un humano puede resolver en 10 minutos.

Como arquitecto, tu deber es guiar esta conversación. Al usar estas heurísticas, puedes ayudar a tu organización a enfocar sus inversiones en IA donde realmente generen un valor público transformador, evitando las trampas del "teatro de la innovación".

### **5.5. Heurística: Decidiendo entre API, RPA y una solución manual.**

**Escenario:** Durante el diseño de un Sistema de Trabajo, el equipo identifica una tarea que requiere la interacción entre dos sistemas o entre un humano y un sistema. Por ejemplo, "transferir los datos de una solicitud aprobada desde nuestro sistema de trámites al sistema financiero central". Inmediatamente surge la pregunta: ¿Cómo implementamos esta conexión? Las opciones son múltiples: desarrollar una integración robusta vía API, desplegar un bot de RPA para que imite al usuario, o simplemente dejar que un funcionario siga realizando la tarea manualmente. Elegir la opción incorrecta puede resultar en una solución frágil, costosa y que genera más problemas de los que resuelve.

**Tu Misión como Arquitecto:** Guiar al equipo para que tome una decisión informada y estratégica, no solo basada en la viabilidad técnica inmediata, sino en la sostenibilidad, resiliencia y costo total de propiedad a largo plazo. Esta heurística es tu árbol de decisión.

---

**El Cambio de Mentalidad: De "Integrar Sistemas" a "Habilitar Capacidades"**

El objetivo no es simplemente "conectar A con B". El objetivo es que el **Sistema de Trabajo A** pueda consumir una **capacidad** ofrecida por el **Sistema de Trabajo B** de la forma más fiable y eficiente posible. La solución (API, RPA o manual) es solo un medio para ese fin. El primer paso es siempre diagnosticar la naturaleza de la tarea y del sistema con el que necesitamos interactuar.

---

**El Árbol de Decisión: Un Flujo de Preguntas Guiadas**

Comienza en la cima del árbol y avanza hacia abajo. La primera respuesta que se ajuste a tu realidad te dará la solución recomendada.

**Pregunta 1: ¿La tarea es fundamentalmente humana?**

* **Descripción:** La tarea requiere **juicio, empatía, negociación, resolución de problemas complejos o pensamiento crítico**. No se basa en reglas predecibles, sino en la experiencia y el contexto que solo un humano puede aportar.
* **Ejemplos:**
  * Gestionar la queja de un ciudadano molesto.
  * Negociar los términos de un convenio con otra institución.
  * Tomar una decisión final sobre un caso de subsidio con circunstancias excepcionales.
* **➡️ Veredicto: SOLUCIÓN MANUAL**
  * **Justificación:** Automatizar estas tareas es un **anti-patrón**. Intentar hacerlo con RPA o IA no solo es ineficaz, sino que devalúa la pericia humana y puede llevar a decisiones éticamente cuestionables.
  * **Acción del Arquitecto:** En lugar de automatizar la tarea en sí, busca oportunidades para **AUMENTAR** al humano. ¿Podemos construir una herramienta que le traiga la información relevante más rápido? ¿Podemos darle un "copiloto" de IA que le sugiera borradores de comunicación? El foco es potenciar al experto, no reemplazarlo.

---

**Pregunta 2: Si la tarea es repetitiva y basada en reglas, ¿el sistema de destino tiene una API estable, documentada y accesible?**

* **Descripción:** Una **API (Interfaz de Programación de Aplicaciones)** es un "contrato" formal y robusto para la comunicación entre sistemas. Es la forma en que un sistema expone sus capacidades de manera estructurada y gobernable.
* **Ejemplos:**
  * El sistema financiero central ofrece una API REST para crear nuevas cuentas por pagar.
  * El servicio de Registro Civil tiene una API para validar la identidad de una persona.
  * Nuestro propio Sistema de Trabajo de Notificaciones expone una API para enviar correos electrónicos.
* **➡️ Veredicto: SOLUCIÓN VÍA API**
  * **Justificación:** Esta es la **opción preferida por defecto** para la integración entre sistemas. Una integración vía API es:
    * **Resiliente:** No se rompe si cambia la interfaz de usuario del otro sistema.
    * **Eficiente:** La comunicación es directa, rápida y consume menos recursos.
    * **Segura y Gobernable:** El acceso se gestiona con credenciales, se pueden establecer cuotas y se auditan todas las transacciones.
    * **Sostenible:** Es mucho más fácil y barato de mantener a largo plazo que un bot de RPA.
  * **Acción del Arquitecto:** Facilita la creación de un **Contrato Conversacional de Servicio o de Suministro** para formalizar el acuerdo de uso de la API. Guía al equipo en la construcción de una integración que sea resiliente (con reintentos, circuit breakers, etc.).

---

**Pregunta 3: Si el sistema de destino NO tiene una API, ¿la tarea es de alto volumen, alta frecuencia, propensa a errores humanos y absolutamente estable?**

* **Descripción:** Aquí entramos en el territorio de **RPA (Robotic Process Automation)**. RPA es una solución táctica y, a menudo, temporal. Consiste en un "bot" de software que imita las acciones de un humano en una interfaz de usuario: hacer clics, rellenar formularios, copiar y pegar datos.
* **Checklist para justificar RPA (debes poder responder SÍ a todo):**
  * **¿Es de Alto Volumen/Frecuencia?** La tarea se realiza cientos o miles de veces por semana. El costo de desarrollarlo se justifica con el ahorro de tiempo.
  * **¿Es Propensa a Errores?** Los humanos cometen errores de "copia y pega" que tienen un costo (financiero o de reputación).
  * **¿Es 100% Basada en Reglas?** El flujo de la tarea no requiere ningún tipo de juicio o improvisación.
  * **¿La Interfaz de Usuario es Estable?** El sistema de destino es un legacy que no cambiará su interfaz en el corto plazo.
* **Ejemplos:**
  * Copiar los datos de 500 facturas desde una planilla Excel a un sistema de contabilidad antiguo que no tiene API.
  * Revisar diariamente una lista de correos y descargar los archivos adjuntos a una carpeta específica.
* **➡️ Veredicto: SOLUCIÓN VÍA RPA (con precauciones)**
  * **Justificación:** RPA es una **"curita" tecnológica**. Es útil para automatizar la interacción con sistemas legacy que no se pueden modificar, liberando a los humanos de tareas de bajo valor y alto volumen.
  * **Acción del Arquitecto:**
        1. **Advierte sobre la Fragilidad:** Deja claro al equipo y a los stakeholders que una solución RPA es inherentemente frágil. **Cualquier cambio en la interfaz de usuario del sistema de destino romperá el bot**, lo que genera costos de mantenimiento no triviales. "Acoplamiento fuerte con la UI" es un anti-patrón a largo plazo.
        2. **Aboga por una API:** Simultáneamente, inicia una conversación con los dueños del sistema legacy. La existencia de un bot de RPA es la prueba más clara de la **necesidad de una API**. La estrategia a largo plazo siempre debe ser reemplazar la integración RPA por una integración vía API.
        3. **Aísla al Bot:** Diseña la solución de manera que el bot de RPA esté aislado y sea invocado como si fuera un servicio más por el orquestador de procesos, ocultando su fragilidad al resto del sistema.

---

**Si has llegado hasta aquí y ninguna de las opciones anteriores encaja, la respuesta por defecto es:**

**➡️ Veredicto: SOLUCIÓN MANUAL**

* **Justificación:** Si la tarea requiere juicio (descartando RPA/API), no hay API disponible, y la tarea no tiene el volumen o la estabilidad suficiente para justificar la fragilidad y el costo de un bot de RPA, entonces la solución más eficiente y robusta es **mantenerla como una tarea humana**.
* **Acción del Arquitecto:** No dejes el problema ahí. Vuelve al primer punto: **¿cómo podemos AUMENTAR a la persona que realiza la tarea?** Quizás no automatizamos la transferencia de datos, pero podemos construir una pequeña herramienta que le presente la información de manera más clara, que valide los datos antes de que los copie, o que simplifique su flujo de trabajo. A menudo, una pequeña mejora en la experiencia del funcionario tiene un impacto mayor y más sostenible que una automatización frágil y costosa.

### **5.6. Heurística: Cómo gestionar la deuda técnica de forma pragmática.**

**Escenario:** El equipo ha estado entregando valor a gran velocidad. El nuevo servicio digital es un éxito y los usuarios piden más funcionalidades. Sin embargo, bajo la superficie, se acumulan los "atajos": código que no se limpió, pruebas que se omitieron, una dependencia que se integró de forma "rápida y sucia". La velocidad de desarrollo comienza a disminuir. Cada nueva funcionalidad es más difícil de implementar que la anterior. Los errores extraños empiezan a aparecer en producción. El equipo siente que está caminando sobre un campo minado. Han acumulado **Deuda Técnica**.

**Tu Misión como Arquitecto:** Actuar como el "médico" del Sistema de Trabajo. Tu objetivo es ayudar al equipo a entender que la Deuda Técnica no es un fracaso moral, sino una realidad económica que debe ser gestionada activamente. Tu misión es transformar la deuda de un problema invisible y temido a un elemento visible, medible y priorizable del backlog, asegurando la salud y la longevidad del activo digital.

---

**El Cambio de Mentalidad: De "Pecado Técnico" a "Instrumento Financiero"**

El primer paso para gestionar la deuda técnica es dejar de tratarla como un signo de incompetencia. Inspirados en la metáfora original de Ward Cunningham, debemos ver la deuda técnica como **deuda financiera**:

> **Tomar un "préstamo" técnico consiste en tomar un atajo en el diseño o la implementación para entregar valor más rápido. Al igual que con la deuda financiera, este préstamo acumula "intereses": el trabajo extra que se debe hacer en el futuro cada vez que se toca esa parte del código. Pagar el "capital" es refactorizar y limpiar el atajo.**

Bajo esta luz, no toda la deuda es mala. Existe:

* **Deuda Prudente y Deliberada:** "Necesitamos lanzar este MVP la próxima semana para validar una hipótesis de valor. Tomaremos un atajo en el módulo de reportes, sabiendo que tendremos que refactorizarlo el próximo mes". Este es un préstamo estratégico.
* **Deuda Imprudente y Accidental:** Resulta del desconocimiento, la falta de disciplina o la presión irracional. Es como gastar sin control con una tarjeta de crédito con intereses altísimos.

El problema no es incurrir en deuda, sino **no ser consciente de ella y no tener un plan para pagarla**. La filosofía `#NoProjects` es fundamental aquí: en un modelo de proyectos con una fecha de fin, no hay incentivos para pagar la deuda. En un modelo de flujo continuo, el equipo que contrae la deuda es el mismo que sufrirá sus intereses, creando un poderoso incentivo para mantenerla bajo control.

---

**El Proceso Pragmático de Gestión de Deuda**

Gestionar la deuda no requiere un "proyecto de refactorización" masivo. Requiere un proceso continuo y disciplinado integrado en el ritmo del equipo.

**Paso 1: Hacer Visible la Deuda (Diagnóstico Continuo)**

*No puedes gestionar lo que no ves.*

1. **Crear un "Registro de Deuda":**
    * **Acción:** Dedica una sección en el backlog del equipo o en una página de la wiki para registrar explícitamente los ítems de deuda técnica a medida que se descubren.
    * **Formato:** Cada ítem debe ser una **Historia de Usuario Técnica**: *"Como desarrollador, quiero refactorizar el módulo de cálculo de intereses para que use el nuevo patrón de servicios, de modo que se reduzcan los errores de cálculo y se facilite la adición de nuevas reglas de negocio."*

2. **Clasificar la Deuda (El Cuadrante de Priorización):**
    * **Herramienta:** Utiliza un simple cuadrante 2x2 para clasificar cada ítem de deuda durante la planificación de la iteración. Esto ayuda al Dueño de Producto a entender el impacto de la deuda en términos de negocio.
    * **Eje X (Impacto en la Entrega):** ¿Cuánto nos está frenando esta deuda? (Bajo a Alto)
    * **Eje Y (Riesgo Operacional):** ¿Qué tan probable es que esta deuda cause un incidente grave en producción? (Bajo a Alto)

    * **PAGAR AHORA (Alto Impacto, Alto Riesgo):** Estos son "incendios". La deuda está causando fallos activamente y/o bloqueando la entrega de valor crítico. Su resolución tiene la máxima prioridad.
    * **Planificar Pago (Alto Impacto, Bajo Riesgo):** Esta deuda es como una "bola de nieve". No está causando fallos hoy, pero está haciendo que el desarrollo sea cada vez más lento. Se deben planificar historias para pagarla proactivamente.
    * **Pagar si se Toca (Bajo Impacto, Alto Riesgo):** Esta es una "bomba de tiempo". Es una parte del código frágil pero que rara vez se modifica. La regla es: si una nueva historia de usuario requiere trabajar cerca de esta área, es obligatorio pagar la deuda como parte de esa historia.
    * **Observar (Bajo Impacto, Bajo Riesgo):** Esta deuda puede ser aceptada por ahora. Se registra, pero no se planifica trabajo activo sobre ella a menos que su clasificación cambie.

**Resultado del Paso 1:** La deuda ha pasado de ser una queja abstracta a un **conjunto de artefactos visibles y clasificados** en el backlog.

---

**Paso 2: Pagar la Deuda de Forma Continua (El Hábito del Flujo)**

*La deuda no se paga en grandes eventos, se paga en cada iteración.*

1. **Asignar Capacidad Fija (La "Regla del 20%"):**
    * **Acción:** El equipo acuerda con el Dueño de Producto dedicar un porcentaje fijo de su capacidad en cada iteración (ej. 20%) a pagar la deuda técnica del cuadrante "Planificar Pago".
    * **Justificación:** Esto no es opcional ni negociable en cada sprint. Es una **inversión fija en la salud a largo plazo del activo**. Tratar la reducción de deuda como una historia de usuario más asegura que compita por la priorización y a menudo pierde. Al fijar la capacidad, se convierte en un hábito, como pagar la hipoteca.

2. **Integrar el Pago en el Flujo de Trabajo (Regla del Boy Scout):**
    * **Acción:** El equipo adopta la "Regla del Boy Scout": "Deja siempre el campamento (el código) un poco más limpio de lo que lo encontraste".
    * **Práctica:** Cuando se trabaja en una historia de usuario, si se encuentra un pequeño ítem de deuda adyacente (del cuadrante "Pagar si se Toca"), se invierte un poco de tiempo extra para limpiarlo como parte de la misma tarea. Esto previene que la deuda se acumule en primer lugar.

**Resultado del Paso 2:** El pago de la deuda se ha convertido en una **práctica sistemática y continua**, no en una reacción a una crisis.

---

**Paso 3: Comunicar el Valor del Pago (La Conversación en la RVC)**

*La deuda técnica debe ser traducida a un lenguaje de negocio y riesgo.*

1. **Hacer Visible el Costo de los Intereses:**
    * **Acción:** En la preparación para la **Revisión de Valor y Capacidad (RVC)**, el Líder Técnico prepara métricas que demuestren el impacto de la deuda.
    * **Métricas de Impacto:**
        * **Tiempo de Ciclo:** "Nuestro tiempo de ciclo para funcionalidades en el módulo X ha aumentado un 50% en los últimos 6 meses debido a la deuda acumulada".
        * **Tasa de Incidentes:** "El 40% de los incidentes en producción del último trimestre se originaron en el área Y, que tiene la mayor concentración de deuda".
        * **Costo de Oportunidad:** "No podemos abordar el OKR de 'Personalización' porque la base de datos de usuarios es demasiado frágil para modificarla sin un refactor previo".

2. **Enmarcar el Pago como una Inversión:**
    * **Acción:** Durante la RVC, el Dueño de Producto y el Líder Técnico presentan el plan para pagar la deuda no como un "costo de TI", sino como una **inversión para habilitar la velocidad y la resiliencia futuras**.
    * **Narrativa:** "Proponemos dedicar el 20% de nuestra capacidad el próximo trimestre a refactorizar el módulo X. Esta inversión nos permitirá reducir los incidentes en un 80% y acelerar la entrega de las funcionalidades del OKR de 'Personalización' en el trimestre siguiente".

**Resultado del Paso 3:** La gobernanza entiende la deuda técnica no como un problema técnico abstracto, sino como un **factor estratégico** que afecta la capacidad de la organización para cumplir sus objetivos. La decisión de invertir en calidad se vuelve una decisión de negocio informada.

Siguiendo esta heurística, la gestión de la deuda técnica se transforma. Deja de ser una fuente de conflicto y parálisis y se convierte en una disciplina pragmática y continua que asegura que la organización pueda moverse rápido hoy, y aún más rápido mañana.

## **ANEXOS**

### **A.1. Glosario Unificado de ASTA-SIGMA Lite**

Este glosario define los términos clave utilizados a lo largo del manual. Su propósito es crear un vocabulario compartido y preciso para facilitar las conversaciones sobre arquitectura, estrategia y transformación.

---

**A**

* **ADR (Architecture Decision Record) / Registro de Decisión de Arquitectura:** Un documento corto y ligero que captura una decisión arquitectónica significativa, su contexto y sus consecuencias. Es la principal herramienta para la documentación emergente.
* **Agente Digital:** Componente de software, a menudo dotado de IA, que realiza trabajo (tareas) de forma autónoma o en colaboración con participantes humanos dentro de un Sistema de Trabajo.
* **Alineamiento Estratégico Radical:** Principio fundamental de ASTA-SIGMA que busca conectar la visión de más alto nivel de la organización con el trabajo diario de los equipos, utilizando OKRs como lenguaje universal.

**C**

* **Canvas del Sistema de Trabajo:** Herramienta visual y colaborativa de una página, basada en la Work System Theory, que se utiliza para mapear, analizar y diseñar los 9 componentes de un Sistema de Trabajo (ST). Es el artefacto central de ASTA-SIGMA Lite.
* **Contrato Conversacional:** Un acuerdo explícito y co-creado entre dos equipos o sistemas, guiado por un checklist, que define las reglas de su interacción (ej. Contrato de Datos, de Servicio). Su propósito es facilitar el diálogo y la claridad, no la validación por máquina.

**E**

* **Equipo de Flujo de Valor (EFV):** Un equipo estable, multidisciplinario y de larga duración que es dueño de uno o más Sistemas de Trabajo (STs) de punta a punta. Es la unidad de producción fundamental en el modelo de Flujo Continuo de Valor.

**F**

* **Flujo Continuo de Valor:** El principio operativo de ASTA-SIGMA que organiza el trabajo en flujos continuos en lugar de proyectos finitos. Se enfoca en la entrega de valor incremental y sostenido a lo largo del tiempo.

**H**

* **Heurística:** Una "regla práctica" o un atajo mental que ayuda a la toma de decisiones rápidas en situaciones complejas. La Parte 5 del manual se compone de heurísticas para el arquitecto.
* **Humano-en-el-Bucle (HITL - Human-in-the-Loop):** Un patrón de diseño donde un proceso autónomo (a menudo de IA) se detiene en puntos críticos para solicitar la validación, corrección o decisión de un participante humano. Es el modo por defecto para tareas de alto riesgo en ASTA-SIGMA.

**I**

* **IA Centrada en el Humano (HCAI - Human-Centered AI):** Un enfoque para el diseño de sistemas de IA que prioriza las capacidades, necesidades y el control humano. Se define por su propósito (Asistir, Aumentar, Orquestar, Automatizar) y su función cognitiva (Sentir, Decidir, Actuar).

**M**

* **Mapeo de Historias (Story Mapping):** Una técnica visual y colaborativa para organizar el backlog de un producto. Ordena las Historias de Usuario a lo largo del viaje del usuario, facilitando la priorización y la definición de entregas incrementales (MVPs).

**N**

* **#NoProjects:** La filosofía, popularizada por Allan Kelly, que aboga por abandonar el modelo de "proyecto" (con un inicio y fin definidos) en favor de un modelo de "flujo continuo" para el desarrollo de productos y servicios digitales.

**O**

* **OKR (Objectives and Key Results / Objetivos y Resultados Clave):** El marco de definición de metas utilizado en ASTA-SIGMA para el alineamiento estratégico.
  * **Objetivo (O):** Una declaración cualitativa e inspiradora de lo que se quiere lograr.
  * **Resultado Clave (KR):** Una métrica cuantitativa que mide el progreso hacia el Objetivo.

**R**

* **Receta:** Una guía paso a paso, presentada en la Parte 5 del manual, para abordar un desafío arquitectónico o de transformación común (ej. modernizar un sistema legacy).
* **Revisión de Valor y Capacidad (RVC):** La ceremonia estratégica trimestral de ASTA-SIGMA. Es una conversación de inversión entre un Equipo de Flujo de Valor y la gobernanza, donde se revisa el valor generado (progreso de OKRs) y se toman decisiones sobre el futuro del Sistema de Trabajo (Continuar, Expandir, Reducir o Cerrar).

**S**

* **Sistema de Trabajo (ST):** La unidad de análisis fundamental de ASTA-SIGMA. Es un sistema sociotécnico donde participantes (humanos y/o máquinas) realizan trabajo usando información y tecnología para producir productos/servicios para clientes. Basado en la Work System Theory de Steven Alter.
* **SLO (Service Level Objective / Objetivo de Nivel de Servicio):** Un objetivo numérico para la fiabilidad de un servicio (ej. 99.9% de disponibilidad), acordado en un Contrato Conversacional. Es una de las métricas clave de la salud de un ST.

**T**

* **Trabajo en Progreso (WIP - Work in Progress):** El número de tareas que un equipo está trabajando activamente al mismo tiempo. Limitar el WIP es un principio central de la metodología Xanpan para mejorar el flujo y la velocidad de entrega.

**U**

* **UX (User Experience / Experiencia de Usuario):** La disciplina de diseñar servicios y productos digitales que sean usables, accesibles, eficientes y satisfactorios para las personas que los utilizan. Un pilar del principio de "Humanidad en el Centro del Diseño".

**W**

* **Work System Theory (WST):** La teoría académica de Steven Alter que proporciona el fundamento conceptual para el "Sistema de Trabajo". Sostiene que las organizaciones pueden ser entendidas como un conjunto de sistemas sociotécnicos interconectados.

**X**

* **Xanpan:** La metodología de flujo ágil recomendada por ASTA-SIGMA Lite. Es un híbrido de los principios de alta calidad técnica de Extreme Programming (XP) y el sistema de gestión visual de Kanban.

### **A.2. Plantilla: Canvas del Sistema de Trabajo (ST)**

**Instrucciones de Uso:** Este no es un documento para ser rellenado en solitario. Utilice este canvas en una sesión de taller colaborativo (físico o digital) con todos los miembros del Equipo de Flujo de Valor y stakeholders clave. Use post-its y marcadores. El objetivo es generar diálogo, visualizar el sistema como un todo y crear un entendimiento compartido. El resultado es un mapa vivo, no un documento estático.

---

## **Canvas del Sistema de Trabajo: [Nombre del ST]**

**ID:** `ST-XXX` | **Versión:** `0.1 (Borrador)` | **Equipo Dueño:** `<Nombre del EFV>` | **Fecha:** `YYYY-MM-DD`

| **1. Propósito y Valor Público** | **2. Actores y Experiencia** | **3. Flujo de Valor y Proceso Principal** |
| :--- | :--- | :--- |
| **Pregunta Clave:** ¿POR QUÉ existe este sistema? | **Pregunta Clave:** ¿PARA QUIÉN estamos diseñando? | **Pregunta Clave:** ¿CÓMO funciona el sistema de punta a punta? |
| **Puntos a Considerar:**<br>• **Propósito Esencial:** En una frase (verbo + qué + para qué), ¿cuál es la razón de ser de este ST?<br>• **Alineamiento Estratégico (OKRs):** ¿A qué Objetivo estratégico de la organización contribuye? ¿Qué Resultados Clave (KRs) busca impactar directamente?<br>• **Problema/Oportunidad:** ¿Qué "dolor" del ciudadano o fricción interna estamos resolviendo?<br>• **Valor Público:** ¿Cómo mejora la vida de las personas o la eficiencia del Estado? | **Puntos a Considerar:**<br>• **Clientes/Usuarios:** ¿Quiénes son los beneficiarios finales del servicio?<br>• **Participantes Internos:** ¿Qué funcionarios operan o interactúan con el sistema?<br>• **Agentes Digitales (IA):** ¿Qué agentes de IA participan? Definir su propósito HCAI (**Asistir, Aumentar, Orquestar, Automatizar**) y su función cognitiva (**Sentir, Decidir, Actuar**).<br>• **Experiencia (Journey):** Describir a alto nivel el viaje del actor principal. ¿Cuáles son sus principales frustraciones y motivaciones? | **Puntos a Considerar:**<br>• **Evento de Inicio:** ¿Qué evento (interno o externo) detona el flujo de trabajo?<br>• **Etapas Macro:** Dibujar un flujo simple de 3 a 5 pasos que describan el proceso de principio a fin. (Usar verbos para cada etapa).<br>• **Resultado Final:** ¿Cuál es el producto, servicio o decisión que se genera al final del flujo?<br>• **Intervenciones Humanas Clave (HITL):** ¿En qué puntos del flujo se requiere juicio o validación humana explícita? |
| **4. Capacidades y Servicios Expuestos** | **5. Datos Clave (Consumidos y Producidos)** | **6. Tecnología y Plataformas de Soporte** |
| **Pregunta Clave:** ¿Qué VALOR produce este sistema para otros sistemas? | **Pregunta Clave:** ¿Qué INFORMACIÓN necesita y genera el sistema? | **Pregunta Clave:** ¿Sobre qué CIMIENTOS se construye? |
| **Puntos a Considerar:**<br>• **Capacidades de Negocio:** ¿Qué capacidades de la organización realiza este ST? (ej. "Gestión de Expedientes", "Validación de Identidad").<br>• **Servicios Expuestos (APIs):** ¿Qué servicios reutilizables (APIs) ofrece a otros STs? Definir a alto nivel su función (ej. "Consultar Estado de Trámite").<br>• **Consumidores:** ¿Qué otros STs son (o podrían ser) consumidores de estos servicios? | **Puntos a Considerar:**<br>• **Datos Consumidos:** ¿Cuáles son los principales "Productos de Datos" que este sistema necesita para operar? Identificar la fuente (otro ST, sistema externo).<br>• **Datos Producidos:** ¿Cuáles son los principales "Productos de Datos" que este sistema genera? ¿Quién los podría necesitar?<br>• **Clasificación:** ¿Alguno de estos datos es personal, sensible o crítico?<br>• **Fuente de Verdad (Source of Truth):** Para cada dato clave, ¿dónde reside la fuente autoritativa? | **Puntos a Considerar:**<br>• **Aplicaciones y Componentes:** Listar los principales componentes de software que conforman el ST (ej. Portal Web, API Gateway, Motor de Procesos).<br>• **Plataformas Transversales:** ¿Qué plataformas compartidas de la organización utiliza? (ej. Plataforma de Identidad, Bus de Eventos, Data Lake).<br>• **Stack Tecnológico:** Mencionar las tecnologías clave (lenguajes, frameworks, bases de datos). |
| **7. Dependencias (Internas y Externas)** | **8. Gobernanza, Riesgo y Mandato Regulatorio** | **9. Métricas de Éxito (SLOs y KPIs del ST)** |
| **Pregunta Clave:** ¿El éxito de este sistema DEPENDE de alguien más? | **Pregunta Clave:** ¿Cuáles son las REGLAS DEL JUEGO para este sistema? | **Pregunta Clave:** ¿Cómo sabremos que estamos GANANDO? |
| **Puntos a Considerar:**<br>• **Dependencias Internas:** Listar otros **Sistemas de Trabajo** de los que dependemos. ¿Tenemos un "Contrato Conversacional" claro con ellos?<br>• **Dependencias Externas (Proveedores):** Listar las entidades externas (otros servicios públicos, proveedores de software) de las que dependemos.<br>• **Riesgos de Dependencia:** ¿Cuál es el principal riesgo si una de estas dependencias falla? ¿Tenemos un plan de contingencia? | **Puntos a Considerar:**<br>• **Dueño del Producto/Servicio:** ¿Quién es la persona con la autoridad final sobre el "qué" y el "porqué" del ST?<br>• **Mandato Regulatorio:** ¿Qué leyes, decretos o normativas rigen la operación de este sistema?<br>• **Nivel de Riesgo (Clasificación):** Usando la guía GM-002, clasificar el ST como **Bajo, Medio o Alto**. Esta decisión informará el rigor de los controles.<br>• **Políticas Clave Aplicables:** ¿Qué políticas de seguridad, privacidad o arquitectura se aplican a este sistema? | **Puntos a Considerar:**<br>• **Resultados Clave (KRs) del ST:** ¿Cuáles son las 2-3 métricas de resultado que este ST debe mover para contribuir a los OKRs organizacionales? (ej. "Reducir tiempo de ciclo en 30%").<br>• **Objetivos de Nivel de Servicio (SLOs):** ¿Cuáles son los 2-3 compromisos de fiabilidad y calidad más importantes para los servicios que exponemos? (ej. "Disponibilidad del 99.9%", "Precisión del modelo de IA \> 95%").<br>• **Métricas de Experiencia (UX):** ¿Cómo mediremos la satisfacción del usuario? (ej. CSAT, Tasa de Éxito de Tarea). |

### **A.3. Plantilla: Checklists de Contratos Conversacionales**

**Instrucciones de Uso:** Estas no son plantillas de documentos a rellenar, sino **agendas para una conversación estratégica**. Utiliza el checklist correspondiente para guiar una reunión entre las partes involucradas (ej. el equipo productor y el equipo consumidor de un servicio). El objetivo no es producir un artefacto, sino alcanzar un **entendimiento mutuo y un acuerdo explícito**. Documenta las respuestas y acuerdos de forma simple (una página en la wiki, un email de resumen) como evidencia de la conversación.

---

#### **1. Checklist del Contrato de Datos**

* **Propósito:** Guiar la conversación entre un **productor de datos** y un **consumidor de datos** para asegurar que los datos sean tratados como un producto confiable, comprensible y bien gobernado.
* **Cuándo usarlo:** Cada vez que un Sistema de Trabajo expone un conjunto de datos significativo para ser utilizado por otros.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| **1. Propósito y Semántica** | • ¿Cuál es el nombre y la descripción de este Producto de Datos?<br>• ¿Quién es el equipo "Dueño" responsable de su calidad y ciclo de vida?<br>• ¿Para qué casos de uso está diseñado este dato? ¿Para cuáles NO debe usarse? |
| **2. Estructura y Acceso** | • ¿Qué campos de información contiene? ¿Cuáles son obligatorios?<br>• ¿Cómo se accederá a los datos (ej. API, vista en BBDD, archivo en Data Lake)? |
| **3. Calidad y Fiabilidad (SLOs)** | • ¿Con qué frecuencia se actualizarán los datos y cuál es el compromiso de puntualidad (ej. "actualizado en menos de 30 minutos")?<br>• ¿Cuál es el compromiso de disponibilidad del acceso a los datos (ej. 99.9%)?<br>• ¿Cuáles son las 2 o 3 reglas de calidad más importantes que deben cumplir estos datos para ser útiles? |
| **4. Gobernanza y Seguridad** | • ¿Cuál es la clasificación de seguridad de estos datos? ¿Contienen información personal identificable (PII)?<br>• ¿Cuál es la base legal que nos permite tratar estos datos?<br>• ¿Cuál es la política de retención? ¿Cuándo se deben eliminar estos datos? |
| **5. Evolución y Linaje** | • ¿Cómo se versionará este producto de datos? ¿Cómo se comunicarán los cambios?<br>• ¿De qué fuentes de origen provienen estos datos (linaje)? |

---

#### **2. Checklist del Contrato de Servicio (API)**

* **Propósito:** Guiar la conversación entre el equipo **proveedor** de una API y el equipo **consumidor**, asegurando una integración robusta, resiliente y bien definida.
* **Cuándo usarlo:** Para cada API o servicio expuesto por un Sistema de Trabajo.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| **1. Identidad y Propósito** | • ¿Cuál es el nombre y el propósito de este servicio?<br>• ¿Quién es el equipo "Dueño" del servicio?<br>• ¿A qué nivel de riesgo está clasificado este servicio (Bajo, Medio, Alto)? |
| **2. Interfaz y Endpoints** | • ¿Cuáles son los principales endpoints que ofrece la API?<br>• ¿Dónde está la documentación técnica (ej. OpenAPI/Swagger)?<br>• ¿Qué formato de datos utiliza (ej. JSON)? |
| **3. Fiabilidad y Rendimiento (SLOs)** | • ¿Cuál es el compromiso de disponibilidad (ej. 99.95%)?<br>• ¿Cuál es el compromiso de latencia (ej. "el 95% de las peticiones responderán en menos de 200ms")?<br>• ¿Cuál es el "presupuesto de error" que podemos tolerar? |
| **4. Seguridad y Acceso** | • ¿Cómo se autentican los consumidores (ej. OAuth 2.0)?<br>• ¿Qué permisos o "scopes" se necesitan para usar cada endpoint?<br>• ¿Existen límites de uso (rate limiting)? |
| **5. Evolución y Soporte** | • ¿Qué estrategia de versionado se usará? ¿Cómo se manejarán los cambios que rompen la compatibilidad?<br>• ¿Cuál es el canal de comunicación para soporte o anuncios sobre el servicio? |

---

#### **3. Checklist del Contrato de Agente (IA)**

* **Propósito:** Guiar una conversación profunda sobre la delegación de una tarea a un **Agente Digital (IA)**, asegurando que su diseño sea ético, seguro y centrado en el humano.
* **Cuándo usarlo:** Cada vez que se diseña o integra un componente de IA en un Sistema de Trabajo.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| **1. Propósito y Rol (HCAI)** | • ¿Cuál es el propósito del agente en relación al humano? (**Asistir, Aumentar, Orquestar, Automatizar**).<br>• ¿Qué función cognitiva principal realiza? (**Sentir, Decidir, Actuar**). |
| **2. Autonomía y Supervisión** | • ¿Cuál es el nivel de autonomía del agente (ej. RAG simple, Agente ReAct)?.<br>• ¿Cuál es el modo de interacción con el humano? (**Humano-en-el-Bucle** es el defecto para alto riesgo).<br>• ¿Cuáles son los puntos de control exactos donde el agente DEBE escalar a un humano? |
| **3. Datos y Conocimiento** | • ¿Con qué fuentes de conocimiento (internas/externas) está autorizado a operar?<br>• ¿Cómo garantizamos la calidad y vigencia de ese conocimiento?<br>• ¿Cómo se manejarán los datos personales que procese? |
| **4. Guardarraíles y Seguridad** | • ¿Qué tipo de acciones tiene estrictamente prohibido realizar?<br>• ¿Cómo se monitoreará su rendimiento, coste y calidad (fidelidad, precisión de citas)?<br>• ¿Existe un "interruptor de apagado" (kill switch) en caso de comportamiento anómalo? |
| **5. Transparencia y Explicabilidad** | • ¿Cómo se le informará al usuario que está interactuando con una IA?<br>• Si el agente toma una decisión, ¿cómo se explicará el "porqué" de esa decisión de forma simple? |

---

#### **4. Checklist del Contrato de Suministro**

* **Propósito:** Guiar la conversación con un **proveedor externo** cuya tecnología es una dependencia crítica, asegurando que los compromisos de resiliencia y seguridad sean explícitos.
* **Cuándo usarlo:** Antes de firmar un contrato o al evaluar a un proveedor para un ST de riesgo Medio o Alto.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| **1. Acuerdos de Nivel de Servicio (SLAs)** | • ¿Cuáles son los compromisos de disponibilidad, latencia y soporte que ofrece el proveedor?<br>• ¿Qué penalizaciones existen si no se cumplen los SLAs? |
| **2. Continuidad de Negocio y Resiliencia** | • ¿Cuál es el Objetivo de Tiempo de Recuperación (RTO) y el Objetivo de Punto de Recuperación (RPO) del proveedor en caso de desastre?<br>• ¿Está el proveedor dispuesto a participar en nuestros `Game Days` o ejercicios de simulación de fallos? |
| **3. Seguridad y Cumplimiento** | • ¿Qué certificaciones de seguridad posee (ej. ISO 27001)?<br>• ¿Nos proporcionará un SBOM (Software Bill of Materials) de su producto?<br>• ¿Cómo manejan los datos de nuestra organización? ¿Cumplen con la ley de protección de datos? |
| **4. Gestión de Cambios y Soporte** | • ¿Cómo y con cuánta antelación notifican los cambios en su servicio?<br>• ¿Cuál es el canal y el tiempo de respuesta para incidentes críticos? |

---

#### **5. Checklist del Contrato de Colaboración**

* **Propósito:** Guiar la conversación entre **dos o más organizaciones o divisiones autónomas** para establecer las bases de una iniciativa conjunta.
* **Cuándo usarlo:** Al iniciar un proyecto interinstitucional o una colaboración supraorganizacional.

| Categoría | Preguntas Clave para la Conversación |
| :--- | :--- |
| **1. Propósito y Valor Compartido** | • ¿Cuál es el **objetivo común** que une a las partes?<br>• ¿Qué valor público se generará a través de esta colaboración que ninguna de las partes podría lograr por sí sola? |
| **2. Participantes y Roles** | • ¿Qué organizaciones o divisiones son parte de este acuerdo?<br>• ¿Qué rol principal juega cada una (ej. Proveedor de Servicio, Consumidor, Coordinador)? |
| **3. Gobernanza y Toma de Decisiones** | • ¿Cómo se tomarán las decisiones estratégicas conjuntas (ej. un comité, una mesa de trabajo)?<br>• ¿Qué principios o estándares comunes (de datos, de tecnología) se comprometen a seguir todos los participantes? |
| **4. Servicios y Responsabilidades** | • ¿Qué **servicios compartidos** se crearán o utilizarán?<br>• ¿Qué responsabilidades y compromisos específicos asume cada participante? (ej. "GORE se compromete a mantener la API del servicio X", "Los municipios se comprometen a adoptar el estándar de datos Y"). |
| **5. Métricas de Éxito y Duración** | • ¿Cómo mediremos el éxito de la colaboración en su conjunto (OKR compartido)?<br>• ¿Cuál es la vigencia de este acuerdo y cómo se revisará o renovará? |

### **A.4. Plantilla: Informe para la Revisión de Valor y Capacidad (RVC)**

**Instrucciones de Uso:** Esta plantilla debe ser completada por el Equipo de Flujo de Valor (EFV) de forma asíncrona en la semana previa a la ceremonia de la RVC. El objetivo no es rellenar cada campo con texto denso, sino presentar datos claros y una narrativa concisa que facilite una conversación estratégica. Recuerda: "mostrar, no solo contar". Prepara una demostración en vivo del software para complementar este informe.

---

## **Informe de Revisión de Valor y Capacidad**

**Equipo:** `<Nombre del Equipo de Flujo de Valor>` | **Sistema de Trabajo:** `ST-XXX` | **Período:** `[Ej: Q3 2025]` | **Fecha:** `YYYY-MM-DD`

---

### **1. Resumen Ejecutivo y Propuesta de Inversión**

*(Esta sección es para ser leída en 2 minutos. Resume los hallazgos y va directo a la propuesta.)*

* **Narrativa del Trimestre:** *En una o dos frases, resume la historia principal del último trimestre. Ejemplo: "Nos enfocamos en reducir el tiempo de aprobación del trámite X, y aunque mejoramos la eficiencia interna en un 30%, descubrimos que el principal 'dolor' del ciudadano está en la falta de comunicación, no en la velocidad."*

* **Progreso General de OKRs:** *Evaluar en una escala: `Superado` / `En Rumbo` / `En Riesgo`.*

* **Principal Aprendizaje:** *¿Cuál fue el descubrimiento más importante de este trimestre que cambia nuestra perspectiva sobre el producto o los usuarios?*

* **Propuesta de Inversión para el Próximo Trimestre:** *Basado en nuestros hallazgos, proponemos...*

  * `[X]` **Continuar/Pivotar:** *Mantener la inversión actual para enfocarnos en [nuevo OKR propuesto], ajustando nuestra estrategia hacia [nuevo enfoque].*
  * `[ ]` **Expandir:** *Aumentar la inversión para acelerar [oportunidad validada].*
  * `[ ]` **Reducir:** *Poner el ST en modo mantenimiento y liberar capacidad para [otra prioridad].*
  * `[ ]` **Cerrar:** *Descontinuar el ST porque [razón basada en evidencia].*

---

### **2. Progreso Hacia los OKRs (El Valor Entregado)**

*(Esta es la sección más importante. Demuestra el impacto del trabajo del equipo.)*

**Objetivo del Trimestre:** `<El Objetivo cualitativo que el equipo se propuso. Ej: "Mejorar drásticamente la experiencia de los ciudadanos al solicitar permisos de construcción.">`

| Resultado Clave (KR) | Meta | Resultado Actual | Estado y Análisis |
| :--- | :--- | :--- | :--- |
| **1. Reducir el tiempo promedio de aprobación de 45 a 30 días.** | 30 días | 32 días | 🟡 **En Riesgo.** *Logramos una reducción significativa, pero un cuello de botella inesperado en la validación legal nos impidió alcanzar la meta. Hemos aprendido que la optimización del proceso interno no es suficiente sin abordar las dependencias.* |
| **2. Aumentar el CSAT del trámite de 60% a 75%.** | 75% | 65% | 🔴 **En Riesgo.** *El feedback de las pruebas de usabilidad indica que, aunque el proceso es más rápido, la falta de notificaciones proactivas sigue generando ansiedad en los usuarios.* |
| **3. Disminuir la tasa de solicitudes con errores de 40% a 20%.** | 20% | 18% | ✅ **Superado.** *La nueva interfaz con validaciones en tiempo real fue un éxito rotundo y superó nuestras expectativas.* |

---

### **3. Salud del Sistema de Trabajo (La Fiabilidad del Activo)**

*(Esta sección demuestra que el equipo está gestionando su activo digital de forma responsable.)*

| Métrica de Nivel de Servicio (SLO) | Objetivo | Rendimiento del Trimestre | Presupuesto de Error Consumido | Análisis |
| :--- | :--- | :--- | :--- | :--- |
| **Disponibilidad del Portal** | 99.5% | 99.85% | 30% | ✅ **Saludable.** *Tuvimos cero incidentes mayores. El sistema es estable.* |
| **Latencia p95 de la API de Consulta** | \< 500ms | 420ms | N/A | ✅ **Saludable.** *Las optimizaciones de la base de datos funcionaron como se esperaba.* |

* **Gestión de Deuda Técnica:** *Describe brevemente el trabajo realizado para mantener la salud del código. Ejemplo: "Dedicamos \~15% de nuestra capacidad a refactorizar el antiguo módulo de notificaciones, lo que nos preparará para abordar el feedback de los usuarios el próximo trimestre."*

---

### **4. Salud y Madurez del Equipo (La Capacidad Humana)**

*(Esta sección demuestra que el equipo está mejorando no solo el producto, sino también a sí mismo.)*

* **Foco de Mejora del Trimestre:** *¿En qué se enfocó el equipo para mejorar, según su última autoevaluación? Ejemplo: "Nuestro objetivo era pasar de Nivel 1 a Nivel 2 en Capacidades Técnicas implementando un pipeline de CI."*
* **Resultados y Aprendizajes:** *¿Qué se logró? Ejemplo: "Logramos automatizar el 80% de nuestras pruebas de regresión. Esto ha reducido el tiempo de despliegue de 4 horas a 20 minutos y ha aumentado nuestra confianza para liberar cambios."*
* **Próximo Foco de Mejora:** *¿Cuál es el siguiente objetivo de madurez del equipo? Ejemplo: "Para el próximo trimestre, nos enfocaremos en mejorar nuestro Flujo de Trabajo, implementando límites de WIP más estrictos para reducir nuestro tiempo de ciclo."*

---

### **5. Hoja de Ruta de Opciones (La Apuesta para el Próximo Trimestre)**

*(Aquí es donde el equipo presenta su propuesta estratégica, no un plan detallado.)*

* **Narrativa de la Propuesta:** *Basado en nuestro aprendizaje de que la comunicación es el mayor 'dolor' del ciudadano, proponemos pivotar nuestro enfoque. En lugar de seguir optimizando la velocidad interna, nuestra principal apuesta de valor para el próximo trimestre es construir un sistema de notificaciones proactivas.*
* **OKRs Propuestos para el Próximo Trimestre:**
  * **O:** Crear una experiencia de postulación transparente y libre de ansiedad para el ciudadano.
  * **KR1:** Aumentar el CSAT del trámite de 65% a 85%.
  * **KR2:** Reducir en un 90% las consultas de soporte sobre el estado de un trámite.
  * **KR3:** Asegurar que el 100% de los cambios de estado importantes sean notificados al ciudadano en menos de 5 minutos.

---

### **6. Decisión de Inversión de la Gobernanza (A ser completado durante la RVC)**

* **Decisión Final:** `Continuar/Pivotar` | `Expandir` | `Reducir` | `Cerrar`
* **Justificación y Comentarios de la Gobernanza:**
  * *\<Espacio para que la gobernanza registre su decisión y el razonamiento detrás de ella.\>*
* **OKRs Aprobados para el Siguiente Trimestre:**
  * *\<Se confirman o ajustan los OKRs propuestos por el equipo.\>*

### **A.5. Lecturas Recomendadas y Fuentes Teóricas**

ASTA-SIGMA Lite no nació en el vacío. Es el resultado de una profunda síntesis de varias de las ideas más potentes en los campos de la teoría de sistemas, la agilidad, la gestión estratégica y el diseño centrado en el humano. Este anexo presenta las fuentes teóricas clave que conforman el ADN del marco. Se recomienda su lectura a aquellos que deseen no solo aplicar el marco, sino dominar sus principios fundamentales.

---

#### **Fundamentos de Sistemas, Arquitectura y Gestión Pública**

1. **"Work System Theory" (WST) y "Digital Transformation Progress Model" (DTPM)**
    * **Fuente:** Artículos y trabajos de **Steven Alter**.
    * **Idea Central:** Proporciona un método riguroso para analizar organizaciones como **sistemas sociotécnicos** donde humanos y máquinas realizan trabajo. Su "Work System Framework" de 9 elementos es la base del Canvas del ST. El DTPM ofrece un modelo para entender las fases y recursos de la transformación.
    * **Contribución a ASTA-SIGMA Lite:**
        * Es el **pilar conceptual más importante**. Nos da la unidad de análisis central: el **Sistema de Trabajo (ST)**.
        * Proporciona el **Agent Responsibility Framework**, que es la base para nuestro **Contrato de Agente (IA) Lite**.
        * Informa nuestra visión de la transformación como un proceso evolutivo y no lineal.

2. **"Introducción a la gestión pública" y herramientas de gestión**
    * **Fuente:** Material basado en los principios de gestión de **Mario Waissbluth**.
    * **Idea Central:** Adapta los principios de la gestión estratégica y el control de desempeño a las particularidades del sector público, donde el objetivo es la maximización del **valor público** y no la ganancia financiera.
    * **Contribución a ASTA-SIGMA Lite:**
        * Ancla todo el marco en la realidad del Estado. Asegura que los OKRs, las métricas y las decisiones de la RVC estén siempre orientados a la generación de valor para la ciudadanía.
        * Proporciona el contexto para el rol de la gobernanza y los comités estratégicos.

3. **"Organization as an Organism"**
    * **Fuente:** Perspectiva de arquitectura empresarial descrita en `ea-organism.md`.
    * **Idea Central:** Critica la AE tradicional por su enfoque "de adentro hacia afuera" y propone ver a la organización como un organismo vivo que debe adaptarse a un entorno externo dinámico.
    * **Contribución a ASTA-SIGMA Lite:**
        * Justifica el enfoque en las **fronteras y dependencias** del Sistema de Trabajo.
        * Es la base para el uso de **Contratos Conversacionales** (de Suministro, de Colaboración) para gestionar las interacciones con el ecosistema.

---

#### **Operación Ágil y Flujo Continuo**

1. **"Continuous Digital" y la filosofía `#NoProjects`**
    * **Fuente:** Libro y filosofía de **Allan Kelly**.
    * **Idea Central:** Argumenta de forma convincente que el modelo de "proyecto" es obsoleto para el desarrollo digital. Propone organizar el trabajo en **flujos de valor continuos**, con **equipos estables** que son dueños de los activos digitales a largo plazo.
    * **Contribución a ASTA-SIGMA Lite:**
        * Es la **filosofía operativa central**. De aquí nacen los **Equipos de Flujo de Valor (EFV)**.
        * El modelo de financiamiento tipo "Venture Capital" inspira directamente la ceremonia de **Revisión de Valor y Capacidad (RVC)** y sus cuatro decisiones de inversión.

2. **"Succeeding with OKRs in Agile"**
    * **Fuente:** Libro de **Allan Kelly**.
    * **Idea Central:** Proporciona un método práctico y ágil para implementar **OKRs (Objetivos y Resultados Clave)**, no como un sistema de control de arriba hacia abajo, sino como un framework para el alineamiento y la autonomía de los equipos.
    * **Contribución a ASTA-SIGMA Lite:**
        * Proporciona el **lenguaje universal para la estrategia**. Los OKRs son el mecanismo que conecta el trabajo diario de los EFV con la misión de la organización.
        * Estructura la conversación de la RVC, que se centra en el progreso de los OKRs.

3. **"Xanpan: Team Centric Agile Software Development"**
    * **Fuente:** Libro de **Allan Kelly** y **Henrik Kniberg** (popularizador).
    * **Idea Central:** Describe una metodología híbrida que combina la simplicidad y el foco en el flujo de **Kanban** con las prácticas de calidad técnica y de equipo de **Extreme Programming (XP)**.
    * **Contribución a ASTA-SIGMA Lite:**
        * Es la **metodología táctica recomendada** para el bucle interno de los EFV. Sus principios (limitar WIP, gestionar el flujo) son la base de la Fase 2 del proceso de arquitectura.

---

#### **Diseño Centrado en el Humano y la Experiencia**

1. **"The Design of Human-Centered Artificial Intelligence"**
    * **Fuente:** Trabajo académico y principios popularizados por **Ben Shneiderman** y otros, reflejados en el extracto `parcial libro human centreded.md`.
    * **Idea Central:** Propone un marco para diseñar sistemas de IA que potencien a los humanos en lugar de reemplazarlos. Clasifica la IA por su **propósito** (Asistir, Aumentar, etc.) y su **función cognitiva** (Sentir, Decidir, Actuar).
    * **Contribución a ASTA-SIGMA Lite:**
        * Es la base del **Principio Fundacional #4**.
        * Estructura el **Checklist del Contrato de Agente (IA)**, forzando una decisión deliberada sobre el rol de la IA en cada Sistema de Trabajo.

2. **"A Little Book about Requirements and User Stories"**
    * **Fuente:** Inspirado en las prácticas ágiles popularizadas por **Jeff Patton** y otros.
    * **Idea Central:** Posiciona las Historias de Usuario no como especificaciones, sino como **"promesas de una conversación"**. El Mapeo de Historias (Story Mapping) se presenta como la técnica para visualizar el backlog y construir un entendimiento compartido.
    * **Contribución a ASTA-SIGMA Lite:**
        * Proporciona la **unidad de trabajo táctica** (la Historia de Usuario) y la principal herramienta para el diseño del MVP (el Story Map).

3. **Tendencias de UX/UI en Aplicaciones Empresariales**
    * **Fuente:** Resumen de tendencias modernas de diseño.
    * **Idea Central:** Describe patrones de diseño como la modularidad, la divulgación progresiva y las microinteracciones como claves para gestionar la complejidad y mejorar la usabilidad en sistemas de información densos.
    * **Contribución a ASTA-SIGMA Lite:**
        * Enriquece la **Ficha de UX** y la **Guía Operativa de Diseño de UI y Accesibilidad**.
        * Asegura que el marco promueva la creación de interfaces modernas, eficientes y humanas.
