# Guía Técnica: Arquitectura del Mono-Repo de Implementación

ID: `GT-ALM-001`
Versión: 1.0
Dominio: Gestión del Ciclo de Vida de las Aplicaciones (ALM)

## 1. Propósito

Esta guía define la arquitectura canónica para el mono-repo de una organización que implementa el marco ASTA-KORE. Su objetivo es estandarizar la estructura de directorios, la ubicación de los artefactos clave y la relación con el marco KORE para asegurar la coherencia, navegabilidad y automatización del ecosistema.

## 2. Estructura de Repositorios

Se establece una separación clara entre el marco (la definición de KORE) y la implementación (el trabajo vivo de la organización).

* Repositorio del Marco (`asta-kore-framework`): Contiene las guías, ontologías y plantillas de contrato. Es la fuente de verdad del estándar.
* Repositorio de Implementación (Mono-repo de la Organización): Contiene el trabajo específico de la organización y consume el marco como un submódulo de solo lectura.

### 2.1. Estructura Raíz del Mono-Repo

La estructura raíz de referencia es la siguiente:

```plain
/<org-repo>/
├─ _framework_asta-kore/      # Submódulo Git apuntando al repo del marco (solo lectura)
├─ entidades_de_valor/        # Contiene todas las Entidades de Valor (EVs)
├─ conocimiento/              # Corpus de conocimiento compartido (si aplica)
├─ paquetes/                  # Librerías y componentes compartidos
├─ ops/                       # Operaciones a nivel de repositorio (pipelines, policies)
└─ proyectos_espejo/          # Charters de proyectos sin código propio (solo gestión)
```

### 2.2. Estructura de una Entidad de Valor (EV)

Cada EV, sea una aplicación, un proceso o un agente, sigue una estructura interna predecible:

```plain
/entidades_de_valor/
└─ ev-<nombre-ev>/
   ├─ contratos/             # Instancias VIVAS de los contratos (ej. contrato_proceso.yml)
   ├─ docs/                  # Documentación: ADRs, CVCs, Story Maps
   │  ├─ adrs/               # Decisiones de arquitectura
   │  └─ cvc/                # Informes del Ciclo de Vida del Valor (ej. informe-2025-Q4.md)
   ├─ ops/                   # Pipelines y configuración de CI/CD específicos de la EV
   ├─ src/                   # Código fuente
   └─ tests/                 # Pruebas automatizadas
```

### 2.3. Convención para Agentes de IA

Los Agentes de IA son EVs de primera clase. Para distinguirlos y facilitar la automatización, siguen una convención específica:

* Se alojan en `entidades_de_valor/ev-agente-<nombre-agente>/`.
* Su artefacto principal es el `contrato_agente.yml` en la raíz de su directorio, que centraliza su definición y gobernanza.

## 3. Principios Operativos

1. Framework como Dependencia: El código de la organización NUNCA debe modificar el contenido de `/_framework_asta-kore/`. Las actualizaciones se gestionan a través de `git submodule update`.
2. Contratos Vivos: Los contratos en `entidades_de_valor//contratos/` son artefactos operables. Los pipelines de CI/CD DEBEN validarlos contra los esquemas definidos en el marco.
3. Visibilidad del Valor (CVC): Cada EV debe producir un informe CVC trimestral en su directorio `docs/cvc/`, vinculando evidencia de OKRs, demos y métricas de salud.
