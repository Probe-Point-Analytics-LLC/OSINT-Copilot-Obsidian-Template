---
report_description: "APT29 (Cozy Bear) - Russian SVR Threat Actor Profile"
generated: 2026-01-03T14:30:00.000Z
source: OSINT Copilot Report Generation
report_type: Threat Actor Profile
classification: UNCLASSIFIED
tags: [apt29, russia, svr, cozy-bear, solarwinds, espionage]
---

# APT29 (Cozy Bear) - Threat Actor Profile

<!-- SCREENSHOT NEEDED:
Description: Graph view showing APT29 entity and all related entities (SVR, operators, infrastructure, campaigns)
Filename: apt29-entity-graph.png
Location: screenshots/
Instructions: 1. Open Graph View, 2. Search for APT29, 3. Expand to show all connected entities, 4. Zoom to fit all nodes, 5. Capture screenshot
-->

## Executive Summary

**APT29**, also known as **Cozy Bear**, **The Dukes**, **NOBELIUM**, **Midnight Blizzard**, and **UNC2452**, is a sophisticated cyber espionage group attributed to **Russia's Foreign Intelligence Service (SVR)**. Active since at least 2008, APT29 is one of the most capable and persistent nation-state threat actors, known for targeting government networks, diplomatic entities, think tanks, and critical infrastructure across NATO member countries.

The group gained international notoriety for the **2016 Democratic National Committee (DNC) breach** and the **2020 SolarWinds supply chain compromise**, which affected over 18,000 organizations including multiple U.S. government agencies.

| Attribute | Details |
|-----------|---------|
| **Primary Name** | APT29 |
| **Aliases** | Cozy Bear, The Dukes, NOBELIUM, Midnight Blizzard, UNC2452, Dark Halo, IRON RITUAL, Blue Kitsune |
| **Attribution** | Russian Foreign Intelligence Service (SVR) |
| **Active Since** | 2008 |
| **Primary Motivation** | Espionage, Intelligence Collection |
| **Target Sectors** | Government, Defense, Think Tanks, Healthcare, Technology |
| **Target Regions** | NATO countries, United States, European Union |

## Related Entities

- [[APT29]] - Primary threat actor entity
- [[SVR]] - Russian Foreign Intelligence Service (parent organization)
- [[SolarWinds Compromise]] - Major supply chain attack (2020)
- [[Moscow]] - Primary operating location
- [[Democratic National Committee Breach]] - 2016 election interference

## Tactics, Techniques, and Procedures (TTPs)

### MITRE ATT&CK Mapping

APT29 employs a sophisticated arsenal of techniques across the attack lifecycle:

#### Initial Access
- **T1566.001** - Spearphishing Attachment
- **T1566.002** - Spearphishing Link
- **T1195.002** - Supply Chain Compromise (Software)
- **T1078** - Valid Accounts (cloud and domain)
- **T1190** - Exploit Public-Facing Application

#### Execution
- **T1059.001** - PowerShell
- **T1059.003** - Windows Command Shell
- **T1059.005** - Visual Basic
- **T1047** - Windows Management Instrumentation

#### Persistence
- **T1547.001** - Registry Run Keys
- **T1546.003** - WMI Event Subscription
- **T1098** - Account Manipulation
- **T1136** - Create Account

#### Defense Evasion
- **T1027** - Obfuscated Files or Information
- **T1070** - Indicator Removal
- **T1036** - Masquerading
- **T1553.002** - Code Signing

#### Credential Access
- **T1003** - OS Credential Dumping
- **T1558.003** - Kerberoasting
- **T1606.002** - SAML Token Forging (Golden SAML)

#### Command and Control
- **T1071.001** - Web Protocols (HTTPS)
- **T1090** - Proxy
- **T1102** - Web Service (Twitter, Dropbox)
- **T1573** - Encrypted Channel

## Known Malware and Tools

