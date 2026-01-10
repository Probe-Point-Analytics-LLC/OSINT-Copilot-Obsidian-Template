---
investigation_query: "Crypto Mixers and their pricing"
job_id: "3680d969-28a3-49c5-a20d-d7b68b24f187"
generated: 2026-01-07T15:22:35.940Z
source: Dark Web Investigation
---

# Dark Web Investigation: Crypto Mixers and their pricing

## Summary

Input Query: Crypto Mixers and their pricing

Source Links Referenced for Analysis
- http://63tcvr7j5gju24emo3ygbxmezqmg7z2zyby27n647jmu4uzcosiduzid.onion (Thormixer)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=7hte4 (Anonymixer listing)
- http://coinremigysnuarj3vpw6m67chalz7lzg7gu4pll3qodtywp3yu7ruqd.onion (Coinremitter)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=b2f2c (Feather wallet listing)
- http://bank555tzsbpncq5mcir4nbss3fb2p6tszxkjruhimzkh5zkoumo4eqd.onion (Trusted cryptocurrency escrow service)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=6d3a1 (BitcoinMixer.eu)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=b37ba (CryptoMix listing)
- http://wiki2zkamfya6mnyvk4aom4yjyi2kwsz7et3e4wnikcrypqv63rsskid.onion (Hidden Wiki)
- http://torlib7fmhyvfv2k7s77xigdds3rosio6k6bxnn256xmtzlbgyizduqd.onion (TORLib)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=41a9e (EscrowLab)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/search?query=trocador (Trocador listings)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=28cbd (Escrow Inc. — escrwinc@pm.me)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=5c123 (Ahmia)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=09g99 (CoinSafe Escrow)
- http://deepma62yqdoqb5ywsvn25xjivdpqm5mdt26i37g7owfhzuuvqeghfyd.onion/ (Deep Market marketplace)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=ff6fb (DarkSearch)
- http://exchangehd5455aori4qvrwhyno4ul7xrz4foy6qwga3olnbclp5f4qd.onion/?27e4f6c5e3 (The Exchange)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=911b9 (NotEvil)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=ft2l9 (Dread)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=bef2e (Hidden Hive)
- http://amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion/t?ad=directory&k=28cbd (Escrow Inc. duplicate)

Investigation Artifacts (extracted from the raw text)
- Services / Mixer Names
  - Thormixer (onion: 63tcvr7j5gju24emo3ygbxmezqmg7z2zyby27n647jmu4uzcosiduzid.onion)
  - Anonymixer (Amnesia listing)
  - BitcoinMixer.eu (Amnesia listing)
  - CryptoMix (Amnesia listing)
  - Trocador (several onion endpoints listed for swap/aggregator)
- Markets / Directories / Indexes
  - Hidden Wiki (wiki2zkamfya6mnyvk4aom4yjyi2kwsz7et3e4wnikcrypqv63rsskid.onion)
  - Amnesia (amnesia7u5…onion) — Tor directory/search aggregator present in listings
  - DarkSearch, TORLib, NotEvil, Dread, Hidden Hive — indexes + forums used to find services
  - Deep Market (deepma62y…onion) — marketplace with escrow and product categories (hacking, carding, etc.)
  - The Exchange (exchangehd54…onion)
- Escrow / Payment Services & Contacts
  - Escrow Inc. — contact email: escrwinc@pm.me (pm.me = ProtonMail shortcut)
  - CoinSafe Escrow (Amnesia listing)
  - Bank555 (bank555tzsb…onion) — claimed "Trusted cryptocurrency escrow service"
  - EscrowLab (Amnesia listing)
- Wallets & Payment Gateways
  - Feather (Monero desktop wallet) — source: github.com/feather-wallet/feather (mentioned on Amnesia)
  - Coinremitter (coinremigysnuarj3…onion) — crypto payment gateway listing
- Claimed Mixer Parameters (Thormixer page)
  - Mixer fee: 4% to 5% (multiple mentions)
  - Mixing time: 0 - 6 hours (claimed)
  - Deposit ranges shown: 0.003 - 50 BTC (another variant shows 0.005 - 50 BTC)
  - Modes: "Complete Anonymity" and "Complete Anonymity + Precise Payment"
  - Features: "NO LOGS", Telegram Bot, Tor mirrors
