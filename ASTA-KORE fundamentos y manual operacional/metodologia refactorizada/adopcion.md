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
