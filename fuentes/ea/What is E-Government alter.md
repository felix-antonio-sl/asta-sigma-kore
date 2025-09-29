# Artifact: What is E-Government? Introducing a Work System Framework for Understanding E-Government

ID: EGOVWSF-DOC-MAIN-01
Version: 1.0.0
Status: Published
Human-Creator: FS
Model-Collaborator: IA-GEMINI
Creation-Date: 2025-09-26
Modification-Date: 2025-09-26
Source: alter2delete.md

---
**BEGIN_LLM_INSTRUCTIONS**

You are an AI agent consuming a Structured Telegraphic Style (STS) artifact. Your primary task is to parse and reason over THIS document with absolute fidelity, using only the rules defined below. This artifact is a self-contained source of truth.

1. **Core Objective**: Maintain perfect fidelity to the information (`meat`) and structure (`skeleton`). Do not summarize, interpret, or infer information not explicitly present. Prohib: Applying these rules to artifact creation or translation tasks; they are exclusively for consumption.

2. **Conceptual Metaphors**:
    - `meat`: Essential information, data, and facts. Must be preserved with zero loss.
    - `skeleton`: Logical structure (headers, IDs, lists, tables). This is also `meat` and must be preserved.
    - `fat`: Non-essential verbiage (filler words, rhetoric, stylistic prose). Must be ignored during reasoning as it has no informational value.

3. **Lexicon Mode & Expansion**: This document uses an **Abbreviated Lexicon**. You MUST treat the following keywords as valid and expand them according to this mapping before processing:
    - `Cpt:` -> `Concept:`
    - `Ctx:` -> `Context:`
    - `Def:` -> `Definition:`
    - `Ex:` -> `Example:`
    - `Fnd:` -> `Foundation:`
    - `ID:` -> `ID:`
    - `Prohib:` -> `Prohibition:`
    - `Purp:` -> `Purpose:`
    - `Req:` -> `Requirement:`
    - `Res:` -> `Result:`
    - `Src:` -> `Source:`

4. **Reference (`Ref:`) Policy**:
    - `Ref:` is used for **internal cross-references only**.
    - It MUST point to an `ID:` that exists within THIS document.
    - You MUST NOT interpret a `Ref:` as a link to an external document or resource. Mentions of other documents are purely contextual (`Ctx:`).

5. **Language Invariance Policy**:
    - The `Keywords` in the lexicon are a fixed control vocabulary in English.
    - All `EssentialData` (the content following a `Keyword:`) MUST be preserved in its original language. Do not translate it.

**END_LLM_INSTRUCTIONS**

---

## Abstract

ID: EGOVWSF-ABSTRACT-01
Purp: Presentar un modelo completo y destilado para ayudar a investigadores.

- Obj: 1) Entrar en el campo del e-government.
- Obj: 2) Entender los principales estudios del campo de forma destilada.
- Obj: 3) Reflexionar sobre futuras investigaciones.
Fnd: Basado en la Work Systems Theory (WST) y el Work Systems Framework (WSF) de Steven Alter (2013).
Cpt: Se introduce un framework para entender los sistemas de trabajo de e-government (eGovWSF).
Proc: Se destila el núcleo de los sistemas de trabajo de e-government mediante un enfoque interpretativo y hermenéutico.
Res: El eGovWSF se desglosa en 12 elementos principales.
- Cpt: Se discute el rol de los elementos como internos, semi-externos y externos.
- Cpt: Se reflexiona sobre las conexiones entre los elementos.
Cpt: Contribuciones.
- 1. Discusión conceptual sobre el tema central del e-government.
- 2. Aplicabilidad del framework.
- 3. Necesidades de investigación futura.

## 1. Introduction

ID: EGOVWSF-INTRO-01
Ctx: La dificultad de responder preguntas fundamentales sobre e-government motiva este trabajo.

