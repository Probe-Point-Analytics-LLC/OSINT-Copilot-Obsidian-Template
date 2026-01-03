---
id: "ent-apt29-001"
type: Company
ftmSchema: Company
label: "APT29 (Cozy Bear)"
name: "APT29 (Cozy Bear)"
description: "A Russian SVR-attributed cyber espionage group active since 2008."
country: "Russia"
alias: "Cozy Bear, The Dukes, Dark Halo, NOBELIUM, Midnight Blizzard, UNC2452"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# APT29 (Cozy Bear)

## Properties

- **Name**: APT29 (Cozy Bear)
- **Type**: Advanced Persistent Threat Group
- **Attribution**: Russian Foreign Intelligence Service (SVR)
- **Country**: Russia
- **Active Since**: 2008
- **Aliases**: Cozy Bear, The Dukes, Dark Halo, NOBELIUM, Midnight Blizzard, UNC2452

## Relationships

- [[Russian Foreign Intelligence Service (SVR)]] - PARENT_ORGANIZATION
- [[SolarWinds Supply Chain Attack]] - CONDUCTED
- [[Moscow]] - OPERATES_FROM
- [[APT28 (Fancy Bear)]] - RELATED_TO
- [[avsvmcloud.com]] - USES (C2 Domain)
- [[freescanonline.com]] - USES (C2 Domain)
- [[Microsoft]] - TARGETED
- [[U.S. Treasury Department]] - TARGETED

## Notes

APT29 conducted the SolarWinds supply chain attack in 2020, compromising 18,000 organizations including the U.S. Treasury Department, Department of Commerce, and Microsoft. Key malware includes SUNBURST, TEARDROP, and WINELOADER. They operate from Moscow, Russia and target NATO countries.

### MITRE ATT&CK Techniques
- T1566.002 - Spearphishing Link
- T1195.002 - Supply Chain Compromise
- T1059.001 - PowerShell
- T1078 - Valid Accounts
- T1027 - Obfuscated Files
- T1003 - OS Credential Dumping
- T1114 - Email Collection
- T1102 - Web Service

### Malware Arsenal
- SUNBURST - Trojanized SolarWinds component
- TEARDROP - Memory-only dropper
- RAINDROP - Shellcode loader
- WellMess - Cross-platform RAT
- WINELOADER - 2024 campaign backdoor

### Related Reports
- [[APT29_Cozy_Bear_Threat_Profile]]
- [[Dark_Web_Investigation_APT29_Credentials]]