- Other artifacts / signals
  - BitcoinMixer.eu support email: support@bitcoinmixer.eu (from listing text)
  - BitcoinMixer.eu GPG public key mentioned ("Download our GPG public key")
  - References to multilingual support (EN, Русский, etc.) indicating multi-regional targeting
  - Several onion mirrors and directory references (common operational security for hidden services)
  - Marketplace categories (carding, money transfers, hacking) — potential buyer demand for mixing proceeds

Key Insights (3–5, evidence-based and actionable)

1) Multiple custodial mixers advertise similar fee structures and operational parameters — likely centralized pooling
- Evidence: Thormixer explicitly lists fees of 4–5%, mixing times 0–6 hours, and deposit minimums 0.003–0.005 BTC up to 50 BTC. BitcoinMixer.eu and other listings make similar claims (instant mixing, large liquidity claims).
- Interpretation: These services appear to be custodial (you deposit BTC to their pool and they return "clean" BTC), not pure CoinJoin-style decentralized protocols. Short mixing windows and fixed percentage fees are consistent with custodial tumblers/refund pools.
- Actionable: Custodial mixers concentrate funds and create a smaller set of destination clusters to monitor. If you can identify deposit addresses, you can follow outflows from the service pool to downstream clusters (exchanges, marketplaces). Prioritize collection of observable deposit addresses and timing metadata.

2) Mixer operational footprint links to typical underground commerce ecosystem — high risk for illicit funds including ransomware and marketplace proceeds
- Evidence: Mixer listings are present on Hidden Wiki, Amnesia, DarkSearch, and are cross-linked with marketplaces (Deep Market) and escrow services. Marketplace categories identified (carding, hacking, money transfers) are typical sources of illicit proceeds seeking mixing.
- Interpretation: Mixers advertised here are integrated into the darkweb money-laundering ecosystem; funds from marketplaces or extortion often route to mixers. Monitoring these mixer's outputs can reveal relationships between criminal storefronts and cash-out points (exchanges, OTC, P2P sellers).
- Actionable: Map transactions from suspected marketplace wallets through these mixers to identify cashout addresses and potential exchanges/OTC services receiving funds.

3) Operational security indicators available in service pages can be exploited for attribution and measurement
- Evidence: Thormixer advertises Telegram Bot, Tor mirrors, and "NO LOGS"; BitcoinMixer.eu advertises a GPG public key and support@ email; Escrow Inc. uses ProtonMail email (escrwinc@pm.me).
- Interpretation: The presence of GPG keys, Telegram bot endpoints, and contact emails gives investigators additional metadata (PGP fingerprints, Telegram usernames, email headers if messages captured) to correlate accounts across services. ProtonMail short-addresses (pm.me) are often reused, and PGP keys can be compared across platforms for reuse.
- Actionable: Collect GPG public keys and any Telegram handles or bot endpoints, then search for reuse of these artifacts in other onion pages and surface web mirrors. PGP fingerprints are high-confidence linkage artifacts.

4) Fee levels and deposit minimums provide a practical way to triage transactions of interest
- Evidence: Thormixer lists a minimum deposit ~0.003–0.005 BTC and fees 4–5%. Some mixers also advertise "Complete Anonymity + Precise Payment" which often means smaller change outputs or predetermined splitting behavior.
- Interpretation: If you observe inbound transactions to suspected mixer cluster that match these amounts and time windows, you can increase confidence that funds went into a particular mixer. For example, multiple deposits just above 0.003 BTC followed by outputs within 0–6 hours could indicate Thormixer use.
- Actionable: Construct detection rules in blockchain analytic tools to flag deposits matching these thresholds and temporal patterns for prioritized review.

5) Directory and indexing pages (Amnesia, Hidden Wiki, DarkSearch) are fertile sources of operational metadata but also present deception risk
- Evidence: Multiple mixers and escrow services are listed across Amnesia and Hidden Wiki; the Amnesia listing notes "Tor mirror" and alternate onion addresses; Ahmia warning about fake clones noted in Amnesia texts.
- Interpretation: Operators often spin up mirror sites and clones to evade takedown and to phish users. Directory entries can be outdated or intentionally spoofed. Relying on directories without verifying site PGP/PGP can result in false attributions.
- Actionable: Always validate service identity via GPG signatures, PGP/PGP keys on page, or PGP-signed canary / PGP key fingerprint comparisons across mirrors before treating a service's addresses as authoritative.

