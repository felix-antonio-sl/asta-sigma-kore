# GT-USER-STORIES-001: Técnicas de Historias de Usuario

**ID:** GT-USER-STORIES-001  
**Versión:** 2.0  
**Dominio:** Δ-T (Flujo Táctico)  
**Protocolo:** 2.2 - Mapeo de Historias

## Invariante Central

**Una historia de usuario es una promesa de conversación, no una especificación completa.**

Su propósito es **anclar el diálogo** sobre valor, no documentar exhaustivamente el trabajo.

**Referencia:** Ver `protocolos.md` §2.2.2 para formato canónico y criterios INVEST.

## Técnicas de Slicing (Rebanado)

### Problema: Historia Demasiado Grande

**Señal:** Estimación >5 días o múltiples criterios de aceptación no relacionados.

**Solución:** Aplicar patrones de slicing.

### Patrón 1: Slicing por Flujo de Trabajo

**Historia original:**

```plain
Como usuario, quiero gestionar mis proyectos, para organizarlos
```

**Rebanadas:**

```plain
H1: Como usuario, quiero crear un proyecto
H2: Como usuario, quiero editar un proyecto
H3: Como usuario, quiero eliminar un proyecto
H4: Como usuario, quiero archivar un proyecto
```

### Patrón 2: Slicing por Regla de Negocio

**Historia original:**

```plain
Como sistema, quiero validar postulaciones
```

**Rebanadas:**

```plain
H1: Validar que el RUT es válido
H2: Validar que el postulante es mayor de edad
H3: Validar que no tiene postulaciones duplicadas
H4: Validar que adjuntó documentos obligatorios
```

### Patrón 3: Slicing por Variación de Datos

**Historia original:**

```plain
Como usuario, quiero buscar proyectos
```

**Rebanadas:**

```plain
H1: Buscar por nombre exacto
H2: Buscar por nombre parcial (contiene)
H3: Buscar por múltiples campos
H4: Buscar con filtros combinados (AND/OR)
```

### Patrón 4: Slicing por Camino Feliz vs. Excepciones

**Historia original:**

```plain
Como usuario, quiero subir un archivo
```

**Rebanadas:**

```plain
H1: Subir archivo válido (PDF <5MB) → Camino feliz
H2: Mostrar error si archivo >5MB → Excepción
H3: Mostrar error si formato no es PDF → Excepción
H4: Permitir reemplazar archivo → Variación
```

**Regla:** Implementar primero el camino feliz. Las excepciones son historias separadas.

## Criterios de Aceptación: Formato DADO-CUANDO-ENTONCES

### Estructura

```yaml
criterios:
  - condición: [estado inicial]
    acción: [lo que hace el usuario]
    resultado: [estado final verificable]
```

### Ejemplo

```plain
Criterios de Aceptación:
- [ ] DADO que soy un usuario autenticado
      CUANDO hago clic en "Crear Proyecto"
      ENTONCES veo un formulario con campos: nombre, descripción, fecha inicio
      
- [ ] DADO que completé el formulario
      CUANDO hago clic en "Guardar"
      ENTONCES el proyecto aparece en mi lista
      Y recibo una notificación de confirmación
```

**Formato:** DADO-CUANDO-ENTONCES (Given-When-Then) de BDD.

## Integración con ASTA-Kore

| Artefacto | Integración |
|:---|:---|
| **Story Mapping** | Las historias provienen de rebanar el Story Map |
| **Tablero de Flujo** | Las historias entran a "Opciones" cuando cumplen Definition of Ready |
| **OKRs** | Cada historia tiene tag de OKR y contribuye a un KR |
| **Contratos** | Los criterios de aceptación definen el contrato de comportamiento |
