# ChainTrust Publication Package Checklist

Use this checklist before creating a GitHub release for Zenodo archival.

## Required files

- [ ] PDF report
- [ ] SHA-256 checksum file
- [ ] metadata `.meta.txt` file
- [ ] KAS audit log entry
- [ ] signed ZIP package

## Required metadata

- [ ] Publication title
- [ ] Publication abstract
- [ ] Publication category
- [ ] Authors
- [ ] License
- [ ] Report ID
- [ ] Service type
- [ ] SHA-256 hash
- [ ] Signer ID
- [ ] Generated timestamp
- [ ] Contract name, if applicable
- [ ] Chain name and chain ID, if applicable
- [ ] Contract address, if applicable

## Required validation

- [ ] Report is paid/unlocked if generated from NovaNet Sentinel
- [ ] PDF hash matches `.sha256`
- [ ] ZIP contains PDF, checksum, metadata, and audit log
- [ ] No private keys, Stripe secrets, GitHub tokens, or hidden credentials are included
- [ ] Legal disclaimer is present
- [ ] Publication site is listed as Kapodistrian.edu.gr
- [ ] GitHub release body includes SHA-256 hash
