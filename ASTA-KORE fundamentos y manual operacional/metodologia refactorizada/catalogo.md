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

### 5. Recomendación de Asignación de Recursos (Propuesta para el Siguiente Trimestre)

*Basado en nuestro aprendizaje, esta es nuestra recomendación para la asignación de recursos desde el Portafolio de Capacidad "[Nombre del Portafolio]".*

Recomendación: [Elegir una: Continuar Inversión / Reorientar hacia Nuevo Objetivo / Expandir para Escalar Impacto / Concluir y Transferir Recursos]

Objetivo Propuesto: [El nuevo Objetivo para el próximo Q]

| Resultado Clave Propuesto (KR) | Hipótesis de Valor |
| :--- | :--- |
| KR 1: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |
| KR 2: [Descripción del nuevo KR] | Creemos que [acción] impactará en [métrica] porque [razonamiento]. |
```

## A.2. Plantillas de Nivel Táctico (Σ-T / Δ-T)

### Plantilla A.2.1: Canvas de Entidad de Valor (EV) (Σ-T)

Instrucciones: Este no es un documento para ser rellenado en solitario. Utilice este canvas en una sesión de taller colaborativo (físico o digital) con todos los miembros del equipo de la EV y stakeholders clave. Use post-its y marcadores. El objetivo es generar diálogo, visualizar el sistema como un todo y crear un entendimiento compartido. El resultado es un mapa vivo, no un documento estático.

El canvas se estructura en dos partes: La Anatomía del Valor (el núcleo del sistema) y El Contexto Operacional (sus restricciones y medidas).

```markdown
# Canvas de Entidad de Valor: [Nombre de la EV]

ID: `EV-XXX` | Versión: `1.0` | Equipo Dueño: `<Nombre del Equipo>` | Fecha: `YYYY-MM-DD`

---

### Parte 1: La Anatomía del Valor

| 1. Propósito y Valor Público | 2. Actores y Experiencia | 3. Flujo de Valor Principal |
| :--- | :--- | :--- |
| ¿POR QUÉ existe esta EV? | ¿PARA QUIÉN diseñamos? | ¿CÓMO funciona de punta a punta? |
| • Propósito Esencial: (Verbo + Qué + Para Qué)<br>• Alineamiento Estratégico: (OKR Anual al que contribuye)<br>• Problema/Oportunidad: (Dolor que resuelve) | • Clientes/Usuarios: (Beneficiarios finales)<br>• Participantes Internos: (Funcionarios que operan el sistema)<br>• Experiencia (Journey): (Frustraciones y motivaciones) | • Evento de Inicio: (Detonante del flujo)<br>• Etapas Macro: (Flujo simple de 3-5 pasos)<br>• Resultado Final: (Producto, servicio o decisión) |
| 4. Capacidades y Servicios Expuestos | 5. Datos Clave (Consumidos y Producidos) | 6. Componentes Tecnológicos |
| ¿Qué VALOR produce para otros? | ¿Qué INFORMACIÓN necesita y genera? | ¿Sobre qué CIMIENTOS se construye? |
| • Capacidades de Negocio: (Habilidades que realiza)<br>• Servicios Expuestos (APIs): (Servicios reutilizables que ofrece)<br>• Consumidores: (Otras EVs que consumen) | • Datos Consumidos: (Productos de Datos que necesita)<br>• Datos Producidos: (Productos de Datos que genera)<br>• Fuente de Verdad: (Dónde reside la autoridad) | • Componentes Principales: (Portal Web, API Gateway, etc.)<br>• Plataformas Transversales: (Identidad, Bus de Eventos, etc.)<br>• Stack Tecnológico: (Lenguajes, BBDD) |

---

### Parte 2: El Contexto Operacional

| 7. Dependencias y Riesgos | 8. Gobernanza y Cumplimiento | 9. Métricas de Éxito y OKRs Activos |
| :--- | :--- | :--- |
| ¿El éxito DEPENDE de alguien más? | ¿Cuáles son las REGLAS DEL JUEGO? | ¿Cómo sabremos que estamos GANANDO? |
| • Dependencias Internas: (Otras EVs de las que dependemos)<br>• Dependencias Externas: (Proveedores, otros servicios)<br>• Riesgos de Dependencia: (Principal riesgo si una dependencia falla) | • Nodo de Gobernanza (NG): (¿Quién toma las decisiones de inversión?)<br>• Dueño de Producto/Servicio: (Persona con autoridad final)<br>• Restricciones Normativas: (Leyes y decretos clave que restringen el diseño) | **OKRs Activos (Trimestre Actual):**<br>• Objetivo: (Qué queremos lograr este trimestre)<br>• KR1: (Métrica de outcome, línea base → objetivo)<br>• KR2: (Métrica de outcome, línea base → objetivo)<br><br>**SLOs (Compromisos de Fiabilidad):**<br>• Disponibilidad: (ej. 99.9%)<br>• Latencia p95: (ej. <200ms)<br><br>**Histórico de OKRs:**<br>• Q[X-1]: [Objetivo anterior con resultados alcanzados] |
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

