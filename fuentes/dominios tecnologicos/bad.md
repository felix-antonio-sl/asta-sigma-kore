# **Cheat Sheet: Desarrollo de Aplicaciones de Negocio (Edición Senior Dev)**

Esta guía está diseñada como una referencia rápida y densa para arquitectos y desarrolladores senior que construyen aplicaciones empresariales modernas.

## **1. Patrones Arquitectónicos Clave**

La elección de la arquitectura es la decisión fundamental con mayor impacto a largo plazo. No existe una solución única; la clave es entender los *trade-offs*.

| Patrón | Ideal Para | Ventajas Clave | Desventajas / Consideraciones Técnicas |
| :--- | :--- | :--- | :--- |
| **Monolito Modular** | Startups, MVPs, equipos pequeños, dominios de negocio bien definidos y acotados. | - Simplicidad inicial en desarrollo y despliegue.<br>- Rendimiento optimizado (comunicación in-process).<br>- Facilidad para la refactorización interna. | - Acoplamiento tecnológico.<br>- Dificultad para escalar componentes específicos.<br>- Ciclos de despliegue lentos a medida que crece. |
| **Microservicios** | Sistemas complejos, equipos grandes y distribuidos, necesidad de escalabilidad granular. | - Escalabilidad y resiliencia por componente.<br>- Autonomía de equipos y libertad tecnológica.<br>- Despliegues independientes y frecuentes. | - Complejidad operacional (orquestación, service discovery).<br>- Consistencia eventual (Sagas, Outbox pattern).<br>- Latencia de red y necesidad de tracing distribuido (OpenTelemetry). |
| **Arquitectura Orientada a Eventos (EDA)** | Procesos de negocio asíncronos, alta desacoplación, sistemas reactivos (e.g., IoT, finanzas). | - Alta desacoplación y resiliencia.<br>- Escalabilidad masiva y manejo de picos de carga.<br>- Observabilidad de flujos de negocio. | - Complejidad en el seguimiento y depuración de flujos.<br>- Requiere un message broker robusto (Kafka, RabbitMQ, Pulsar).<br>- Manejo de idempotencia y orden de eventos. |
| **Serverless (FaaS)** | Cargas de trabajo intermitentes, tareas basadas en eventos, APIs de bajo tráfico, prototipado rápido. | - Coste cero en reposo (pay-per-use).<br>- Escalado automático gestionado por el proveedor.<br>- Abstracción total de la infraestructura. | - Cold starts y posible latencia.<br>- Limitaciones en tiempo de ejecución y recursos.<br>- Vendor lock-in y complejidad en testing local. |

**Principio Rector:** Comienza con un monolito modular bien estructurado y prepárate para extraer microservicios cuando el dolor del acoplamiento supere la complejidad de la distribución. Considera **Domain-Driven Design (DDD)** para definir los límites (Bounded Contexts) de tus módulos o servicios.

---

## **2. Consideraciones sobre el Stack Tecnológico**

La elección debe basarse en el ecosistema, el talento disponible y los requisitos no funcionales.

* **Backend:**
  * **Java (Spring Boot, Quarkus):** Ecosistema maduro para aplicaciones empresariales robustas y de alto rendimiento. Fuerte tipado y excelente para arquitecturas complejas.
  * **C# (.NET):** Primera opción en ecosistemas Microsoft. Alto rendimiento, unificado para web, escritorio y móvil. Integración nativa con Azure.
  * **Python (Django, FastAPI):** Rapidez en el desarrollo, ideal para aplicaciones data-intensive y servicios de IA/ML. FastAPI ofrece un rendimiento comparable a Go/Node.js para APIs.
  * **Node.js (Express, NestJS):** Excelente para aplicaciones I/O-bound y en tiempo real (e.g., websockets). Ecosistema NPM masivo. NestJS impone una estructura modular similar a Spring.
  * **Go:** Óptimo para microservicios de alto rendimiento y herramientas de CLI/infraestructura. Binarios compilados estáticamente y concurrencia nativa simple.

* **Frontend:**
  * **React:** Ecosistema maduro y flexible. Ideal para equipos que prefieren componer su propio framework de herramientas (routing, state management).
  * **Angular:** Framework "opinionado" y completo. Provee una estructura robusta para grandes aplicaciones empresariales, con inyección de dependencias y tipado fuerte desde el inicio.
  * **Vue.js:** Curva de aprendizaje suave y excelente rendimiento. Buen equilibrio entre la flexibilidad de React y la estructura de Angular.
  * **Svelte / SolidJS:** Compiladores que generan un mínimo de JavaScript. Máximo rendimiento en tiempo de ejecución, ideal para interfaces altamente interactivas o de bajo consumo.