| Tool Name | Type | Description |
|-----------|------|-------------|
| **SUNBURST** | Backdoor | Trojanized SolarWinds Orion update |
| **TEARDROP** | Loader | Memory-only dropper for Cobalt Strike |
| **SUNSPOT** | Implant | Build process implant for SUNBURST |
| **WellMess** | RAT | Cross-platform malware (Go/C#) |
| **WellMail** | RAT | Lightweight companion to WellMess |
| **HAMMERTOSS** | Backdoor | Uses Twitter for C2 |
| **SeaDuke** | Trojan | Python-based backdoor |
| **CozyDuke** | Trojan | Primary implant family |
| **MagicWeb** | Backdoor | AD FS authentication bypass |
| **FoggyWeb** | Backdoor | AD FS credential theft |
| **WINELOADER** | Loader | Recent 2024 campaign tool |

## Major Campaigns

### SolarWinds Compromise (2020-2021)

**Timeline**: August 2019 - January 2021

The most significant supply chain attack in history, APT29 compromised SolarWinds' Orion software build process, inserting the SUNBURST backdoor into legitimate updates distributed to approximately 18,000 customers.

**Key Victims**:
- U.S. Department of Treasury
- U.S. Department of Commerce
- U.S. Department of Homeland Security
- Microsoft Corporation
- FireEye (now Mandiant)

**Techniques Used**:
- Supply chain compromise via trojanized software update
- SAML token forging for persistent access
- Living-off-the-land techniques
- Extensive use of legitimate cloud services


## Indicators of Compromise (IOCs)

### Network Indicators

| Type | Indicator | Context |
|------|-----------|---------|
| Domain | `avsvmcloud[.]com` | SUNBURST C2 domain |
| Domain | `freescanonline[.]com` | SUNBURST C2 domain |
| Domain | `deftsecurity[.]com` | SUNBURST C2 domain |
| Domain | `thedoccloud[.]com` | SUNBURST C2 domain |
| Domain | `websitetheme[.]com` | NOBELIUM phishing infrastructure |
| IP | `13.59.205.66` | Associated C2 infrastructure |
| IP | `54.193.127.66` | Associated C2 infrastructure |

### File Indicators

| Hash (SHA256) | Filename | Malware |
|---------------|----------|---------|
| `32519b85c0b422e4656de6e6c41878e95fd95026267daab4215ee59c107d6c77` | SolarWinds.Orion.Core.BusinessLayer.dll | SUNBURST |
| `d0d626deb3f9484e649294a8dfa814c5568f846d5aa02d4cdad5d041a29d5600` | gracious_truth.exe | TEARDROP |
| `b820e8a2057112d0ed73bd7995201dbed79a79e13c79d4bdad81a22f12387e07` | WINELOADER | WINELOADER |

## Infrastructure Patterns

APT29 demonstrates sophisticated operational security:

1. **Domain Fronting**: Uses legitimate cloud services to mask C2 traffic
2. **Residential Proxies**: Routes traffic through compromised residential IPs
3. **Legitimate Services**: Abuses Twitter, Dropbox, OneDrive for C2
4. **Short-lived Infrastructure**: Rapidly rotates domains and IPs
5. **Geographic Blending**: Uses infrastructure in target countries

## Detection Opportunities

<!-- SCREENSHOT NEEDED:
Description: Timeline view showing APT29 campaign events chronologically
Filename: apt29-timeline-view.png
Location: screenshots/
Instructions: 1. Open Timeline View, 2. Filter to show APT29-related events, 3. Adjust date range to show 2015-2024, 4. Capture screenshot
-->

### Network Detection
- Monitor for DNS queries to known APT29 domains
- Detect anomalous OAuth application registrations in Azure AD
- Alert on SAML token anomalies and Golden SAML indicators
- Monitor for unusual cloud API calls from service principals

### Endpoint Detection
- WMI event subscription persistence
- Unusual PowerShell execution patterns
- Registry modifications in Run keys
- Anomalous scheduled task creation

### Cloud Detection
- New application consent grants
- Mailbox delegation changes
- Service principal credential additions
- Unusual Azure AD sign-in patterns

## Recommendations

### Immediate Actions
1. **Audit OAuth Applications**: Review all registered applications in Azure AD
2. **Enable MFA**: Enforce multi-factor authentication for all accounts
3. **Monitor Service Principals**: Alert on credential additions to service principals
4. **Review Mail Forwarding Rules**: Check for unauthorized email forwarding

### Strategic Mitigations
1. Implement Zero Trust architecture
2. Deploy advanced email security solutions
3. Enable cloud audit logging and SIEM integration
4. Conduct regular purple team exercises simulating APT29 TTPs
5. Implement privileged access workstations (PAWs)

## Intelligence Gaps

- Current operational infrastructure (rapidly changing)
- Specific operator identities
- Full scope of 2024 campaign targeting
- Undisclosed zero-day vulnerabilities in arsenal

## References

1. MITRE ATT&CK - APT29: https://attack.mitre.org/groups/G0016/
2. CISA Advisory AA24-057A: SVR Cyber Actors Adapt Tactics for Initial Cloud Access
3. Microsoft Threat Intelligence: Midnight Blizzard Guidance
4. Mandiant: APT29 Merged into UNC2452
5. NCSC: Advisory on APT29 targeting COVID-19 vaccine development

---

*Report generated by OSINT Copilot | Classification: UNCLASSIFIED*
*Last updated: 2026-01-03*

