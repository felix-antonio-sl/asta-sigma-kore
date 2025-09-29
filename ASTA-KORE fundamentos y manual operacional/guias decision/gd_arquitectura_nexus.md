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