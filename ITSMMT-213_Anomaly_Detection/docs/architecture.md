# Architecture: ITSMMT-213 Anomaly Detection System

## State Machine
| State      | Value | Auto-Set? | Notes                                      |
|------------|-------|-----------|---------------------------------------------|
| Normal     | 1     | Yes       | KPI within threshold                        |
| Anomalous  | 2     | Yes       | KPI exceeds 2σ from 90-day baseline         |
| Degraded   | 3     | Yes       | 3+ KPIs anomalous simultaneously            |
| Outage     | 4     | **No**    | Must be declared by `major_incident_manager`|

## Key Tables
| Table             | Purpose                              |
|-------------------|--------------------------------------|
| pa_kpi_signal     | Native PA signal source              |
| u_anomaly_event   | Custom anomaly event tracking        |
| incident          | Auto-created incidents               |
| va_interaction    | Virtual Agent notifications          |
