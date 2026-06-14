# ITSMMT-214 — Proactive Incident Creator

## Purpose
Automatically creates P1/P2 incidents when `u_anomaly_event` reaches Degraded (state=3) or higher. Links incidents to the triggering CI and anomaly event.

## Components
| Artifact                     | Type           | File                                    |
|------------------------------|----------------|-----------------------------------------|
| ProactiveIncidentCreator      | Script Include | code/ProactiveIncidentCreator.xml       |
| u_anomaly_event BR (post-insert) | Business Rule | code/AnomalyEvent_IncidentTrigger_BR.xml |
| Incident Template - Anomaly  | Task Template  | configs/incident_template_anomaly.xml   |
| ATF — Incident Auto-Creation | ATF Test       | test/ITSMMT214_ATF_Suite.xml            |

## Key Rules
- Only creates an incident if no open P1/P2 incident already exists for the CI (prevents duplicates)
- Incident priority is derived from anomaly state: Degraded=P2, Outage=P1
- Incident is linked to `u_anomaly_event` via `u_anomaly_event` reference field
