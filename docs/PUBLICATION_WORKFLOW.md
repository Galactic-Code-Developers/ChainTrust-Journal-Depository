# ChainTrust Journal Publication Workflow

## Overview

ChainTrust Journal records are published through a dedicated GitHub repository and archived by Zenodo through the GitHub-Zenodo integration.

## Flow

```text
NovaNet Sentinel report
→ certified publication package
→ commit to ChainTrust-Journal-Depository
→ GitHub release
→ Zenodo archival / DOI
→ DOI recorded in metadata
```

## Required package files

1. PDF report
2. `.sha256` checksum file
3. `.meta.txt` metadata file
4. `KAS_audit.log` entry
5. signed ZIP package

## Release requirement

Zenodo archives GitHub content after a GitHub release is created for a repository enabled in Zenodo.

## DOI handling

After Zenodo archives the release, record the DOI and Zenodo URL in the relevant package metadata and NovaNet Sentinel publication record.
