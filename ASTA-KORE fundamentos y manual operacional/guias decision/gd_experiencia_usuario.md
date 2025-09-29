# Guía de Decisión: Diseño de Experiencia de Usuario (UX)

ID: `GD-UX-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño de la experiencia de usuario (UX) para una `Entidad de Valor (EV)`.

---

## Principio KORE: La Experiencia del Usuario es una Capacidad, no un Adorno

Una `Entidad de Valor` no solo debe ser funcionalmente correcta, sino también usable, accesible y eficiente. La UX es una dimensión crítica de la calidad que debe ser considerada desde el inicio del diseño en el `Canvas de EV`, no como una ocurrencia tardía.

## Protocolo de Decisión para el Diseño de UX

Durante el `Taller de Canvas de EV`, utilice las siguientes preguntas para guiar la conversación sobre la experiencia del usuario:

| Caja del Canvas | Pregunta Clave de UX a Responder |
| :--- | :--- |
| 2. Usuarios | ¿Quiénes son los consumidores de esta EV? ¿Cuál es su contexto, nivel de habilidad y necesidades de accesibilidad? |
| 3. Flujo de Valor | ¿Cómo es el "viaje del usuario" al interactuar con esta EV? ¿Dónde podemos reducir la fricción? |
| 5. Descubrimiento | ¿Cómo encontrarán los usuarios la funcionalidad que necesitan? ¿Es la navegación intuitiva? |
| 8. Gobernanza | ¿Cómo proporcionamos ayuda contextual y manejamos los errores de forma clara? |

## Heurísticas de Decisión de Diseño

Las decisiones de diseño deben estar alineadas con los principios de la UX moderna. Utilice esta guía para orientar sus decisiones y consulte la guía técnica para patrones de implementación.

| Si su objetivo es... | Considere el principio/patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Simplificar interfaces complejas y reducir la carga cognitiva. | Divulgación Progresiva y Minimalismo. | Muestra solo lo necesario, revelando la complejidad solo cuando se solicita. | `gt_diseno_ux.md` |
| Aumentar la eficiencia de los usuarios expertos. | Atajos de Teclado y Paletas de Comandos. | Permite a los usuarios avanzados operar la interfaz sin depender del ratón, acelerando tareas repetitivas. | `gt_diseno_ux.md` |
| Garantizar la coherencia a través de múltiples aplicaciones. | Adoptar un Sistema de Diseño (Design System). | Proporciona un repositorio central de componentes y patrones reutilizables, acelerando el desarrollo. | `gt_diseno_ux.md` |
| Hacer la aplicación accesible para todos los usuarios. | Diseño Inclusivo (WCAG) por defecto. | La accesibilidad no es una opción, es un requisito que beneficia a todos los usuarios. | `gt_diseno_ux.md` |
| Integrar IA para mejorar la experiencia. | Copilotos y Asistentes de IA. | Aumenta la inteligencia del usuario, automatiza tareas y proporciona ayuda contextual en lenguaje natural. | `gt_diseno_ux.md`, `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la gestión de un Sistema de Diseño, patrones de interfaz para aplicaciones empresariales y la integración de IA en la UX, consulte la `gt_diseno_ux.md`.