Suggested Next Steps — investigative actions and search queries

Operational collection and triage
- Crawl and archive (WARC) the referenced onion pages to capture full HTML and any visible wallet deposit addresses, PGP keys, Telegram bot handles, or JavaScript endpoints. Preserve timestamps and Tor circuit metadata where possible.
- Extract and normalize any Bitcoin addresses visible on pages or in forms. If pages do not display addresses until dynamic actions, emulate interaction in a controlled Tor environment (sandbox) to capture deposit addresses.
- Configure blockchain analytics rules to flag:
  - Incoming transactions matching deposits >=0.003 BTC and <=50 BTC that move within 0–6 hours to new addresses.
  - Clusters that receive multiple inbound deposits matching the 4–5% fee pattern (i.e., observed difference between inbound and outbound circa fee).
- Query list (Dark web)
  - "Thormixer" onion address + PGP key
  - "Thormixer" Telegram bot name
  - "Anonymixer" onion + "fee" + "mixing time"
  - "BitcoinMixer.eu" support@bitcoinmixer.eu + PGP fingerprint
  - "CryptoMix" mixer listing + fee
  - Search on Amnesia/Hidden Wiki/DarkSearch for same mixer names to find mirrors
- Query list (Surface web / OSINT)
  - "Thormixer" (in quotes) — check for any mirrors, paste sites, or law-enforcement reports
  - "support@bitcoinmixer.eu" + "PGP" / "key" — look for posted fingerprints on clearnet
  - "escrwinc@pm.me" — search paste sites, public leaks for reuse of ProtonMail address
  - Check public blockchain explorers (e.g., mempool.space, blockchair) for clusters declared in known darkweb monitoring reports
  - Search Paste sites and Telegram channels for mentions of these mixers and price complaints/withdrawal delays (may indicate exit scam)

Forensic / Legal follow-up
- If you have specific suspect BTC addresses, produce transaction graphs and request exchange/transmission logs via legal process for any downstream exchange deposit addresses identified.
- Preserve metadata and documentation for chain-of-custody: archived onion pages, screenshots, and raw HTML with timestamps.
- If deposits are linked to criminal events (ransomware, theft), coordinate with relevant LE for subpoenas to exchanges receiving outputs.

Technical detection suggestions
- Implement heuristics to detect custodial mixer behavior:
  - Many-to-few clustering with rapid consolidation.
  - Nearly identical outflow amounts minus a nearly-fixed percentage fee.
  - Short time lag between inbound deposits and outgoing distribution (0–6 hours).
- Combine on-chain heuristics with off-chain metadata (PGP keys, Telegram handles, onion mirrors) to create high-confidence indicators.

Additional investigative queries to run
- "site:amnesia7u5odx5xbwtpnqk3edybgud5bmiagu75bnqx2crntw5kry7ad.onion Thormixer"
- "Thormixer fee 4% 5% 'Complete Anonymity' 'Telegram' "
- "support@bitcoinmixer.eu 'GPG' OR 'PGP' key"
- "escrwinc@pm.me 'Escrow Inc.'"
- "trocador onion swap 'Trocador' 'swap coins privately'"
- Search across darkweb indexes for reuse of same PGP key, ProtonMail address, or Telegram account names to cluster operator infrastructure.

Notes on limitations and risk
- Many hidden services change onion addresses frequently; mirror pages and directory entries may be outdated or maliciously cloned. PGP fingerprints and signed statements are higher-confidence artifacts.
- Dynamic content (JS forms that generate deposit addresses only after initiating a mix) may hide deposit addresses from static scraping; perform interactive collection carefully in an isolated environment.
- This assessment is based on the provided raw text from onion listings and common blockchain-mixing behaviors. Confirm any transactional linkages with blockchain analysis on concrete addresses.

If you want, I can:
- Parse and archive these onion pages and extract any Bitcoin addresses or PGP keys visible (requires safe Tor-sandboxed environment).
- Produce example blockchain queries and graphing steps (for e.g., in Blockchair/Blockstream API or a Chainalysis-style approach) to trace likely flows through suspected mixer clusters.
- Create YARA-like detection rules / regex patterns to detect deposit patterns matching Thormixer-style minimums/fees when scanning transaction feeds.

