# ITSMMT-216 — AI-Generated Anomaly Summary

## Purpose
Uses Now Assist GenAI to generate a natural language summary of the anomaly event — including root cause hypothesis, impacted services, and recommended next steps — and attaches it to the proactive incident.

## Components
| Artifact                    | Type             | File                                    |
|-----------------------------|------------------|-----------------------------------------|
| AnomalySummaryGenerator     | Script Include   | code/AnomalySummaryGenerator.xml        |
| Now Assist Skill Invocation | Flow XML         | code/AnomalySummaryFlow.xml            |
| Summary Prompt Template     | Config XML       | configs/now_assist_prompt_template.xml  |
