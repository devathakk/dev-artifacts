# ITSMMT-213 — Proactive Anomaly Detection & Incident Intelligence

## Overview
This epic delivers a proactive incident intelligence system built on native ServiceNow Performance Analytics KPI Indicators and KPI Signal configuration. It detects service anomalies, groups related incidents, notifies through Virtual Agent, and suppresses alert storms.

## Architecture
- **State Machine**: Normal → Anomalous → Degraded → Outage (Outage requires human declaration by `major_incident_manager`)
- **Signal Bridge**: `pa_kpi_signal` → `u_anomaly_event` via Business Rules
- **Baseline**: 90-day historical, daily collection jobs

## Folder Structure
```
ITSMMT-213_Anomaly_Detection/
├── README.md
├── docs/
├── configurations/
├── features/
│   ├── ITSMMT-213_Anomaly_Detection_Engine/
│   └── ITSMMT-214_Proactive_Incident_Creator/
└── stories/
    ├── ITSMMT-215_Virtual_Agent_Notification/
    └── ITSMMT-216_AI_Summary_Generation/
```

## Git Tag Convention
`{scope}/{type}/{identifier}/v{MAJOR}.{MINOR}`

Example: `global/feature/anomaly-detection-engine/v1.0`

## Deployment
Deploy via ServiceNow CI/CD REST API. Do NOT deploy via direct XML import in PROD.
