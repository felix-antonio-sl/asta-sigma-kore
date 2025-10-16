# GT-TESTING-001: Estrategia de Testing

**ID:** GT-TESTING-001  
**Versión:** 2.0  
**Dominio:** Δ-O (Flujo Operacional)  
**Protocolo:** 3.2 - Gestión del Flujo de Entrega

## Invariante Central

**Los tests son especificaciones ejecutables, no documentación opcional.**

Su propósito es permitir cambios con confianza, no alcanzar 100% de cobertura.

## Pirámide de Testing

```plain

        ┌─────────┐
       ╱  E2E (5%) ╲      Lentos, frágiles, costosos
      ╱─────────────╲
     ╱ Integration   ╲    Moderados
    ╱    (15%)       ╲
   ╱─────────────────╲
  ╱   Unit (80%)      ╲   Rápidos, estables, baratos
 ╱─────────────────────╲

```

**Regla:** Mayoría de tests deben ser unitarios.

## Tests Unitarios

### Definición

**Qué:** Verifican una unidad de código aislada (función, clase).

**Características:**

- ✅ Rápidos (<10ms por test)
- ✅ Aislados (sin BD, sin red, sin filesystem)
- ✅ Determinísticos (mismo input → mismo output)

### Estructura: AAA (Arrange-Act-Assert)

**Patrón:**

1. **Arrange:** Preparar datos de entrada
2. **Act:** Ejecutar la función bajo test
3. **Assert:** Verificar el resultado

### Cobertura

**Objetivo:** ≥80% de cobertura de líneas.

**Regla:** Código crítico (validaciones, lógica de negocio) debe tener 100% de cobertura.

## Tests de Integración

### Definición

**Qué:** Verifican interacción entre componentes (código + BD, código + API externa).

**Características:**

- ⏱️ Moderadamente lentos (segundos)
- 🔗 Requieren dependencias reales o simuladas
- 🎯 Verifican contratos entre componentes

## Tests E2E (End-to-End)

### Definición

**Qué:** Verifican flujos completos desde la perspectiva del usuario.

**Características:**

- 🐌 Lentos (minutos)
- 💔 Frágiles (muchas dependencias)
- 💰 Costosos de mantener

**Regla:** Solo para flujos críticos de negocio (camino feliz).

## Criterios de Decisión: ¿Qué Tipo de Test?

| Escenario | Tipo de Test | Justificación |
|-----------|--------------|---------------|
| Validación de RUT | Unitario | Lógica pura, sin dependencias |
| Guardar en BD | Integración | Interacción con BD |
| Flujo completo de postulación | E2E | Flujo crítico de negocio |

## Integración con ASTA-Kore

**Pipeline CI/CD:** Los tests se ejecutan automáticamente en cada commit.

**Definition of Done:** Una historia no está "Done" hasta que tiene tests automatizados.

**Referencia:** Ver `gt_flujo_entrega.md` para integración de tests en el pipeline.