### Plantilla A.2.3: Mapa de Stakeholders (Σ-T)

Instrucciones: Este artefacto se construye al inicio del Protocolo "Adopción Federada" (Sección 4.5 de Protocolos). El objetivo es mapear el ecosistema político y cultural antes de ejecutar un cambio organizacional. Use esta plantilla en un taller de 1-2 horas con el equipo de cambio para identificar actores clave y diseñar estrategias diferenciadas por segmento.

```markdown
# Mapa de Stakeholders: [Nombre del Cambio]

Fecha: YYYY-MM-DD
Equipo de Cambio: [Nombres]
EV Afectada: [Nombre de la EV]

## Cuadrante 1: Campeones (Alto Poder, Alto Interés)

*Estos son tus aliados críticos. Tienen poder para habilitar el cambio y están motivados para que suceda.*

| Nombre | Rol | Por qué es Campeón | Estrategia de Involucramiento |
|:---|:---|:---|:---|
| [Nombre] | [Cargo] | [Motivación: ej. "El cambio resuelve su problema X"] | Co-diseño en Canvas de EV, líder de Ola 1 |
| [Ejemplo: María López] | [Jefa DIPIR] | [Frustrada con proceso manual de IPR] | Involucrar en formulación de OKRs, usuario piloto |

## Cuadrante 2: Guardianes (Alto Poder, Bajo Interés)

*Tienen poder para bloquear pero no están motivados. Requieren gestión política cuidadosa.*

| Nombre | Rol | Riesgo de Bloqueo | Estrategia de Mitigación |
|:---|:---|:---|:---|
| [Nombre] | [Cargo] | [Objeción probable: ej. "Teme perder control"] | Mostrar cómo resuelve su problema X, negociar contrato explícito |
| [Ejemplo: Juan Pérez] | [Jefe DAF] | [Preocupado por cambio en proceso de rendiciones] | Demostrar reducción de observaciones CGR, darle veto sobre diseño del módulo financiero |

## Cuadrante 3: Adoptantes Tempranos (Bajo Poder, Alto Interés)

*Están motivados pero no tienen poder formal. Son tus evangelistas internos.*

| Nombre | Rol | Por qué Adoptará Temprano | Rol en Piloto |
|:---|:---|:---|:---|
| [Nombre] | [Cargo] | [Motivación: ej. "Técnicamente curioso"] | Usuario beta, testimonial en video, embajador en su división |
| [Ejemplo: Ana Torres] | [Analista DIPIR] | [Frustrada con Excel, quiere aprender nuevas herramientas] | Usuario beta Ola 1, capturar testimonio para CVC |

## Cuadrante 4: Observadores (Bajo Poder, Bajo Interés)

*La mayoría silenciosa. No forzar adopción, usar transparencia pasiva.*

| Segmento | Tamaño Estimado | Estrategia |
|:---|:---|:---|
| [Descripción del segmento] | [N personas] | [Estrategia: ej. "Comunicación pasiva, transparencia en dashboard"] |
| [Ejemplo: Funcionarios de divisiones no afectadas directamente] | [~50 personas] | Newsletter trimestral con resultados del CVC, acceso al Observatorio de Adopción |
```

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

*   Centraliza la gestión de identidades, mejorando la seguridad y la experiencia del usuario.
*   Permite la integración futura de nuevos servicios de forma rápida y estandarizada.
*   Reduce la carga de mantenimiento de lógica de autenticación en cada aplicación.

### Negativas

*   Introduce una nueva dependencia crítica en el proveedor de identidad.
*   Requiere una migración coordinada de todos los servicios existentes.
*   Aumenta la complejidad inicial del flujo de autenticación.

---

## Artefactos Relacionados

*Opcional: Si esta decisión resulta en la creación de un Contrato (API, Datos, Agente, Proceso), referenciarlo aquí.*

**Contratos Generados:**
*   `contracts/api-identidad-v1.yml` - Contrato de API del servicio de identidad federada

**Otros ADRs Relacionados:**
*   ADR-012 - Decisión de deprecar autenticación local (reemplazado por este ADR)
```

## A.4. Checklists de Contratos

Instrucciones: Estas no son plantillas de documentos a rellenar, sino agendas para una conversación estratégica. Utilice el checklist correspondiente para guiar una reunión entre las partes involucradas. El objetivo es alcanzar un entendimiento mutuo y un acuerdo explícito que se formaliza como artefacto versionado (YAML/JSON).

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
