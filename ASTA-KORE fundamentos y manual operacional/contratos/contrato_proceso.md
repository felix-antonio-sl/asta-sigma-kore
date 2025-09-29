# Guía del Contrato de Proceso

**ID:** `CONTRATO-PROCESO-V1`
**Estado:** Activo

## 1. Propósito

El `Contrato de Proceso` es un artefacto de diseño sociotécnico que formaliza el acuerdo sobre cómo opera un flujo de valor automatizado de punta a punta. Su objetivo es hacer explícitas las garantías de rendimiento, los puntos de intervención humana y la lógica de resiliencia de un proceso de negocio.

Este contrato es la fuente única de verdad para la gobernanza y la auditoría de un proceso automatizado. Debe ser negociado y acordado entre el equipo dueño del proceso, los arquitectos y los stakeholders de negocio.

## 2. Estructura y Campos Clave

El contrato se define en un archivo `contrato_proceso.yml` versionado junto al código de la `Entidad de Valor` que lo implementa. A continuación se describe el significado de cada campo.

### `id` (Obligatorio)

* **Descripción:** Identificador único y legible del proceso.
* **Formato:** `dominio.nombre_proceso`.
* **Ejemplo:** `subsidios.asignacion_automatica`.

### `owner` (Obligatorio)

* **Descripción:** El equipo responsable del ciclo de vida de este proceso.
* **Ejemplo:** `equipo-alpha`.

### `version` (Obligatorio)

* **Descripción:** Versión semántica (SemVer) del contrato.
* **Ejemplo:** `1.0.0`.

### `purpose` (Obligatorio)

* **Descripción:** Una explicación concisa del valor de negocio que entrega este proceso.
* **Ejemplo:** "Orquesta la validación, cálculo y notificación de la asignación de un subsidio de forma automática."

### `sla` (Obligatorio)

* **Descripción:** Los Acuerdos de Nivel de Servicio que el proceso garantiza.
* **Campos:**
  * `cycle_time_p95_minutes`: El percentil 95 del tiempo que tarda un caso en completarse desde que inicia hasta que termina.
  * `success_rate_target_pct`: El porcentaje de ejecuciones que deben terminar exitosamente sin intervención manual.

### `hitl` (Opcional)

* **Descripción:** Define los puntos de intervención Humano-en-el-Bucle (Human-in-the-Loop).
* **Campos:**
  * `checkpoints`: Una lista de puntos de control donde el proceso puede requerir una acción humana. Cada checkpoint tiene un nombre y una descripción del tipo de decisión requerida.
  * `escalation_rules`: Reglas que definen cuándo una ejecución debe ser escalada a un checkpoint humano.

### `saga` (Opcional)

* **Descripción:** Define la lógica de compensación para procesos de larga duración que requieren mantener la consistencia (Patrón Saga).
* **Campos:**
  * `steps`: Una lista de los pasos transaccionales del proceso. Cada paso define su acción principal (`invoke`) y la acción de compensación (`compensate`) que se debe ejecutar si un paso posterior falla.

### `events` (Obligatorio)

* **Descripción:** Declara los eventos de negocio que el proceso emite y consume, definiendo su rol en el ecosistema.
* **Campos:**
  * `emitted`: Lista de eventos que este proceso produce.
  * `consumed`: Lista de eventos que este proceso necesita para operar.

### `observability` (Obligatorio)

* **Descripción:** Define los Indicadores de Nivel de Servicio (SLIs) clave que deben ser medidos para monitorear la salud del proceso.
* **Ejemplo:** `success_rate`, `latency_p95`, `dead_letter_rate`.

## 3. Relacionado con

* **Guía Técnica: Ingeniería de Aplicaciones y Procesos:** [../guias tecnicas/gt_ingenieria_software.md](../guias tecnicas/gt_ingenieria_software.md)
* **Guía Técnica: Arquitectura de Referencia Nexus:** [../guias tecnicas/gt_arquitectura_nexus.md](../guias tecnicas/gt_arquitectura_nexus.md)
* **Plantilla YAML del contrato:** [./contrato_proceso.yml](./contrato_proceso.yml)
