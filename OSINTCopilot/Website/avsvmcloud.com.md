---
id: "web-avsvmcloud-001"
type: Website
ftmSchema: Website
label: "avsvmcloud.com"
domain: "avsvmcloud.com"
url: "http://avsvmcloud.com"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# avsvmcloud.com

## Properties

- **Domain**: avsvmcloud.com
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
- Used for SUNBURST backdoor C2 communications
- Domain generated algorithmically (DGA)
- Sinkholed by Microsoft/FireEye after discovery

### IOC Details
- **First Seen**: March 2020
- **Last Seen**: December 2020
- **Malware**: SUNBURST

### Related Reports
- [[APT29_Cozy_Bear_Threat_Profile]]

