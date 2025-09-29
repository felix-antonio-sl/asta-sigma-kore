# Guía de Decisión: Diseño de Productos de Datos

ID: `GD-DATA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño, la gobernanza y la operación de Productos de Datos como `Entidades de Valor (EV)`.

---

## Principio KORE: El Dato como un Producto, no como un Subproducto

En KORE, un conjunto de datos expuesto no es un subproducto de un proceso, sino una `Entidad de Valor` de primera clase. Como tal, debe ser tratado como un producto: tiene un dueño, un ciclo de vida, clientes (consumidores), y `SLOs` de calidad y disponibilidad que se formalizan en un `Contrato de Datos`.

## Protocolo de Decisión para el Diseño de un Producto de Datos

Utilice el `Canvas de EV` como herramienta principal para el diseño colaborativo de un Producto de Datos. Las siguientes preguntas clave deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Producto de Datos |
| :--- | :--- |
| 1. Propósito | ¿Qué decisión de negocio o capacidad analítica habilita este producto de datos? |
| 2. Usuarios | ¿Quién o qué consume los datos? (Personas, APIs, Modelos de IA). |
| 3. Flujo de Valor | ¿Cuál es el linaje de los datos? (ej. `Bronce -> Plata -> Oro`). |
| 4. Métricas (SLOs) | ¿Cómo medimos su fiabilidad? (ej. `Frescura < 1h`, `Disponibilidad > 99.9%`). |
| 8. Gobernanza | ¿Cuáles son las reglas de acceso, uso y calidad? ¿Quién es el dueño del producto? |

## Heurísticas de Decisión Arquitectónica

Las decisiones técnicas significativas sobre la implementación de un producto de datos deben ser documentadas en `ADRs`. Utilice la siguiente guía para la toma de decisiones y consulte la guía técnica para los detalles de implementación.

| Si necesita... | Considere el patrón/tecnología... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Gobernar la calidad y el acceso a su producto de datos. | Implementar un `Contrato de Datos` versionado. | Formaliza las expectativas entre productor y consumidor y permite la gobernanza automatizada. | `gt_ingenieria_datos.md` |
| Equilibrar flexibilidad y rendimiento para el almacenamiento de datos. | Una arquitectura Lakehouse con zonas Bronce, Plata y Oro. | Combina la flexibilidad de un Data Lake con la gobernanza y el rendimiento de un Data Warehouse. | `gt_ingenieria_datos.md` |
| Asegurar la calidad de los datos de forma sistemática. | Un Pipeline de Calidad de Datos (Preventivo, Detectivo, Correctivo). | Transforma la calidad de los datos de una tarea manual a un proceso de ingeniería automatizado. | `gt_ingenieria_datos.md` |
| Medir y garantizar la fiabilidad de sus productos de datos. | Un enfoque de SRE de Datos con `SLIs` y `SLOs`. | Trata los productos de datos como servicios críticos cuya fiabilidad se mide y se gestiona activamente. | `gt_ingenieria_datos.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la estructura detallada de los `Contratos de Datos`, los pipelines de calidad y la observabilidad, consulte la `gt_ingenieria_datos.md`.
