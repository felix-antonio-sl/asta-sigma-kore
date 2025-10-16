# GT-SECURITY-001: Modelo de Seguridad

**ID:** GT-SECURITY-001  
**Versión:** 2.0  
**Dominio:** Σ-O (Diseño Operacional)  
**Protocolo:** 3.1 - Gestión de la Confiabilidad

## Invariante Central

**La seguridad es una propiedad del sistema, no un componente añadido al final.**

Su propósito es proteger datos y operaciones sin impedir el flujo de valor.

## Principios

### Principio 1: Zero Trust

**Regla:** Nunca confiar, siempre verificar.

**Criterio:** Toda request debe autenticarse y autorizarse, incluso dentro de la red interna.

### Principio 2: Defense in Depth

**Regla:** Múltiples capas de seguridad.

**Capas:**

1. Red (firewall, WAF)
2. Aplicación (autenticación, autorización)
3. Datos (encriptación, enmascaramiento)
4. Auditoría (logs, alertas)

### Principio 3: Least Privilege

**Regla:** Mínimos permisos necesarios.

**Criterio:** Cada usuario/servicio solo tiene acceso a lo estrictamente necesario para su función.

## Patrones de Autenticación

### Patrón: Token Stateless

**Criterio de decisión:**

- ✅ Usar tokens stateless (JWT) si: APIs distribuidas, múltiples servicios
- ❌ No usar si: Necesitas revocación inmediata de sesiones

### Patrón: OAuth 2.0 / OIDC

**Criterio de decisión:**

- ✅ Usar OAuth si: Delegación de autorización a terceros
- ✅ Usar OIDC si: Necesitas información de identidad del usuario

## Integración con ASTA-Kore

**Contratos de Seguridad:** Toda EV debe declarar en su contrato:

- Modelo de autenticación
- Modelo de autorización (RBAC/ABAC)
- Datos sensibles manejados
- Políticas de encriptación

**Referencia:** Ver plantillas de contratos en `/plantillas_contratos/`
