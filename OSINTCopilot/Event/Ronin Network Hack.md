---
id: "evt-ronin-001"
type: Event
ftmSchema: Event
label: "Ronin Network Hack"
name: "Ronin Network Hack"
description: "The Lazarus Group hacked the Ronin Network bridge, stealing $620 million in cryptocurrency."
start_date: "2022-03-23"
end_date: "2022-03-29"
add_to_timeline: true
country: "Vietnam"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# Ronin Network Hack

## Properties

- **Name**: Ronin Network Hack
- **Type**: Cryptocurrency Bridge Exploit
- **Date**: March 23, 2022
- **Discovery Date**: March 29, 2022
- **Amount Stolen**: $620 million USD
- **Attribution**: Lazarus Group (APT38)
- **Target**: Ronin Network (Axie Infinity)
- **Add to Timeline**: Yes

## Relationships

- [[Lazarus Group (APT38)]] - CONDUCTED_BY
- [[Ronin Network]] - VICTIM
- [[Sky Mavis]] - VICTIM (Parent Company)
- [[0x098B716B8Aaf21512996dC57EB0615e2383E2f96]] - ATTACKER_WALLET

## Notes

Conducted by the Lazarus Group in 2022. The attack exploited compromised private keys to drain the Ronin bridge.

### Attack Details
- **Method**: Private key compromise via social engineering
- **Validators Compromised**: 5 of 9 required
- **Assets Stolen**: 173,600 ETH + 25.5M USDC

### Sanctioned Wallet
- Address: `0x098B716B8Aaf21512996dC57EB0615e2383E2f96`
- Designated by OFAC on April 14, 2022

### Timeline
- **March 23, 2022**: Attack executed
- **March 29, 2022**: Breach discovered
- **April 14, 2022**: FBI attributes to Lazarus Group
- **April 14, 2022**: OFAC sanctions attacker wallet

### Related Reports
- [[Lazarus_Group_APT38_Cryptocurrency_Theft_Analysis]]

