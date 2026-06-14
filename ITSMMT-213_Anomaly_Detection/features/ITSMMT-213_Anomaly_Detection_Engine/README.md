# ITSMMT-213 — Anomaly Detection Engine

## Purpose
Implements the four-state machine (Normal → Anomalous → Degraded → Outage) via the `ServiceStateEngine` Script Include, bridging `pa_kpi_signal` events to `u_anomaly_event` custom table.

## Components
| Artifact                  | Type             | File                                          |
|---------------------------|------------------|-----------------------------------------------|
| ServiceStateEngine        | Script Include   | code/ServiceStateEngine.xml                   |
| AnomalySignalBridge       | Business Rule    | code/AnomalySignalBridge_BR.xml               |
| u_anomaly_event           | Table Definition | configs/u_anomaly_event_table.xml             |
| KPI Indicator — MTTR      | PA Indicator     | configs/pa_indicator_mttr.xml                 |
| KPI Indicator — Open Inc  | PA Indicator     | configs/pa_indicator_open_incidents.xml       |
| ATF Test Suite            | ATF             | test/ITSMMT213_ATF_Suite.xml                  |

## State Transition Rules
- **Normal → Anomalous**: Auto — KPI signal breach detected by PA
- **Anomalous → Degraded**: Auto — 3+ KPIs breached concurrently
- **Degraded → Outage**: **Manual only** — `major_incident_manager` role required
- **Any → Normal**: Auto — signal resolution via `SignalResolutionBridge`
