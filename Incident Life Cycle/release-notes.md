# Release Notes — ITSMMT-213 Anomaly Detection System

## v1.0 — Initial Release

### Features Delivered
| ID          | Title                            | Type    | Status   |
|-------------|----------------------------------|---------|----------|
| ITSMMT-213  | Anomaly Detection Engine         | Feature | ✅ Done  |
| ITSMMT-214  | Proactive Incident Creator       | Feature | ✅ Done  |
| ITSMMT-215  | Virtual Agent Notification       | Story   | ✅ Done  |
| ITSMMT-216  | AI Summary Generation            | Story   | ✅ Done  |

### Key Architectural Decisions
1. **State Machine**: Outage (state=4) is never set automatically — requires `major_incident_manager` role
2. **Baseline**: 90-day rolling window, configurable via `u_anomaly.baseline_days`
3. **Signal Bridge**: `pa_kpi_signal` → `u_anomaly_event` (one event per CI, not per signal)
4. **AI Summary**: Falls back gracefully if Now Assist unavailable
5. **Alert Suppression**: 15-minute dedup window, configurable

### System Properties Added
| Property                           | Default | Description                    |
|------------------------------------|---------|--------------------------------|
| u_anomaly.baseline_days            | 90      | Baseline calculation window    |
| u_anomaly.std_dev_threshold        | 2       | Std deviation breach threshold |
| u_anomaly.degraded_kpi_count       | 3       | KPIs needed for Degraded state |
| u_anomaly.alert_suppression_enabled| true    | Enable/disable storm suppression|

### Git Tag
`global/release/anomaly-detection/v1.0`

### Deployment
1. Import via ServiceNow CI/CD REST API: `POST /api/sn_cicd/sc/packages/deploy`
2. Run ATF suite: `ITSMMT-213 Anomaly Detection Suite`
3. Validate PA indicators collect in: **Performance Analytics > Indicators**
4. Confirm `u_anomaly_event` table is created and accessible

### Known Limitations
- Now Assist skill requires `sn_now_assist` application on Zurich+
- Outage declaration UI action not included in v1.0 (planned v1.1)
