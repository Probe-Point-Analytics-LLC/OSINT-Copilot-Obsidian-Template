---
id: "web-freescan-001"
type: Website
ftmSchema: Website
label: "freescanonline.com"
domain: "freescanonline.com"
url: "http://freescanonline.com"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# freescanonline.com

## Properties

- **Domain**: freescanonline.com
- **Type**: Command & Control (C2) Domain
- **Attribution**: APT29 (Cozy Bear)
- **Campaign**: SolarWinds SUNBURST
- **Status**: Sinkholed

## Relationships

- [[APT29 (Cozy Bear)]] - USED_BY
- [[SolarWinds Supply Chain Attack]] - USED_IN

## Notes

Known C2 domain for APT29's SUNBURST malware used in the SolarWinds supply chain attack.

### Technical Details
- Secondary C2 domain for SUNBURST
- Used for data exfiltration
- Sinkholed after discovery

### IOC Details
- **First Seen**: 2020
- **Malware**: SUNBURST

### Related Reports
- [[APT29_Cozy_Bear_Threat_Profile]]

