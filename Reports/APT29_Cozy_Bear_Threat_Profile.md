---
title: "APT29 (Cozy Bear) Threat Actor Profile"
date: 2026-01-03
type: report
tags:
  - apt29
  - cozy-bear
  - russia
  - svr
  - threat-actor
  - cyber-espionage
  - solarwinds
source: OSINT Copilot API
job_id: c845e746-4bc2-4373-9856-abc967bdce6b
classification: UNCLASSIFIED
---

# APT29 (Cozy Bear) Threat Actor Profile

> **Generated via OSINT Copilot Report API** | Job ID: `c845e746-4bc2-4373-9856-abc967bdce6b`

---

## Executive Summary

APT29, also known as Cozy Bear, is a cyber-espionage group attributed to the Russian Foreign Intelligence Service (SVR). Active since at least 2008, the group targets government institutions, political organizations, and multinational companies worldwide.

<!-- SCREENSHOT NEEDED:
Description: OSINT Copilot chat interface showing report generation request
Filename: apt29-report-generation.png
Location: screenshots/
Instructions: 1. Open OSINT Copilot chat, 2. Type report request for APT29, 3. Capture the interface
-->

---

## 1. Identity & Background

| Attribute | Value |
|-----------|-------|
| **Primary Name** | APT29 |
| **Aliases** | Cozy Bear, The Dukes, Dark Halo, NOBELIUM, Midnight Blizzard, UNC2452 |
| **Attribution** | Russian Foreign Intelligence Service (SVR) |
| **Active Since** | 2008 |
| **Motivation** | Cyber Espionage, Intelligence Collection |
| **Target Regions** | United States, Europe, NATO countries |

### Known Aliases
- **Cozy Bear** - CrowdStrike designation
- **The Dukes** - F-Secure designation
- **NOBELIUM** - Microsoft designation (post-SolarWinds)
- **Midnight Blizzard** - Microsoft's updated naming convention
- **Dark Halo** - Volexity designation
- **UNC2452** - Mandiant designation

---

## 2. Notable Operations

### SolarWinds Supply Chain Attack (2020)
The most significant supply chain compromise in history. APT29 trojanized SolarWinds Orion software updates, compromising approximately 18,000 organizations including:
- U.S. Treasury Department
- U.S. Department of Commerce
- U.S. Department of Homeland Security
- Microsoft
- FireEye

### Democratic National Committee Breach (2016)
APT29 gained initial access to DNC networks in summer 2015, operating alongside APT28 (Fancy Bear). The group maintained persistent access for nearly a year.

### COVID-19 Vaccine Research Targeting (2020)
In July 2020, NCSC, CISA, and NSA jointly attributed attacks on COVID-19 vaccine research organizations to APT29.

### German Political Parties (2024)
Targeted German political organizations with sophisticated phishing campaigns leading to credential theft and malware installation.

---

## 3. Tactics, Techniques & Procedures (TTPs)

### MITRE ATT&CK Mapping

| Tactic | Technique | ID |
|--------|-----------|-----|
| Initial Access | Spearphishing Link | T1566.002 |
| Initial Access | Supply Chain Compromise | T1195.002 |
| Execution | PowerShell | T1059.001 |
| Persistence | Valid Accounts | T1078 |
| Defense Evasion | Obfuscated Files | T1027 |
| Credential Access | OS Credential Dumping | T1003 |
| Collection | Email Collection | T1114 |
| C2 | Web Service | T1102 |

### Key Attack Characteristics
- Spear-phishing using credential theft
- Encrypted C2 channels
- Multi-stage malware delivery
- Supply-chain compromise operations
- Persistence via cloud authentication manipulation

---

## 4. Malware Arsenal

| Malware | Type | Description |
|---------|------|-------------|
| SUNBURST | Backdoor | Trojanized SolarWinds Orion component |
| TEARDROP | Loader | Memory-only dropper for Cobalt Strike |
| RAINDROP | Loader | Shellcode loader variant |
| WellMess | RAT | Cross-platform malware for COVID-19 targeting |
| WellMail | RAT | Companion to WellMess |
| BEATDROP | Downloader | C-based downloader using Trello for C2 |
| WINELOADER | Backdoor | Used in 2024 German political party attacks |

---

## 5. Sanctions Status

**IMPORTANT**: As of 2026-01-03, APT29 as an entity is **not directly sanctioned**.

However, the Russian Foreign Intelligence Service (SVR) is subject to sanctions by:
- United States (Executive Order 13694)
- European Union
- United Kingdom

These sanctions cover affiliated Russian state security organs but do not name APT29 explicitly.

---

## 6. Related Entities

| Entity | Relationship |
|--------|--------------|
| [[Russian Foreign Intelligence Service (SVR)]] | Parent Organization |
| [[SolarWinds]] | Victim (2020) |
| [[Microsoft]] | Victim (2024) |
| [[Democratic National Committee]] | Victim (2016) |
| [[APT28 (Fancy Bear)]] | Peer Group (GRU) |

---

## 7. Risk Assessment

| Risk Category | Level | Notes |
|---------------|-------|-------|
| Cyber Threat | **CRITICAL** | Active, sophisticated operations |
| Attribution Confidence | **HIGH** | Multiple government attributions |
| Sanctions Exposure | **MEDIUM** | Parent org sanctioned |
| Reputational Risk | **HIGH** | Association with state espionage |

---

## 8. Recommendations

1. **Audit OAuth Applications** - Review all registered applications in Azure AD
2. **Enable MFA** - Enforce multi-factor authentication for all accounts
3. **Monitor Service Principals** - Alert on credential additions
4. **Review Mail Forwarding Rules** - Check for unauthorized email forwarding
5. **Implement Zero Trust** - Assume breach, verify explicitly

---

## Sources

1. MITRE ATT&CK - APT29: https://attack.mitre.org/groups/G0016/
2. Wikipedia - Cozy Bear: https://en.wikipedia.org/wiki/Cozy_Bear
3. CISA Advisory AA24-057A
4. Microsoft Threat Intelligence - Midnight Blizzard
5. Help Net Security - APT29 German Political Parties (2024)

---

*Report generated by OSINT Copilot | Classification: UNCLASSIFIED*
*API Job ID: c845e746-4bc2-4373-9856-abc967bdce6b*
*Last updated: 2026-01-03*

