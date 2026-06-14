bat@echo off
SET TAG=%1/%2/%3
echo Creating tag: %TAG%
git tag -a "%TAG%" -m "%~4"
git push origin "%TAG%"
echo Done. Tagged: %TAG%