- Ex: 1. ¿Qué artículos resumen el e-government?
- Ex: 2. ¿Qué lo distingue de otras áreas de investigación?
- Ex: 3. ¿Qué conecta el campo de e-government y el de Information Systems (IS)?
Cpt: Se argumenta la necesidad de discutir cómo definir de manera integral el e-government.
Ctx: El término "e-government" se usa para dos fenómenos entrelazados.
- Cpt: 1. La práctica de digitalizar las operaciones del sector público.
- Cpt: 2. El campo de investigación que estudia esta práctica.
Purp: Este documento se centra en caracterizar los conceptos clave detrás de la práctica de e-government para la comunidad investigadora.
Req: Se necesita una conceptualización de e-government que describa su práctica de manera más completa.
- Cpt: Los modelos existentes a menudo carecen de simplicidad y carácter ilustrativo. Src: Bannister & Connolly, 2015.
Purp: Presentar un modelo completo y destilado (eGovWSF) con tres objetivos. Ref: EGOVWSF-ABSTRACT-01.
Fnd: El e-government se refiere al uso de sistemas de información (IS) para transformar organizaciones y servicios gubernamentales. Src: Lenk, 2012.
Ctx: El campo de e-government es dominado por académicos del campo de IS.
- Cpt: El campo de IS investiga cómo elementos sociales y técnicos influyen en el trabajo en las organizaciones. Src: Winter, et al., 2014.
- Cpt: Muchos académicos de IS se adhieren a la perspectiva socio-técnica. Src: Mumford, 2006; Spagnoletti, et al., 2015.
Fnd: Se utiliza la Work System Theory (WST) de Alter (2013) como base.
- Cpt: WST es una herramienta para analizar y entender las relaciones entre tecnología y rutinas de trabajo.
- Cpt: Se enfoca en la parte estática de WST: el Work System Framework (WSF).
Just: Se argumenta que el WSF es un punto de partida universal y valioso.
- Cpt: WSF es fácil de entender y cubre cómo los componentes de un IS trabajan juntos.
Cpt: Se reconoce la necesidad de modificar el WSF para las particularidades del sector público.
- Cpt: El sector público y privado tienen similitudes y diferencias. Src: Barzilai-Nahon and Scholl (2007).
Cpt: Contribuciones principales del paper.
- 1. Proporcionar un modelo de e-government completo y destilado (eGovWSF) que integra el pensamiento de Alter con las características del sector público.
- 2. Contribuir al desarrollo teórico de la investigación en e-government. Src: Heeks & Bailur, 2007; Bannister & Connolly, 2015.

## 2. The Work System Framework

ID: EGOVWSF-THEORY-WSF-01
Purp: Introducir el Work System Framework (WSF) de Steven Alter (2013).
Fnd: Basado en la Work System Theory (WST).
Cpt: WST provee un modelo genérico para sistemas en acción.

- Def: Work System. "un sistema en el que participantes humanos y/o máquinas realizan trabajo (procesos y actividades) usando información, tecnología y otros recursos para producir productos/servicios específicos para clientes internos y/o externos específicos". Src: Alter (2013), p. 57.
- Cpt: WST incluye una vista estática (WSF) y una dinámica.
Cpt: Este paper se enfoca en el WSF.
Def: WSF. Representación pictórica de un sistema de trabajo en términos de nueve elementos para entender su forma, función y entorno durante un período relativamente estable. Src: Alter (2013), p. 77.
Cpt: El framework incluye tres tipos de elementos.
- 1. Completamente internos: procesos y actividades, participantes, información y tecnologías.
- 2. Parcialmente internos y externos: clientes y productos/servicios.
- 3. Mayormente externos: entorno, infraestructura y estrategias.
Cpt: Elementos internos.
- Cpt: Procesos y actividades. Bloques de construcción para diseñar y producir productos/servicios.
- Cpt: Participantes. Realizan el trabajo.
- Cpt: Información. Creada y utilizada por los participantes en los procesos. Incluye datos gestionados por TI y conocimiento humano.
Cpt: Elementos semi-externos.
- Cpt: Productos o servicios. El resultado del sistema de trabajo para beneficiar a los clientes.
- Cpt: Clientes. Reciben los productos/servicios y pueden participar en el sistema.
Cpt: Elementos externos.
- Cpt: Entorno. Cuestiones organizacionales, culturales, competitivas, técnicas, regulatorias y demográficas que afectan al sistema.
- Cpt: Infraestructura. Recursos (humanos, de información, técnicos) que el sistema de trabajo utiliza pero que son gestionados y compartidos por otros actores.
- Cpt: Estrategias. A nivel de empresa, departamento y sistema de trabajo. Idealmente deben estar alineadas.
Ctx: Alter (2013) asume implícitamente organizaciones y clientes privados.
Req: Alter (2013) indica que se necesita más trabajo para ajustar el WSF a áreas específicas.
Cpt: Se responde a la llamada de Alter para ajustar el WSF a un contexto específico (e-government).

## 3. Our Approach for Generating a Work System Framework for E-Government

