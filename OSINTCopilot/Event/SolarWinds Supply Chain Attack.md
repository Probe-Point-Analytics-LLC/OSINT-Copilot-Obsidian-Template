---
id: "evt-solarwinds-001"
type: Event
ftmSchema: Event
label: "SolarWinds Supply Chain Attack"
name: "SolarWinds Supply Chain Attack"
description: "A cyber attack conducted by APT29 compromising 18,000 organizations via trojanized SolarWinds Orion updates."
start_date: "2020-03-01"
end_date: "2020-12-13"
add_to_timeline: true
country: "United States"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# SolarWinds Supply Chain Attack

## Properties

- **Name**: SolarWinds Supply Chain Attack
- **Type**: Supply Chain Compromise
- **Start Date**: March 2020 (initial compromise)
- **End Date**: December 13, 2020 (public disclosure)
- **Attribution**: APT29 (Cozy Bear) / Russian SVR
- **Victims**: ~18,000 organizations
- **Add to Timeline**: Yes

## Relationships

- [[APT29 (Cozy Bear)]] - CONDUCTED_BY
- [[SolarWinds]] - VICTIM
- [[Microsoft]] - VICTIM
- [[U.S. Treasury Department]] - VICTIM
- [[U.S. Department of Commerce]] - VICTIM
- [[FireEye]] - DISCOVERED_BY
- [[SolarWinds Supply Chain Attack]] DIRECTORSHIP [[Semion Mogilevich]]

## Notes

The most significant supply chain compromise in history. APT29 trojanized SolarWinds Orion software updates, compromising approximately 18,000 organizations.

### Timeline
- **March 2020**: Initial compromise of SolarWinds build system
- **March-June 2020**: SUNBURST backdoor inserted into Orion updates
- **October 2020**: FireEye detects intrusion
- **December 8, 2020**: FireEye publicly discloses breach
- **December 13, 2020**: CISA issues emergency directive

### Key Victims
- U.S. Treasury Department
- U.S. Department of Commerce
- U.S. Department of Homeland Security
- Microsoft
- FireEye
- Intel
- Cisco
- VMware

### Malware Used
- **SUNBURST**: Primary backdoor in Orion DLL
- **TEARDROP**: Memory-only Cobalt Strike loader
- **RAINDROP**: Secondary loader variant

### MITRE ATT&CK Techniques
- T1195.002 - Supply Chain Compromise
- T1078 - Valid Accounts
- T1071.001 - Web Protocols
- T1027 - Obfuscated Files

### Related Reports
- [[APT29_Cozy_Bear_Threat_Profile]]

