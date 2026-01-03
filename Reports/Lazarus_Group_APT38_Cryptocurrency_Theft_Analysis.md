---
title: "Lazarus Group (APT38) Cryptocurrency Theft Analysis"
date: 2026-01-03
type: report
tags:
  - lazarus-group
  - apt38
  - north-korea
  - dprk
  - cryptocurrency
  - bybit
  - ronin
  - threat-actor
source: OSINT Copilot API
job_id: b2cff7cd-970f-45df-97ef-446fce7f6c17
classification: UNCLASSIFIED
---

# Lazarus Group (APT38) Cryptocurrency Theft Analysis

> **Generated via OSINT Copilot Report API** | Job ID: `b2cff7cd-970f-45df-97ef-446fce7f6c17`

---

## Executive Summary

The Lazarus Group is an advanced persistent threat (APT) collective attributed to the North Korean state. It is one of the world's most destructive and prolific cyber-criminal and espionage groups, responsible for billions of dollars in cryptocurrency theft.

<!-- SCREENSHOT NEEDED:
Description: OSINT Copilot report generation showing Lazarus Group query
Filename: lazarus-report-generation.png
Location: screenshots/
Instructions: 1. Open OSINT Copilot chat, 2. Request Lazarus Group report, 3. Capture interface
-->

---

## 1. Entity Overview

| Attribute | Value |
|-----------|-------|
| **Primary Name** | Lazarus Group |
| **Aliases** | APT38, Bluenoroff, Andariel, Hidden Cobra, ZINC, Diamond Sleet |
| **Attribution** | Democratic People's Republic of Korea (DPRK) |
| **Parent Organization** | Reconnaissance General Bureau (RGB) |
| **Active Since** | 2009 |
| **Location** | Potonggang District, Pyongyang, North Korea |

### Known Aliases
- **APT38** - Financial crime focused subgroup
- **Bluenoroff** - Cryptocurrency theft unit
- **Andariel** - Espionage focused subgroup
- **Hidden Cobra** - US Government designation
- **ZINC** - Microsoft designation
- **Diamond Sleet** - Microsoft updated naming
- **Guardians of Peace** - Sony Pictures attack alias
- **Labyrinth Chollima** - CrowdStrike designation

---

## 2. Major Cryptocurrency Heists

| Date | Target | Amount Stolen | Method |
|------|--------|---------------|--------|
| 2016 | Bangladesh Bank | $81 million | SWIFT manipulation |
| 2022 | Ronin Network | $620 million | Bridge exploit |
| 2022 | Harmony Bridge | $100 million | Private key compromise |
| 2023 | Atomic Wallet | $100 million | Supply chain attack |
| 2025 | Bybit Exchange | $1.5 billion | Hot wallet compromise |

### Total Estimated Theft: **$3+ billion** in cryptocurrency

---

## 3. Tactics, Techniques & Procedures (TTPs)

### MITRE ATT&CK Mapping

| Tactic | Technique | ID |
|--------|-----------|-----|
| Initial Access | Spearphishing Attachment | T1566.001 |
| Initial Access | Supply Chain Compromise | T1195 |
| Execution | User Execution | T1204 |
| Persistence | Registry Run Keys | T1547.001 |
| Defense Evasion | Masquerading | T1036 |
| Collection | Data from Local System | T1005 |
| Exfiltration | Exfiltration Over C2 | T1041 |
| Impact | Financial Theft | T1657 |

### Attack Methodology
1. **Social Engineering** - Fake job offers targeting crypto employees
2. **Spear-phishing** - Malicious documents with embedded macros
3. **Supply Chain** - Compromising software dependencies
4. **Zero-day Exploitation** - Using undisclosed vulnerabilities
5. **Cryptocurrency Laundering** - Mixing services and chain-hopping

---

## 4. Money Laundering Techniques

```
Stolen Crypto → Tornado Cash → Chain Hopping → OTC Desks → Fiat
                    ↓
              Sinbad Mixer
                    ↓
              Bridge Protocols
                    ↓
              Privacy Coins (Monero)
```

### Known Laundering Infrastructure
- **Tornado Cash** - Ethereum mixer (sanctioned)
- **Sinbad** - Bitcoin mixer (sanctioned)
- **ChipMixer** - Bitcoin mixer (seized)
- **Blender.io** - Bitcoin mixer (sanctioned)

---

## 5. Sanctions Status

### United States (OFAC)
- **Designated**: April 14, 2022
- **Program**: North Korea Sanctions Regulations
- **Basis**: Cyber-theft, ransomware, global financial attacks
- **Secondary Sanctions Risk**: Yes

### Australia (DFAT)
- **Listed**: Yes
- **Topics**: sanction, crime.fin, export.control, crime.cyber, debarment

### Japan (MOF)
- **Listed**: Yes
- **Asset Freeze**: Active

### United Nations
- **Panel of Experts**: Identified as Lab 110 / Lazarus Group

---

## 6. Related Entities

| Entity | Relationship |
|--------|--------------|
| [[Reconnaissance General Bureau]] | Parent Organization |
| [[Bluenoroff]] | Subgroup (Financial) |
| [[Andariel]] | Subgroup (Espionage) |
| [[Bybit]] | Victim (2025) |
| [[Ronin Network]] | Victim (2022) |
| [[Bangladesh Bank]] | Victim (2016) |
| [[Sony Pictures]] | Victim (2014) |

---

## 7. Risk Assessment

| Risk Category | Level | Notes |
|---------------|-------|-------|
| Cyber Threat | **CRITICAL** | Active, sophisticated operations |
| Sanctions Exposure | **CRITICAL** | Designated by US, AU, JP, UN |
| Financial Crime | **CRITICAL** | Multi-billion dollar theft |
| Attribution Confidence | **HIGH** | Multiple government attributions |

---

## 8. Indicators of Compromise (IOCs)

### Cryptocurrency Addresses (Sanctioned)
- `0x098B716B8Aaf21512996dC57EB0615e2383E2f96` - Ronin Exploiter
- `0x4F47Bc496083C727c5fbe3CE9CDf2B0f6496270c` - Harmony Exploiter

### Malware Families
- AppleJeus
- BLINDINGCAN
- HOPLIGHT
- ELECTRICFISH
- BADCALL

---

## Sources

1. U.S. Treasury OFAC: https://home.treasury.gov/news/press-releases/jy0768
2. Wikipedia - Lazarus Group: https://en.wikipedia.org/wiki/Lazarus_Group
3. DFAT Sanctions List
4. Japan MOF Sanctions
5. UN Panel of Experts Reports

---

*Report generated by OSINT Copilot | Classification: UNCLASSIFIED*
*API Job ID: b2cff7cd-970f-45df-97ef-446fce7f6c17*
*Last updated: 2026-01-03*

