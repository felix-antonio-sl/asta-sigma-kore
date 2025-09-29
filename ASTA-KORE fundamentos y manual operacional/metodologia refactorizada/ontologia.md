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

### 1.7. `Contrato Conversacional`

* Descripción: Un acuerdo explícito que define la interacción entre dos `Entidades de Valor`. Es el resultado de una conversación guiada, no un documento legalista. Su implementación técnica se materializa en los `Contratos Nexus` (`de Datos`, `de Proceso`, `de Agente`, etc.).

### 1.8. `Nodo de Gobernanza`

* Descripción: Una entidad (persona o comité) responsable de la toma de decisiones estratégicas sobre un conjunto de `Entidades de Valor`.
* Subtipos:
  * `Nodo Central de Gobernanza (NCG)`: Responsable de la estrategia, estándares y plataformas compartidas de todo el ecosistema. *Relación:* `coordina` múltiples `Nodos Federados`.
  * `Nodo Federado de Gobernanza (NFG)`: Responsable de la implementación de la estrategia y la gestión del portafolio en un dominio o institución específica. *Relación:* `implementa directrices de` un `NCG`.

### 1.9. `Overlay Regulatorio`

* Descripción: Un conjunto de axiomas y restricciones derivados de un marco normativo (leyes, decretos) que se aplican a una o más `Entidades de Valor`.
* Relación: Una `EV` `debe cumplir con` uno o más `Overlays Regulatorios`.

### 1.10. `Proyecto Espejo`

* Descripción: Un artefacto administrativo auxiliar. Es la representación de un ciclo de inversión trimestral de una `EV`, utilizada para la comunicación y cumplimiento con sistemas de gobernanza externos (ej. control presupuestario). Su alcance está definido por un `OKR Trimestral`.
* Relación: Un `Ciclo de Valor y Capacidad (CVC)` `puede generar` un `Proyecto Espejo`.

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