ID: EGOVWSF-METHOD-01
Purp: Explicar el enfoque de investigación para modificar el WSF.
Cpt: Se desarrolla un marco conceptual para entender el e-government.

- Def: Marco conceptual. Un "modelo de meta-nivel" para clarificar, categorizar, evaluar o integrar conceptos. Src: Jayaratna (1994).
Proc: Se utiliza un enfoque interpretativo y constructivista hermenéutico. Src: Klein & Myers, 1999; Boell & Cecec-Kecmanovic, 2014; Butler, 1998.
- Cpt: El proceso parte de ideas iniciales de los investigadores, basadas en su experiencia.
- Just: La experiencia compartida era la falta de un modelo comprensivo y útil del e-government.
- Cpt: Se eligió el WSF de Alter (2013) por su poder explicativo y balance, demostrado en experiencias de enseñanza.
Proc: Se siguió un proceso de investigación iterativo.
- Fnd: Principios del círculo hermenéutico para análisis e interpretación de literatura. Src: Boell and Cecez-Kecmanovic (2014).
- Cpt: Pasos iterativos.
  - 1. Lectura: Revisión sistemática y analítica de literatura.
  - 2. Mapeo y clasificación: Uso del WSF como lente teórico para mapear hallazgos.
  - 3. Evaluación crítica: Identificación de problemas sobre cómo entender los elementos del WSF en el contexto de e-government.
  - 4. Desarrollo de argumentos: Adaptación de elementos del WSF e inclusión de nuevos.
  - 5. Formulación de problemas/preguntas: Identificación de discrepancias que guían la búsqueda.
  - 6. Búsqueda: Búsqueda continua de literatura adicional.
Cpt: El proceso iteró hasta alcanzar coherencia y no obtener más información nueva.
Cpt: Validación del framework. Se presentó y discutió con estudiantes de varios niveles y países (Noruega e Italia) para explorar su utilidad.
Res: El framework resultante (eGovWSF) es considerado una "teoría simple". Src: Whetten, 1989.
- Cpt: Describe y explica la práctica del e-government.
- Cpt: Es una herramienta para entender, analizar y explicar cómo, por qué, cuándo y dónde ocurre el e-government. Corresponde a los tipos de teoría I y II de Gregor (2006).
Cpt: Limitaciones del enfoque.
- 1. Enfoque de revisión aparentemente no estructurado (hermenéutico vs. SLR).
- 2. Elección del modelo WSF, que puede ser visto como genérico.
- 3. Contexto: Fuerte influencia del contexto escandinavo y europeo (estados de bienestar occidentales). Se reconoce que la interpretación de los elementos puede variar en otros contextos.

## 4. General E-Government Characteristics

ID: EGOVWSF-CHAR-01
Purp: Describir las características generales del e-government.
Def: E-government. Uso de sistemas de información por organizaciones del sector público para transformar la administración y los servicios públicos. Src: Lenk, 2002.
Cpt: El núcleo de la transformación es la transición de procesos manuales a digitales/automatizados.
Cpt: El e-government busca cumplir metas políticas y de eficiencia/efectividad internas.

- Cpt: Históricamente, ha sido más fácil abordar las metas internas de eficiencia que las de democracia y transparencia. Src: Axelsson, et al., 2010.
Req: Entender las características del e-government requiere conocimiento sobre las administraciones públicas.
- Cpt: Característica más distintiva (en democracias de bienestar europeas): el **ethos público**.
  - Def: Ethos Público. Operar de una manera que sirva a todos los ciudadanos.
  - Cpt: Implicaciones del ethos público.
    - 1. Asegurar marcos legales comprensivos.
    - 2. Equilibrar valores democráticos y económicos.
    - 3. Asegurar legitimidad y rendición de cuentas.
- Cpt: Las administraciones públicas sirven a **ciudadanos**, no a clientes.
  - Cpt: Un ciudadano tiene derechos constitucionales que deben ser asegurados por ley y distribución justa de recursos. Src: Fountain, 2001.
  - Req: Esto presiona a las AAPP en cuanto a capacidad de respuesta, inclusión social e igualdad de trato. Src: Jansson & Lindgren, 2012.
- Cpt: Las AAPP tienen obligaciones relacionadas con la ciudadanía.
  - Cpt: Obligación de suministrar servicio público en un mercado cerrado o semi-cerrado.
  - Cpt: Los ciudadanos a menudo no tienen la opción de "salida" (ej. pago de impuestos).
