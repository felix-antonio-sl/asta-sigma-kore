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
