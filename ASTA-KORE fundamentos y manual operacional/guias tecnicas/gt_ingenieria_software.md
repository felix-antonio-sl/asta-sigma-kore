# GT-SOFT-001: Ingeniería de Aplicaciones y Procesos

**ID:** GT-SOFT-001  
**Versión:** 2.0  
**Dominio:** Ingeniería de Software y Automatización de Procesos  
**Protocolo:** 2.1 - Diseño de Arquitectura

## Invariante Central

**La elección del patrón arquitectónico debe ser una decisión deliberada, registrada en un ADR.**

Cada patrón tiene trade-offs. No hay soluciones universales.

## Patrones Arquitectónicos

| Patrón | Ideal Para | Ventajas | Trade-offs |
|:---|:---|:---|:---|
| **Monolito Modular** | MVPs, equipos pequeños | Simplicidad de desarrollo y despliegue | Acoplamiento tecnológico, escalabilidad monolítica |
| **Microservicios** | Sistemas complejos, equipos grandes | Autonomía de equipos, despliegues independientes | Complejidad operacional, consistencia eventual |
| **Arquitectura Orientada a Eventos (EDA)** | Procesos asíncronos, alta desacoplación | Desacoplamiento máximo, escalabilidad | Complejidad en depuración de flujos |
| **Serverless (FaaS)** | Cargas intermitentes, basadas en eventos | Coste cero en reposo, escalado automático | Cold starts, vendor lock-in |

**Principio Rector:** Comience con Monolito Modular bien estructurado. Extraiga Microservicios solo cuando el dolor del acoplamiento supere la complejidad de la distribución.

## Protocolo de Ciclo de Vida de Desarrollo (SDLC)

### 1. Diseño y Arquitectura

**Artefactos:**

- Diagramas C4 (Contexto, Contenedores, Componentes)
- ADRs para decisiones arquitectónicas significativas
- SLOs cuantitativos (disponibilidad, latencia, error)

### 2. Desarrollo e Integración Continua (CI)

**Pipeline de CI (en cada commit):**

- Builds automatizados
- Tests (unitarios, integración)
- Análisis estático de seguridad (SAST)
- Análisis de dependencias (SCA)

### 3. Despliegue y Operación (CD/DevOps)

**Prácticas:**

- Infraestructura como Código (IaC) declarativa y versionada
- Contenerización estándar
- Despliegue automatizado con estrategias seguras (Canary, Blue-Green)
- Feature Flags para control de releases

### 4. Observabilidad

**Tres Pilares:**

- Logs estructurados (para análisis eficiente)
- Métricas (series temporales para dashboards y alertas)
- Trazas distribuidas (para depurar cuellos de botella)

**Referencia:** Ver `gt_observabilidad.md` para detalles.

## Automatización de Procesos de Negocio (BPA)

### Arquitectura de Referencia

**Capa de Orquestación:**

- Motor de workflow que ejecuta modelos de proceso
- Gestiona estado de flujos de larga duración

**Capa de Ejecución de Tareas:**

- **API-based (Preferido):** Microservicios y conectores vía APIs
- **UI-based (Último Recurso):** Bots RPA para sistemas legacy sin API
- **Human-in-the-Loop (HITL):** Cola de tareas para excepciones

**Capa de Inteligencia:**

- Servicios de IA para tareas cognitivas (IDP, NLP)

**Referencia:** Ver `gt_ingenieria_ia.md` para sistemas cognitivos.

### Patrones de Flujo de Proceso

**Orquestación (Patrón Saga):**

- Orquestador central dirige el flujo
- Responsable de acciones de compensación en caso de error
- Alta visibilidad del estado del proceso

**Coreografía (Orientado a Eventos):**

- Servicios reaccionan a eventos de forma autónoma
- Promueve desacoplamiento
- Visibilidad E2E más compleja

## Contrato de Proceso

**Definición:** Formaliza compromisos de un proceso automatizado.

**Atributos Clave:**

- **SLA:** Objetivos de nivel de servicio (cycle time)
- **STP Target:** % de casos sin intervención humana
- **HITL:** Definición de colas de excepciones
- **Saga:** Mapeo de acciones de compensación
- **Events:** Eventos de negocio canónicos
- **Idempotency:** Claves para evitar duplicación

**Referencia:** Ver plantillas en `/plantillas_contratos/procesos/`

## Seguridad Embebida (Shift-Left)

**Principio:** Seguridad es responsabilidad del equipo de desarrollo, integrada en SDLC.

### Autenticación y Autorización

**Estándares:** OAuth 2.1 / OIDC

**Patrones:**

- JWT para APIs stateless
- RBAC/ABAC para control de acceso granular

### Gestión de Secretos

**Regla:** Usar vault centralizado. Nunca almacenar secretos en código fuente o repositorios.

### Análisis de Seguridad Automatizado

**Integración en CI/CD:**

- SAST (Static Application Security Testing)
- DAST (Dynamic Application Security Testing)
- SCA (Software Composition Analysis)

## Integración con ASTA-Kore

**ADRs:** Documentar decisiones arquitectónicas significativas.

**Contratos:** Todo proceso automatizado debe tener un Contrato de Proceso versionado.

**Referencia:** Ver `gt_flujo_entrega.md` para pipelines CI/CD.