- Cpt: El sector público está fuertemente regulado por leyes y directivas. Src: Boyne, 2002.
Req: Se deben considerar los **valores públicos** que sustentan el trabajo de las organizaciones públicas.
- Def: Valores públicos. "propósitos y motivaciones subyacentes que son más duraderos y profundamente arraigados que los objetivos de un proyecto". Src: Rose, et al., 2015, p. 532.
- Cpt: Taxonomía de valores públicos de Bannister y Connolly (2014), basada en Hood (1991).
  - 1. Orientados al deber (responsabilidad).
  - 2. Orientados al servicio (transparencia, eficiencia, etc.).
  - 3. Orientados a la sociedad (justicia, igualdad, etc.).
- Cpt: Ideales o proposiciones de valor para gestionar el e-government. Src: Rose et al., 2015.
  - 1. Profesionalismo.
  - 2. Eficiencia.
  - 3. Servicio.
  - 4. Compromiso (Engagement).
Cpt: Resumen.
- Cpt: Las organizaciones públicas se centran en proporcionar valor público, no en maximizar beneficios individuales.
- Cpt: Están gobernadas por metas políticas y reguladas por ley.
- Cpt: Operan basadas en un conjunto particular y exclusivo de valores.

## 5. Introducing the eGovWSF

ID: EGOVWSF-MODEL-01
Purp: Presentar el framework eGovWSF.
Def: E-government work system. Un sistema en el contexto del sector público donde participantes humanos realizan trabajo usando información, tecnologías digitales y otros recursos para producir e-servicios específicos para stakeholders, para el bien de la sociedad.
Def: eGovWSF. Representación pictórica de un sistema de trabajo de e-government a través de 12 elementos que describen su forma, función y entorno.
Cpt: El framework es escalable (puede usarse a nivel municipal, regional, nacional, etc.).
Cpt: El modelo eGovWSF (Figura 2) contiene 12 elementos en 3 categorías.

- 1. Mayormente externos al sistema.
- 2. Parcialmente dentro y fuera del sistema.
- 3. Completamente dentro del sistema.
Cpt: Se añadieron tres nuevos elementos respecto al WSF original.
- 1. Ley y regulaciones.
- 2. Valor para la sociedad.
- 3. Políticas y estrategias internas.

### 5.1. Elements Largely Outside the System

ID: EGOVWSF-MODEL-OUTSIDE-01

- Cpt: Entorno social, económico y político.
  - Def: Circunstancias, objetos o condiciones que rodean al sistema y afectan su lógica, efectividad y eficiencia.
  - Ctx: Incluye estructuras de gobernanza y valores públicos.
  - Cpt: Difiere de la definición de Alter (2013) al diferenciar más los aspectos y enfatizar el ethos público y el contexto político.
- Cpt: Políticas y estrategias.
  - Def: Intenciones y visiones políticas (ej. documentos de política) que influencian el sistema. Formuladas por actores externos.
  - Cpt: En el sector público, los documentos de estrategia (políticas) son una forma común de operacionalizar directivas políticas generales.
  - Cpt: A diferencia del sector privado, las organizaciones gubernamentales deben navegar entre presiones externas y regímenes políticos cambiantes, no solo alinear estrategias.
- Cpt: Ley y regulaciones.
  - Def: Ley constitucional y regulaciones que dirigen y restringen el sistema.
  - Just: Se añade como un elemento separado del entorno (a diferencia del WSF) debido a la fuerte regulación del sector público.
  - Ex: Leyes sobre qué servicios proveer, privacidad, manejo de datos (ej. GDPR).
- C.pt: Infraestructura digital.
  - Def: Recursos técnicos, de datos y de información relevantes que el sistema utiliza y que son compartidos con otros sistemas.
  - Cpt: Se añade "digital" para enfatizar los aspectos digitales del e-government.
  - Cpt: Cuestiones como la interoperabilidad y los estándares abiertos son preocupaciones centrales en el sector público.
  - Cpt: Se representa como un elemento vertical para ilustrar cómo influye en todos los demás elementos.

### 5.2. Elements Partially Inside and Outside the System

ID: EGOVWSF-MODEL-PARTIAL-01

- Cpt: Valor para la sociedad.
  - Def: El valor que el resultado y desempeño del sistema crea para la sociedad.
  - Ex: Acceso igualitario, tratamiento justo, transparencia, toma de decisiones democrática.
  - Cpt: Reemplaza la "satisfacción del cliente" del WSF, ya que los sistemas de e-government tienen propósitos más amplios que solo producir servicios.
