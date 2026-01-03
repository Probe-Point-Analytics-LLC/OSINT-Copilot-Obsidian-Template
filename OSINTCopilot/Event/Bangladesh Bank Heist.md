---
id: "evt-bangladesh-001"
type: Event
ftmSchema: Event
label: "Bangladesh Bank Heist"
name: "Bangladesh Bank Heist"
description: "The Lazarus Group hacked the Bangladesh Bank, stealing $81 million via SWIFT manipulation."
start_date: "2016-02-04"
end_date: "2016-02-05"
add_to_timeline: true
country: "Bangladesh"
source: "OSINT Copilot API - Entity Extraction"
created: "2026-01-03T23:15:00.000Z"
modified: "2026-01-03T23:15:00.000Z"
---

# Bangladesh Bank Heist

## Properties

- **Name**: Bangladesh Bank Heist
- **Type**: Financial Cyber Attack
- **Date**: February 4-5, 2016
- **Amount Stolen**: $81 million USD
- **Attempted Amount**: $951 million USD
- **Attribution**: Lazarus Group (APT38)
- **Target**: Bangladesh Bank (Central Bank)
- **Add to Timeline**: Yes

## Relationships

- [[Lazarus Group (APT38)]] - CONDUCTED_BY
- [[Bangladesh Bank]] - VICTIM
- [[Federal Reserve Bank of New York]] - EXPLOITED

## Notes

Conducted by the Lazarus Group in 2016. The attack exploited SWIFT banking network to transfer funds.

### Attack Details
- **Method**: SWIFT network manipulation
- **Entry Point**: Spear-phishing emails
- **Malware**: Custom SWIFT manipulation tools
- **Funds Destination**: Philippines, Sri Lanka

### Timeline
- **February 4, 2016**: Attack initiated during Bangladesh weekend
- **February 5, 2016**: 35 fraudulent transfer requests sent
- **5 transfers**: Successful ($101M, $20M recovered)
- **30 transfers**: Blocked due to spelling error

### Why Attack Partially Failed
- Spelling error: "fandation" instead of "foundation"
- Triggered Deutsche Bank review
- Most transfers blocked

### Related Reports
- [[Lazarus_Group_APT38_Cryptocurrency_Theft_Analysis]]

