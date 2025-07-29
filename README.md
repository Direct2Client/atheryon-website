# Atheryon Website

A static HTML website for Atheryon, a data intelligence and transformation company. The site is deployed using Azure Static Web Apps with automated CI/CD via GitHub Actions.

## Architecture

![Architecture Diagram](architecture-diagram.svg)

For detailed architecture documentation, see [ARCHITECTURE.md](ARCHITECTURE.md).

## Quick Start

```bash
# Local development using Azure SWA CLI
swa start . --port 4280

# Or using Python HTTP server
python3 -m http.server 8000
```

## Troubleshooting & Network Information

For IP addresses, diagnostic commands, and troubleshooting information, see the [Network Information & Troubleshooting](ARCHITECTURE.md#network-information--troubleshooting) section in the architecture documentation.

**Quick diagnostic commands:**
```bash
# Check site health
curl -I https://thankful-meadow-06676a21e.1.azurestaticapps.net/

# DNS resolution
nslookup thankful-meadow-06676a21e.1.azurestaticapps.net
```

## Deployment

The site automatically deploys to Azure Static Web Apps when changes are pushed to the `main` branch via GitHub Actions CI/CD pipeline.