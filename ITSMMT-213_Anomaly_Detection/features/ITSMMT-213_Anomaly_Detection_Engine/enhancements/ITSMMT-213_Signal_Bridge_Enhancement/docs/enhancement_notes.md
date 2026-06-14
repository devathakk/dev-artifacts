# ITSMMT-213 Signal Bridge Enhancement

## Purpose
Adds multi-signal correlation — groups related KPI breaches under a single parent `u_anomaly_event` rather than creating one per signal.

## Change from Base Feature
| Aspect           | Base                          | Enhancement                              |
|------------------|-------------------------------|------------------------------------------|
| Event granularity | One event per signal          | One event per CI (grouped)               |
| Signal count     | Not tracked                   | Tracked via `u_signal_count`             |
| Suppression      | Window-based (15 min)         | Window + CI dedup                        |
