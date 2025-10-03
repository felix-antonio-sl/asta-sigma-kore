# Recomendaciones

## Resumen (en una línea)

Las tres guías están muy bien alineadas con STS, pero hay 3 puntos críticos a corregir: (1) uso de `Ref:` hacia un documento externo en KHM, (2) el modelo de nombres permite artefactos SFD “standalone” (contradice SFD-embedded-only), y (3) una leve tensión normativa entre la prohibición STS de “mezclar sintaxis STS en bloques embebidos” y el uso de `###/####` dentro de SFD.

---

## Cómo evalué (muy breve)

* Revisé metadatos, bloque de **LLM Parsing Instructions**, IDs, política de `Ref:` y vocabulario abreviado.
* Contrasté secciones que se referencian implícita o explícitamente entre guías (STS ⟷ SFD ⟷ KHM).
* Aterricé hallazgos en **errores**, **riesgos/ambigüedades**, y **mejoras** concretas.

---

## Hallazgos por documento

### 1) KHM – Master Guide: Knowledge Hub Management (interna)

**Fortalezas**

* Metadatos completos y bloque de parsing con lexicón abreviado declarado; política de `Ref:` como interno-solo coherente con STS.
* Arquitectura de directorios, ciclo de vida y composición declarativa por `agent.yaml` bien definidos.

**Problemas/alertas**

1. **Uso indebido de `Ref:` a documento externo**: en la convención de commits se usa `Ref:` para apuntar a `guide_core_002_alm-master_sts.md` (ID `GUIDE-ALM-GIT-COMMITS-01`). Según STS, `Ref:` **solo** puede apuntar a un `ID:` dentro del **mismo** documento (externos van en `Ctx:` o `Src:`). **Corregir a `Ctx:` o `Src:`**.  
2. **Modelo de nombre permite SFD “standalone”**: el ejemplo `sfd_gn_005_formulario-postulacion_sfd.md` sugiere un archivo cuyo **formato** es `sfd`. Pero SFD establece **modelo embebido-solo**: SFD debe vivir **dentro de** un documento host STS, no como archivo SFD independiente.  

**Mejoras menores**

* Coherencia ejemplar entre IDs `GUIDE-KHM-*` y referencias internas. Mantener.

---

### 2) SFD – Master Guide (interna)

**Fortalezas**

* Declara explícitamente el **modelo embebido-solo** para SFD y la jerarquía `Form-Section`/`Form-Field` con léxico controlado; excelente para RAG y validaciones.
* Política de `Ref:` **intrablock** (dentro del mismo bloque SFD) y herencia de instrucciones STS desde el host.

**Riesgo/ambigüedad**

* Usa `###/####` **dentro** del bloque SFD para estructurar secciones/campos. STS dice que el contenido del bloque es “opaco” para STS y **prohíbe mezclar sintaxis STS** dentro del bloque. Aunque en la práctica el parser STS ignora el contenido, conviene **aclarar** la excepción en STS o en SFD (ver “Acciones”).  

---

### 3) STS – Master Guide (interna)

**Fortalezas**

* Regla de oro de `Ref:` interno-solo, **language invariance**, y checklist de auditoría muy claros; KHM y SFD los aplican casi íntegramente.
* Definición formal de **Embedded Blocks** (BEGIN/END) y del estándar de IDs.

**Riesgo/ambigüedad**

* En **Embedded Blocks** se declara `Prohib: Mixing STS syntax within an embedded block`. SFD prescribe encabezados Markdown dentro del bloque. Requiere **nota aclaratoria** para evitar interpretaciones rígidas por parsers.

---

## Coherencia cruzada (lo clave)

1. **SFD embebido vs. KHM naming**

   * SFD: “**embedded-only**” (siempre dentro de un host STS).
   * KHM: permite `..._sfd.md` y además usa `tipo=sfd` + `formato=sfd` (doble SFD). **Conflicto**. Propuesta abajo.

