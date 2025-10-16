# Guía Técnica: Diseño de Experiencia de Usuario (UX)

ID: `GT-UX-001`
Versión: 1.0
Dominio: Diseño de Experiencia de Usuario, Diseño de Interfaz

Propósito: Esta guía técnica establece los principios, patrones y mejores prácticas para el diseño de la experiencia de usuario (UX) de las `Entidades de Valor (EV)`. El objetivo es asegurar que las interfaces sean usables, accesibles, eficientes y coherentes.

Audiencia: Diseñadores de UX/UI, Dueños de Producto, Desarrolladores Frontend.

Relación con KORE:

* Artefactos KORE Informados: `Canvas de EV` (Cajas 2, 3, 9), `Mapeo de Historias`.

## 1. Principios de Diseño UX para Entidades de Valor KORE

Estos principios deben guiar todas las decisiones de diseño de interfaces.

1. Reducir la Carga Cognitiva:
    * Divulgación Progresiva: Muestre solo la información y las acciones necesarias para la tarea actual. Oculte la complejidad avanzada hasta que se solicite explícitamente.
    * Minimalismo y Claridad: Utilice espacios en blanco, tipografía legible y una paleta de colores limitada para ayudar a los usuarios a enfocarse.

2. Proporcionar Feedback Claro e Inmediato:
    * Micro-interacciones: Use animaciones sutiles para confirmar acciones (guardado, error, carga). Esto asegura al usuario que el sistema ha respondido.
    * Estados Visibles: La interfaz debe comunicar claramente su estado actual (cargando, error, éxito, deshabilitado).

3. Diseñar para la Eficiencia del Usuario Experto:
    * Atajos de Teclado y Paletas de Comandos: Permita a los usuarios avanzados operar la interfaz sin depender del ratón. Una paleta de comandos universal (ej. `Ctrl+K`) es un acelerador poderoso.
    * Flujos no Lineales: Permita guardar borradores, saltar entre tareas relacionadas y trabajar en paralelo. No fuerce a los usuarios a un único "camino feliz".

4. Habilitar la Colaboración:
    * Colaboración en Tiempo Real: Si la `EV` es utilizada por múltiples personas, permita ver las ediciones y comentarios de los demás en tiempo real (estilo Figma/Google Docs).

5. Ser Inclusivo y Accesible por Defecto:
    * Cumplimiento de WCAG: La accesibilidad no es una opción. Asegure la compatibilidad con lectores de pantalla, navegación por teclado y contrastes de color adecuados desde el inicio.
    * Diseño Visual Inclusivo: Utilice un lenguaje claro y pruebe las paletas de colores para diferentes tipos de daltonismo.

6. Aumentar la Inteligencia del Usuario con IA:
    * Copilotos y Asistentes: Incorpore asistentes contextuales que puedan generar contenido, responder preguntas o guiar al usuario.
    * UX Predictiva: Anticipe las necesidades del usuario, sugiriendo acciones probables o pre-rellenando información basada en el contexto.

## 2. El Sistema de Diseño (Design System)

Un Sistema de Diseño es la fuente única de verdad para la UX/UI. Es un producto vivo, no un documento estático.

* Componentes:
  * Biblioteca de Componentes: Un conjunto de componentes de UI reutilizables (botones, formularios, modales) con su código (ej. en React, Vue) y documentación.
  * Tokens de Diseño: Variables para atributos de diseño (colores, espaciado, tipografía). Permiten aplicar temas (ej. modo oscuro, marca blanca) a escala.
  * Guías de Estilo y Contenido: Reglas sobre el uso de la marca, la voz y el tono de la comunicación.
  * Patrones de Diseño: Soluciones documentadas para problemas de diseño recurrentes (ej. patrón de búsqueda, patrón de tabla de datos).

* Gobernanza:
  * Debe existir un equipo o comité responsable de mantener y evolucionar el Sistema de Diseño.
  * Los nuevos componentes o patrones deben pasar por un proceso de revisión para asegurar su calidad y coherencia.

### 2.1. Criterio de Decisión: ¿Cuándo Invertir en un Sistema de Diseño?

```
¿Cuántas aplicaciones/productos tienes?
├─ 1 aplicación → No justifica Sistema de Diseño
│  └─ Usar biblioteca de componentes estándar (ej. Material UI, Ant Design)
├─ 2 aplicaciones → ¿Comparten componentes visuales?
│  ├─ SÍ → Considerar biblioteca compartida simple
│  └─ NO → Mantener separadas
└─ ≥3 aplicaciones → ✅ Invertir en Sistema de Diseño
   └─ ¿Equipos distribuidos?
      ├─ SÍ → Sistema de Diseño + Gobernanza formal
      └─ NO → Sistema de Diseño ligero
```

**ROI Esperado:**

* Reducción 30-50% en tiempo de desarrollo de UIs
* Consistencia visual entre productos
* Onboarding más rápido de nuevos diseñadores/desarrolladores
* Reducción de deuda de diseño

**Componentes Mínimos Viables:**

* Biblioteca de componentes UI (código + documentación)
* Tokens de diseño (colores, espaciado, tipografía)
* Guías de uso y patrones básicos

## 3. Patrones de Interfaz para Aplicaciones Empresariales

* Navegación:
  * Menú Lateral Fijo: Estándar para aplicaciones complejas con muchas secciones.
  * Barra Superior con Búsqueda Global: Proporciona un punto de acceso constante a la búsqueda.

* Visualización de Datos:
  * Tablas de Datos Interactivas: Deben incluir ordenamiento, filtrado, paginación y la capacidad de seleccionar y personalizar columnas.
  * Dashboards Modulares: Compuestos por widgets o tarjetas que los usuarios pueden reorganizar, añadir o quitar para personalizar su vista.

* Entrada de Datos:
  * Formularios Multi-paso (Wizards): Para procesos de entrada de datos largos, dividiéndolos en pasos lógicos con una barra de progreso.
  * Validación en Línea: Proporcionar feedback sobre los errores de entrada de datos a medida que el usuario escribe, no solo al final.

* Interacción con IA:
  * Interfaces Conversacionales (Chat): Para asistentes y copilotos. Deben soportar respuestas en streaming y la capacidad de mostrar componentes ricos (tablas, gráficos) dentro de la conversación.
  * Sugerencias y Autocompletado Inteligente: Integrar sugerencias generadas por IA directamente en los campos de texto y formularios.
