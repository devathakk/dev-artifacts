# ITSMMT-XXX — SLA Escalation

## Overview
Automatically escalates P2 incidents approaching or breaching their SLA deadline.
On warning threshold, the assignment group manager is notified via event queue.
On breach, the incident is promoted to P1 and the audit trail is updated.

## Artifacts

| File | Type | Table |
|------|------|-------|
| `code/IncidentEscalationEngine_BR.xml` | Business Rule | `incident` |
| `code/IncidentEscalationEngine_SI.xml` | Script Include | — |
| `configurations/sys_properties.xml` | System Properties | `sys_properties` |

## Key Properties

| Property | Default | Description |
|----------|---------|-------------|
| `u_escalation.sla_warn_minutes` | 30 | Warning threshold (minutes before SLA breach) |
| `u_escalation.auto_promote_p1` | true | Auto-promote to P1 on breach |
| `u_escalation.audit_enabled` | true | Write events to audit table |

## Dependencies
- Custom table: `u_incident_escalation_audit`
- Event: `x_itsm_ilc.incident.escalation_notify`
- Scope: `x_itsm_ilc`