2. **Política de `Ref:` (interna-solo) aplicada globalmente**

   * STS lo exige; SFD lo refuerza (intrablock). KHM lo cumple casi siempre, salvo el punto de commits (cambiar a `Ctx:`/`Src:`).

3. **Sintaxis dentro de bloques embebidos**

   * STS prohíbe “mezcla de sintaxis STS”. SFD requiere `###/####` internamente. Recomiendo **alineación normativa** (ver acción #3).  

---

## Acciones recomendadas (ediciones concretas)

**1) KHM – Cambiar `Ref:` externo por `Ctx:`/`Src:` (obligatorio)**

* En “Commit Message Convention”, sustituir la línea:

  * **De**: `Ref: The full specification is detailed in guide_core_002_alm-master_sts.md, ID GUIDE-ALM-GIT-COMMITS-01.`
  * **A**: `Ctx: guide_core_002_alm-master_sts.md (ID: GUIDE-ALM-GIT-COMMITS-01).` **o**, si se cita como origen normativo, `Src: GUIDE-ALM-GIT-COMMITS-01.`
    Motivo: cumple la política `Ref:` interno-solo de STS.  

**2) KHM – Ajustar el **Naming** para SFD (obligatorio)**

* **Opción A (recomendada)**: eliminar `sfd` como valor válido de `formato` en el nombre de archivo y **mantener todo archivo final como `_sts.md`**. Los contenidos SFD irán **siempre embebidos** (BEGIN/END) dentro del host STS.

  * Actualiza el ejemplo **incorrecto** `sfd_gn_005_formulario-postulacion_sfd.md` por, p.ej.:

    * `kb_gn_005_formulario-postulacion_sts.md` (host STS) **con** `BEGIN_EMBEDDED_BLOCK:: SFD FORM-POST-01` adentro.
* **Opción B**: si se desea conservar `tipo=sfd`, **mantener `formato=sts`**: `sfd_gn_005_formulario-postulacion_sts.md`.
  Motivo: alinear con “embedded-only” de SFD.  

**3) STS – Aclaración en Embedded Blocks (recomendado, normativa)**

* En `GUIDE-STS-COMPONENTS-EMBEDDED-BLOCK-01`, reemplazar **Prohibición** por una redacción que **permita** que el contenido embebido use **su propia** gramática (p.ej., encabezados Markdown como parte del estándar SFD), dejando claro que:

  * “El bloque es **opaco** para STS; los encabezados y claves dentro del bloque **no** deben interpretarse como STS.”
  * “La prohibición aplica a **palabras clave STS** (p.ej., `Purp:`/`Req:`) dentro del bloque, no a la sintaxis Markdown que use el estándar embebido.”
    Motivo: eliminar la ambigüedad con SFD.  

**4) (Opcional) Estandarizar el formato del bloque `BEGIN_LLM_INSTRUCTIONS`**

* Usar el mismo patrón de cercado en las tres guías (con o sin negritas) para uniformidad.

---

## Checklist de conformidad post-cambios

* [ ] KHM: `Ref:` solo a IDs internos; externos movidos a `Ctx:`/`Src:`.  
* [ ] KHM: `formato` final de archivos **solo `_sts.md`**; SFD **siempre** embebido. Ejemplos corregidos.  
* [ ] STS: aclaración sobre sintaxis dentro de embedded blocks aprobada.
* [ ] SFD: se mantiene sin cambios funcionales; queda explícitamente compatible con la aclaración STS.

---

Si quieres, puedo devolverte **patches de texto** listos para pegar en cada archivo con estas correcciones ya redactadas.

Medical References:

1. None — DOI: file-3HEmP4MXpqAR1YxwVt4szv
2. None — DOI: file-Ljrg3SVubzka8vHvs5wiXx
3. None — DOI: file-3NuMv9Lsh93GHyLg8LK3Qm