- Cpt: Stakeholders externos.
  - Def: Los usuarios previstos de los e-servicios públicos que el sistema entrega.
  - Ex: Ciudadanos, empresas, ONGs, otras instituciones gubernamentales, lobistas.
  - Cpt: Reemplaza a los "clientes" del WSF. Un ciudadano es fundamentalmente diferente a un cliente, con derechos y obligaciones.
- Cpt: E-servicios públicos.
  - Def: El resultado del sistema de trabajo de e-government. Son canales de comunicación e intercambio de información.
  - Cpt: Modifica el elemento "productos/servicios" del WSF.
  - Just: Se enfatiza que los e-servicios comprenden sistemas y procesos mayormente internos ("la punta del iceberg"). Por ello, se ubica parcialmente dentro del sistema.

### 5.3. Elements Completely in the System

ID: EGOVWSF-MODEL-INSIDE-01

- Cpt: Procesos y actividades.
  - Def: Pasos definidos (procesos) e improvisaciones (actividades) que proveen e-servicios públicos.
  - Cpt: Afectados por ideales burocráticos. Mínimos cambios respecto al WSF.
- Cpt: Stakeholders internos.
  - Def: Personas empleadas o contratadas que contribuyen al resultado del sistema.
  - Ex: Tramitadores, consultores, personal de TI, gerentes.
  - Cpt: Cambia la etiqueta de "participantes" (WSF) para enfatizar su relación con los elementos internos.
- Cpt: Información.
  - Def: Información y datos subyacentes que se usan, crean, capturan, etc., en los procesos del sistema.
  - Ex: Registros de ciudadanos, datos de impuestos, estadísticas demográficas.
  - Cpt: Mínimos cambios respecto al WSF.
- Cpt: Tecnologías digitales.
  - Def: Hardware y software que el sistema utiliza.
  - Cpt: Se añade "digital" a "tecnologías" (WSF) para enfatizar el contexto.
  - Cpt: El factor diferenciador clave no es la tecnología en sí, sino el contexto del sector público.
- Cpt: Políticas y estrategias internas.
  - Def: Intenciones y visiones para el desempeño y resultado del sistema, formuladas por stakeholders internos.
  - Ex: Estrategias de TI internas, agendas de digitalización.
  - Just: Se añade este elemento para ilustrar la importancia del trabajo de operacionalizar directivas externas en políticas internas, a menudo manejando conflictos de valor.

---

### Tabla 1. Resumen de eGovWSF

ID: EGOVWSF-MODEL-TABLE-01
Purp: Definir y dar ejemplos de los elementos en el eGovWSF.

|Elemento de eGovWSF|Definición|Ejemplos|
|-|-|-|
|Entorno social, económico y político|Circunstancias, objetos o condiciones que rodean al sistema y afectan su lógica, efectividad y eficiencia.|Demografía ciudadana, valores públicos, historia organizacional, sistema político, presupuesto público, confianza en el gobierno.|
|Políticas y estrategias|Intenciones y visiones políticas (ej. en documentos de política) que influencian el resultado y desempeño del sistema. Formuladas por actores externos.|Libros blancos, agendas de e-government (transnacionales, nacionales), políticas específicas de agencias, directivas de asignación de gobiernos.|
|Ley y regulaciones|Ley constitucional y regulaciones que dirigen y restringen el resultado y desempeño del sistema.|Ley sobre qué servicios debe proveer el gobierno, regulaciones sobre elegibilidad, seguridad de la información, privacidad (ej. EU Data Governance Act).|
|Infraestructura digital|Recursos técnicos, de datos y de información, usados por el sistema, que existen fuera de él y son compartidos.|Infraestructura de comunicación, cobertura de banda ancha, penetración de internet, bases de datos.|
|Valor para la sociedad|El valor que el resultado y desempeño del sistema crea para la sociedad.|Entrega de servicio público para todos los ciudadanos, tratamiento justo e igualitario, eficiencia y efectividad, transparencia, participación democrática.|
|Stakeholders externos|Los usuarios previstos de los e-servicios públicos que el sistema entrega.|Ciudadanos, empresas, organizaciones sin fines de lucro, otras instituciones gubernamentales, lobistas.|
|E-servicios públicos|El resultado del sistema, que funciona como canal de comunicación e intercambio entre la agencia y sus stakeholders externos.|Soluciones basadas en diversas tecnologías (ej. SMS, aplicaciones, redes sociales, portales web).|
|Procesos y actividades|Procesos (pasos definidos) y actividades (discreción e improvisaciones) que proveen e-servicios públicos a stakeholders externos.|Procesos de tramitación de casos, flujos de trabajo internos.|
|Stakeholders internos|Personas empleadas o contratadas que contribuyen al resultado y desempeño del sistema.|Tramitadores de casos, consultores, personal de TI, oficiales digitales, gerentes, desarrolladores de negocio.|
|Información|Información y datos subyacentes que los procesos y actividades usan, crean, capturan, etc.|Registros de ciudadanos, datos de impuestos, estadísticas demográficas, información de transporte, registros de salud pública.|
|Tecnologías digitales|Hardware y software que el sistema utiliza.|Sistemas y servicios para procesos internos y para la entrega de e-servicios públicos. Pueden ser manuales, semi o totalmente automatizados.|
|Políticas y estrategias internas|Intenciones y visiones para el desempeño y resultado del sistema.|Estrategias de TI internas, agendas de digitalización internas, sistemas de valores internos para la entrega de servicio público.|