* **Base de Datos:**
  * **PostgreSQL:** La opción SQL por defecto. Robusta, extensible y con soporte para tipos de datos complejos (JSONB, PostGIS).
  * **MySQL:** Sólida, confiable y ampliamente utilizada, especialmente en el ecosistema web tradicional.
  * **MongoDB/DynamoDB (NoSQL Documental):** Para datos semi-estructurados, esquemas flexibles y escalabilidad horizontal.
  * **Redis:** Caché en memoria, pub/sub, colas. Fundamental para reducir la latencia y la carga en la base de datos principal.
  * **Elasticsearch/OpenSearch:** Búsqueda de texto completo, analíticas y observabilidad (logs, métricas).

---

## **3. Ciclo de Vida del Desarrollo (Enfoque Técnico)**

1. **Planificación y Arquitectura:**
    * **Diagramas C4:** Modela la arquitectura en diferentes niveles de abstracción (Contexto, Contenedores, Componentes, Código).
    * **ADRs (Architecture Decision Records):** Documenta decisiones arquitectónicas clave y sus justificaciones para el futuro.
    * **Definición de Requisitos No Funcionales (NFRs):** Cuantifica latencia, throughput, disponibilidad y SLOs desde el inicio.

2. **Desarrollo y Código:**
    * **CI (Continuous Integration):** Automatiza builds, tests unitarios/integración y análisis estático de código (SonarQube, linters) en cada commit.
    * **Gestión de Dependencias:** Utiliza herramientas como Dependabot/Snyk para escanear y alertar sobre vulnerabilidades en librerías de terceros.
    * **Feature Flags:** Desacopla el despliegue del lanzamiento de funcionalidades. Permite canary releases y A/B testing.

3. **Testing:**
    * **Pirámide de Testing:** Enfócate en una base sólida de tests unitarios, complementados por tests de integración, y una capa fina de tests E2E (Cypress, Playwright).
    * **Contract Testing (Pact):** Asegura la compatibilidad entre servicios (e.g., microservicios) sin necesidad de un entorno de integración completo.
    * **Performance Testing (k6, JMeter):** Simula carga para validar NFRs antes de llegar a producción.

4. **Despliegue y Operaciones (DevOps):**
    * **Infraestructura como Código (IaC):** Usa Terraform o Pulumi para provisionar y gestionar la infraestructura de forma declarativa y versionada.
    * **Contenerización y Orquestación:** Docker para empaquetar, Kubernetes como estándar de facto para orquestar.
    * **CD (Continuous Delivery/Deployment):** Pipelines automatizados (GitHub Actions, GitLab CI, Jenkins) para despliegues blue-green, canary o rolling updates.
    * **Observabilidad:** No es solo monitoreo. Implementa las "tres columnas":
        * **Logs:** Estructurados (JSON) para fácil procesamiento (ELK, Loki).
        * **Métricas:** Series temporales para dashboards y alertas (Prometheus, Grafana).
        * **Traces:** Trazado distribuido para depurar cuellos de botella en sistemas complejos (Jaeger, OpenTelemetry).

---

## **4. Seguridad (Shift-Left Security)**

Integrar la seguridad desde el inicio del ciclo de vida.

* **Autenticación y Autorización:**
  * Usa estándares como **OAuth 2.1 / OIDC**.
  * Implementa **JWT** para APIs stateless.
  * Aplica **RBAC/ABAC** para control de acceso granular.
* **OWASP Top 10:** Automatiza la detección de vulnerabilidades comunes:
  * **SAST (Static Application Security Testing):** Analiza el código fuente en el pipeline de CI.
  * **DAST (Dynamic Application Security Testing):** Escanea la aplicación en ejecución en entornos de staging.
  * **SCA (Software Composition Analysis):** Analiza dependencias de terceros.
* **Gestión de Secretos:** Utiliza un vault centralizado (HashiCorp Vault, AWS/GCP/Azure Secret Manager). Nunca almacenes secretos en el código o en variables de entorno de Git.

---

## **5. Tendencias y Tecnologías Emergentes**

* **Integración de IA/ML:**
  * **RAG (Retrieval-Augmented Generation):** Combina LLMs con bases de datos vectoriales (Pinecone, Weaviate) para responder preguntas sobre conocimiento privado.
  * **Fine-tuning:** Especializa modelos pre-entrenados para tareas específicas del dominio de negocio.
  * **AI-Powered Code Assistants (Copilot, Codeium):** Aceleran el desarrollo, pero requieren revisión cuidadosa del código generado.
* **Plataformas de Low-Code/No-Code:**
  * No reemplazan a los desarrolladores, sino que los empoderan.
  * **Uso estratégico:** Ideal para construir herramientas internas, dashboards y automatizar flujos de trabajo sencillos, liberando al equipo de desarrollo para enfocarse en el *core business*.
* **WebAssembly (WASM):**
  * Permite ejecutar código de alto rendimiento (C++, Rust) de forma segura en el navegador y en el backend (WASI). Abre la puerta a aplicaciones web más potentes y a una lógica de negocio compartida entre plataformas.
