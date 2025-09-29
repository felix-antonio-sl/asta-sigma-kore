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