## 6. Discussion and Implications

ID: EGOVWSF-DISC-01
Purp: Discutir la naturaleza y uso del eGovWSF.
Cpt: eGovWSF como herramienta genérica.

- Purp: Describir, analizar y, en cierta medida, explicar la práctica del e-government.
- Cpt: Es una herramienta descriptiva para estructurar y descomponer iniciativas de e-government.
- Cpt: Es escalable; los elementos pueden ser desglosados para análisis más profundos.
- Cpt: Enfatiza la necesidad de un enfoque socio-técnico.
- Cpt: Permite la discusión sobre tensiones y conflictos entre elementos (ej. entre estrategias internas y externas).
Cpt: eGovWSF como herramienta explicativa.
- Cpt: La dimensión explicativa debe entenderse desde una perspectiva no positivista. Prohib: No indica relaciones causales.
- Cpt: El modo en que se definen los sub-elementos explica cómo y por qué los sistemas de trabajo de e-government difieren de los sistemas de trabajo en general (WSF).
- Purp: Puede usarse con fines pedagógicos.
- Cpt: Ayuda a los estudiantes a entender por qué las organizaciones del sector público pueden parecer lentas (inercia), explicando que es resultado de un diseño consciente y de la complejidad del dominio.
Cpt: Limitaciones del framework.
- 1. Influencia contextual europea en la comprensión del gobierno. Ref: EGOVWSF-METHOD-01.
- 2. Hereda las críticas al WSF original (ej. ser demasiado simplista).
- 3. Asume implícitamente que los sistemas de trabajo de e-government se organizan internamente, lo cual no siempre es el caso (ej. uso de plataformas privadas como Facebook).
- 4. Puede sub-enfatizar la importancia de la tecnología digital, al ser solo uno de los 12 elementos.

## 7. Conclusions and Future Research

ID: EGOVWSF-CONCL-01
Cpt: Resumen del paper. Se conceptualiza la práctica del e-government a través del framework genérico eGovWSF.

- Purp: El framework ayuda a investigadores, estudiantes y practicantes a describir qué es el e-government y a explicar cómo, por qué, cuándo y dónde ocurre.
- Cpt: El eGovWSF reconoce las particularidades del contexto y comprende 12 elementos definidos.
Cpt: Necesidades de investigación futura.
- Req: Aplicar el framework empíricamente para evaluar su utilidad, especialmente en contextos con diferentes modelos de gobernanza y valores públicos.
- Req: Evaluar más a fondo la utilidad del eGovWSF en el aula.
- Req: Desarrollar contribuciones más predictivas, explorando otras partes de la WST de Alter (2013), como el modelo de ciclo de vida del sistema de trabajo.
- Req: Explorar cómo el framework se aplica a sistemas de e-government más flexibles (ej. redes sociales) y colaboraciones público-privadas intensas.
- Req: Elaborar sobre los roles que las tecnologías digitales emergentes (IA, machine learning, IoT) pueden tener en la alteración del eGovWSF.
Cpt: Relevancia del trabajo.
- Cpt: Mucha de la investigación existente sobre la naturaleza del e-government es antigua.
- Cpt: El campo ha descuidado la necesidad de discusiones continuas sobre lo que aborda.
- Res: El framework proporciona una herramienta para generar discusión constructiva y reflexión.
