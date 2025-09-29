# ASTA‑SIGMA‑LITE — Manual del Arquitecto  

**Versión mínima aplicable (VMA) para diseñar, operar y transformar organizaciones públicas con enfoque humano, práctico y ágil.**

> **Qué es esta versión “Lite”**  
> ASTA‑SIGMA‑Lite es una destilación del marco ASTA‑SIGMA enfocada en **personas** (arquitectas/os, líderes de cambio y equipos) y en la **acción**. Mantiene los fundamentos (Σ/Δ, sistema‑de‑trabajo, organismo, #NoProjects, OKR, historias, flujo tipo Xanpan, HCAI), pero **omite lo computable** (schemas, validadores CI, policy‑as‑code).  
> Lo reemplaza por **canvases textuales, checklists, rituales y guías de conversación** que puedes aplicar desde el **Día 0**.

---

## Tabla de Contenidos

1. [Propósito, Alcance y Resultados](#propósito-alcance-y-resultados)  
2. [Fundamentos Integrados (la “ontología” Lite)](#fundamentos-integrados-la-ontología-lite)  
3. [Mapa del Marco (capas y vistas mínimas)](#mapa-del-marco-capas-y-vistas-mínimas)  
4. [Artefactos Mínimos (canvases y fichas)](#artefactos-mínimos-canvases-y-fichas)  
5. [Cadencias, Rituales y Scorecards](#cadencias-rituales-y-scorecards)  
6. [Overlay público‑chileno (Lite): lo **mínimo legal**](#overlay-público-chileno-lite-lo-mínimo-legal)  
7. [Método Paso a Paso (12 semanas)](#método-paso-a-paso-12-semanas)  
8. [Repositorio de Trabajo “Lite” (carpeta única)](#repositorio-de-trabajo-lite-carpeta-única)  
9. [Dos casos de uso ilustrativos](#dos-casos-de-uso-ilustrativos)  
10. [Anexos: Guías, heurísticas y plantillas copiables](#anexos-guías-heurísticas-y-plantillas-copiables)

---

## Propósito, Alcance y Resultados

### 1.1 Propósito

Construir un **lenguaje compartido, mínimo y accionable** para alinear **estrategia → sistema de trabajo → servicios → procesos → datos/IA → experiencia**, con **gobernanza ligera** y **mejora continua**. La unidad fundamental es el **Sistema de Trabajo (ST)** y la dualidad **Σ (diseño)** / **Δ (operación)**.

### 1.2 Alcance

- **Dónde aplica**: organismos públicos, servicios regionales, unidades de gobierno.  
- **Cuándo usar**: inicio de iniciativas, rediseños, y como hilo conductor de la operación diaria.  
- **Qué NO incluye**: automatizaciones/validaciones computables, repos/schemas, pipelines, CI.  
- **Qué SÍ trae**: **canvases**, **fichas**, **checklists**, **rituales**, **guías de conversación** y **ejemplos**.

### 1.3 Resultados esperados (con evidencia humana)

- **Mapa vivo** de STs y servicios con objetivos (OKR) y backlog (historias con beneficio).  
- **Scorecards trimestrales** (OKR y flujo) y **semanales** (salud operativa).  
- **Diseño centrado en personas** (HCAI/UX) y **cumplimiento mínimo** (datos, procedimiento).

---

## Fundamentos Integrados (la “ontología” Lite)

### 2.1 ST‑first (IS‑Work Systems) y Σ/Δ

- **ST**: conjunto sociotécnico que crea valor a un/unos destinatarios. **Σ** describe su diseño; **Δ** observa su operación.  
- Trabajar “**outside‑in**”: partir por **propósito, beneficiarios y resultados** y **adaptar el diseño** desde la evidencia.  

**Heurística Lite**  

- *Pregunta generadora*: “¿Qué **trabajo** realiza nuestro **ST** para quién, con qué reglas y con qué señales medimos su salud?”  
- *Defectos típicos*: describir sistemas por módulos TI; confundir proceso con trámite; coleccionar KPIs sin uso.

### 2.2 Organización como organismo (señales → adaptación)

- La organización **percibe** señales del entorno, **actúa** y **aprende**; por tanto el diseño debe **cambiar con Δ**.  
- El **cambio** es endémico; buscamos **rituales y mapas** que lo hagan visible y gobernable sin burocracia.

### 2.3 #NoProjects / Continuous Digital (gobernanza continua)

- Evitamos “fin de proyecto”: **equipos estables**, **portafolio vivo**, decisiones **pequeñas y frecuentes**.  
- **Resultados** sobre **entregables**; **iteración** sobre plan cerrado.

### 2.4 OKR + Historias + Flujo Xanpan (operativa humana mínima)

- **OKR**: hipótesis trimestral de **outcomes**; KRs con métrica y fuente; revisión y aprendizaje.  
- **Historias**: **placeholder para la conversación**, con **beneficio** explícito y **criterios de aceptación**.  
- **Xanpan**: flujo con **WIP por columna**, **carry‑over** realista y **unplanned lane** (trabajo inesperado).

### 2.5 HCAI (IA centrada en lo humano) y experiencia

- Definir **propósito** (asistir/augmentar/orquestar/automatizar) y **cognición** (percibir/decidir/actuar).  
- Elegir el **rol** de la IA (HITL/on/out) y **diseñar explicabilidad** y **controles** **proporcionales al riesgo**.

---

## Mapa del Marco (capas y vistas mínimas)

> **Objetivo**: ofrecer una “vista de 5 capas” suficientemente rica pero **simple** para comunicar y decidir.

1. **Dirección**: propósito, políticas, **OKR** y **portfolio**.  
2. **Modelo Operativo**: **capacidades**, **servicios**, **propiedad** (ownership) y **STs**.  
3. **Diseño Lógico**: **procesos** (BPMN‑lite), **decisiones**, **información/eventos**.  
4. **Diseño Técnico (hablable)**: aplicaciones, integraciones, plataformas, datos/IA (sin detalle de stacks).  
5. **Ejecución y Control**: **flujo** (Xanpan‑lite), **scorecards** Σ/Δ, **riesgos** y **mejora**.

**Consejo**: imprime este mapa en A3 y úsalo como **mural** del equipo (actualízalo cada trimestre).

---

## Artefactos Mínimos (canvases y fichas)

> Usa las siguientes **plantillas textuales** (copiar/pegar). Cada una cabe en 1–2 páginas.

### 4.1 Canvas de Sistema de Trabajo (ST)

- **Propósito del ST**: …  
- **Beneficiarios y necesidades**: …  
- **Entradas → Actividades → Salidas** (diagrama en texto): …  
- **Actores y responsabilidades** (humanos/agentes): …  
- **Reglas/Políticas clave** (incluye base legal si aplica): …  
- **Riesgos y salvaguardas** (HITL, segregación, trazas): …  
- **Métricas de salud (Δ)**: … (3–5 señales accionables)  
- **Hipótesis de mejora (OKR link)**: …

### 4.2 Ficha de Servicio Digital (Lite)

- **Descripción y valor público**: …  
- **Cliente/usuario y canal(es)**: …  
- **ANS/expectativas** (tiempo, disponibilidad, calidad): …  
- **Dependencias críticas** (datos, identidades, interoperabilidad): …  
- **Riesgos y continuidad** (RTO/RPO en palabras): …  
- **Evidencia de calidad** (qué miraremos semanal/mensual): …

### 4.3 Ficha de Proceso (BPMN‑Lite verbal)

- **Nombre y resultado**: …  
- **Evento disparador** → **Pasos** → **Resultado** (lista numerada)  
- **Puntos de decisión** (criterios): …  
- **Documentos/expedientes**: … (si aplica)  
- **Excepciones y cómo se manejan**: …

### 4.4 Ficha de Datos (Contrato‑humano)

- **Quién usa/para qué** (finalidad) y **base legal**: …  
- **Sensibilidad** (PII/DP/otros): …  
- **Origen y calidad esperada**: …  
- **Retención y borrado** (en lenguaje claro): …  
- **Intercambios** (con quién, por qué): …  
- **Riesgos y medidas** (minimización, acceso por rol, anonimización si corresponde): …

### 4.5 Ficha de Agente/Asistente IA (HCAI‑Lite)

- **Rol** (asistir/augmentar/orquestar/automatizar) y **cognición** (percibir/decidir/actuar): …  
- **Casos de uso permitidos / prohibidos**: …  
- **Modo de control** (HITL/on/out) y **explicabilidad** esperada: …  
- **Datos que toca** (y restricciones): …  
- **Riesgo y salvaguardas** (qué hacemos si falla; canal de incidentes): …  
- **Métrica de utilidad/seguridad**: …

### 4.6 Mapa de Capacidades (lista narrada)

- **Capacidad** → **Servicios que soporta** → **Equipos/roles** → **Indicadores**.  
- Marca con ⭐ aquellas **capabilities** críticas para el trimestre.

### 4.7 OKR “Lite” (1 página por equipo)

- **O (Objetivo)**: frase inspiradora + alcance.  
- **KR1..KR3**: métrica, línea base, umbral “bueno” y fuente.  
- **Apuestas/épicas** (historias agrupadas) vinculadas a KRs.  
- **Riesgos** del trimestre y **señales tempranas**.

### 4.8 Historias “con beneficio”

- **Como [persona/rol] quiero [capacidad] para [beneficio concreto]**.  
- **Criterios de aceptación** (3–5 bullets).  
- **Vínculo a KR** (o “aprendizaje exploratorio”).  
- **Dependencias** y **vista demo** esperada.

### 4.9 Tablero Xanpan‑Lite (texto + pizarra)

- **Columnas**: *To discuss* → Ready → Doing (WIP=N) → Review → Done.  
- **Reglas**: límite WIP por columna; **carry‑over** permitido; **unplanned lane** visible; *swarming* en bloqueos.  
- **Métricas**: **lead time** por tipo de ítem (historia/incidente), **% unplanned**, **throughput** semanal.

### 4.10 Ficha UX / Accesibilidad (1 página)

- **Personas/roles clave** + **tareas frecuentes**.  
- **Primer uso**: onboarding mínimo + ayuda contextual.  
- **Errores**: mensajes claros y recuperables.  
- **Accesibilidad**: foco, contraste, teclado, lector de pantalla.  
- **Feedback**: micro‑interacciones; confirmaciones no intrusivas.

---

## Cadencias, Rituales y Scorecards

### 5.1 Cadencias recomendadas

- **Diaria (15 min)**: sincronización breve y bloqueos.  
- **Semanal (30–45 min)**: revisión de **flujo** (lead/cycle, unplanned, WIP) + salud operativa.  
- **Bisemanal (60–90 min)**: grooming de historias y re‑priorización por **beneficio**.  
- **Mensual (60 min)**: revisión de riesgos, cumplimiento mínimo (datos/procedimiento), UX feedback.  
- **Trimestral (2–3 h)**: **RVC** de OKR: aprendizajes, decisiones Σ, cambios en capacidades/servicios.

### 5.2 Scorecards Σ/Δ (ligeros)

- **Outcome**: avance de KRs (tendencia) + prueba de beneficio a usuarios.  
- **Flujo**: lead time, %unplanned, bloqueos crónicos.  
- **Salud servicio**: expectativas/ANS en lenguaje claro.  
- **Cumplimiento mínimo**: check datos/expediente/accesibilidad.  
- **Riesgos**: top 3, señales y mitigación.

---

## Overlay público‑chileno (Lite): lo **mínimo legal**

> **Idea**: asegurar un “piso” de cumplimiento **sin fricción**. Documenta en fichas (texto).

1) **Datos personales** (Ley 21.719): declara **finalidad**, **base legal**, **retención**, **derechos** y **medidas**.  
2) **Procedimiento administrativo** (LTDE 21.180): si hay **acto o expediente**, explicita **puntos de firma**, **notificación** y **archivo**.  
3) **IA responsable (proyecto de ley)**: según **riesgo**, declara **HITL/explicabilidad**, incidentes y **uso permitido**.  
4) **Institucionalidad**: reconoce **SGD** como rector y la necesidad de **interoperar** e **identidad digital** cuando aplique.

**Checklist “sí/no” por artefacto**  

- ¿La **Ficha de Datos** cita finalidad/base legal/retención?  
- ¿El **Proceso** explicita si genera **acto/expediente** y cómo se notifica?  
- ¿El **Agente IA** declara rol HCAI, controles y canal de incidentes?  
- ¿El **Servicio** prevé interoperabilidad/identidad si corresponde?

---

## Método Paso a Paso (12 semanas)

### Semana 0 — Preparación

- Convoca **equipo estable**; nombra **propietario/a de servicio**.  
- Instala carpeta **/asta‑sigma‑lite** (ver sección 8).  
- Agenda cadencias (día/hora fijas).

### Semana 1 — Enmarcar

- Redacta **Canvas ST** y **Ficha de Servicio** (borrador).  
- Levanta **capabilities** y dependencias críticas.  
- Pre‑OKR: bosquejo de **O** y hipótesis de **KR**.

### Semana 2 — Historias con beneficio

- Extrae **3–5 historias** prioritarias; define **criterios** y **demo**.  
- Dibuja **tablero Xanpan‑Lite** y define **WIP**.

### Semana 3 — Datos y Procedimiento

- Completa **Ficha de Datos** (finalidad, base, retención).  
- Completa **Ficha de Proceso** (pasos, decisiones, expediente/acto).

### Semana 4 — UX y Accesibilidad

- Procesa 3 hallazgos de **pruebas con 5 usuarios** (moderadas o guerrilla).  
- Ajusta Ficha UX; prioriza 1–2 mejoras rápidas.

### Semana 5 — OKR final

- Cierra **O** y **3 KRs** con **líneas base** y **fuentes**.  
- Publica OKR en mural del equipo.

### Semana 6 — IA responsable (si aplica)

- Si hay IA, completa **Ficha de Agente**; decide **HITL/on/out**.  
- Define **métrica de utilidad/seguridad**.

### Semana 7 — RVC intermedio

- Revisa avance de **KRs** y flujo; ajusta backlog.  
- Registra **decisiones Σ** (lo que cambias del diseño).

### Semana 8 — Servicio y continuidad

- Revisa **ANS/expectativas** y **riesgos** del servicio.  
- Ensaya recuperación simple (tabletop).

### Semana 9 — Interoperabilidad / Identidad

- Identifica **datos/servicios** externos; acuerda **contratos humanos** mínimos.  
- Documenta en Ficha de Servicio.

### Semana 10 — Evidencia y narrativa

- Prepara **scorecard** y una **demo ejecutiva** (10’).  
- Recoge testimonios/casos antes‑después si procede.

### Semana 11 — Cierre de ciclo

- Cierra **KR** (logrados, desplazados, invalidados).  
- **Aprendizajes** y “qué cambiaremos en Σ”.

### Semana 12 — Reinicio

- Redacta **nuevo bosquejo de OKR**.  
- Reprioriza **capabilities/servicios** y backlog.

---

## Repositorio de Trabajo “Lite” (carpeta única)

Crea una carpeta `asta-sigma-lite/` con **estos 9 archivos** (todos en texto plano):

1. `00_ST_canvas.md` — Canvas de Sistema de Trabajo  
2. `01_servicio.md` — Ficha de Servicio Digital  
3. `02_proceso.md` — Ficha de Proceso (BPMN‑Lite)  
4. `03_datos.md` — Ficha de Datos (contrato‑humano)  
5. `04_agente_ia.md` — Ficha de Agente/Asistente IA (si aplica)  
6. `05_capacidades.md` — Mapa de Capacidades (lista)  
7. `06_okr.md` — OKR Lite (1 página)  
8. `07_backlog_historias.md` — Historias con beneficio + criterios  
9. `08_tablero_flujo.md` — Reglas WIP, métricas y notas semanales

> **Sugerencia**: Revisa y actualiza **semanalmente** los puntos 8 y 9; **mensualmente** 1–5; **trimestralmente** 6–7.

---

## Dos casos de uso ilustrativos

### Caso A — Trámite de subsidio

- **ST**: Gestión de Subsidios. **Beneficiario**: ciudadano elegible.  
- **Resultado**: resolución notificada y pago oportuno.  
- **Claves Lite**: expediente claro (pasos/decisiones), **Ficha de Datos** (PII + retención), 3 **KRs** sobre **tiempo de ciclo**, **errores en documentación** y **satisfacción**.  
- **IA** (si aplica): asistente **HITL** para validar requisitos y redactar notificaciones.

### Caso B — Copiloto interno (mesa de ayuda)

- **ST**: Soporte TI interno; **cliente**: funcionariado.  
- **Resultado**: resolución de tickets y guía auto‑servicio.  
- **Claves Lite**: **historias** de conocimiento, **KR** de **% autoservicio** y **lead time**; Ficha IA con **rol: asistir**, **on‑the‑loop** y límites de datos.

---

## Anexos: Guías, heurísticas y plantillas copiables

### A.1 OKR Anti‑patrones (Lite)

- KRs como tareas; métricas sin fuente; demasiados KRs; sin hipótesis; sin revisión.

### A.2 Historias con beneficio — Heurísticas

- Beneficio **observables**; criterios claros; conversa con QA y negocio; divide por **riesgo** y **valor**.

### A.3 Flujo Xanpan — Políticas mínimas

- WIP por columna; **unplanned** visible; *swarming* en bloqueos; medir **lead time** por tipo; retrospectiva breve.

### A.4 BPMN‑Lite — Verbos y decisiones

- Describe **evento → pasos → salida**; señala decisiones y criterios; excepciones y quién decide.

### A.5 Datos — Mínimos responsables

- Declara **finalidad/base/retención**; acceso por rol; minimización; anonimización si procede; canal de incidentes.

### A.6 HCAI — Controles proporcionados al riesgo

- Define **rol** y **modo humano** (HITL/on/out); espera de **explicabilidad**; evalúa **errores/derivas**; **salvaguardas**.

### A.7 UX — Cinco prácticas rápidas

- Tareas frecuentes; estados vacíos útiles; feedback no intrusivo; accesibilidad esencial; búsqueda prominente.

### A.8 Plantillas (copiar/pegar)

- **Canvas ST**, **Fichas** (Servicio/Proceso/Datos/Agente IA), **OKR**, **Historias**, **Tablero**, **Scorecards**.  

> **Cómo usar este manual**: empieza por **ST + Servicio + 3 historias + OKR**; monta el tablero; agenda cadencias; cada semana **mide y conversa**. En tres meses tendrás **Σ actualizado por Δ**, con mejoras demostrables y sin esperar a lo computable.

---

**Fin — ASTA‑SIGMA‑LITE**  
*“Menos fricción, más conversación; menos papeles, más resultados.”*
