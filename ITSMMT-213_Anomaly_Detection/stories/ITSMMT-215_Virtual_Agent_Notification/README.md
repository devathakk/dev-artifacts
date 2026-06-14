# ITSMMT-215 — Virtual Agent Notification

## Purpose
Sends proactive Virtual Agent notifications to impacted users and assignment groups when an anomaly event escalates to Degraded or higher.

## Components
| Artifact                        | Type           | File                                      |
|---------------------------------|----------------|-------------------------------------------|
| AnomalyVANotifier Script Include | Script Include | code/AnomalyVANotifier.xml               |
| Flow Designer — VA Notification  | Flow XML       | code/AnomalyVANotificationFlow.xml       |
| Notification Template            | Config XML     | configs/va_notification_template.xml     |
