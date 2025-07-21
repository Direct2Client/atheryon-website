# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static HTML website for Atheryon, a data intelligence and transformation company. The site is deployed using Azure Static Web Apps and consists of multiple pages showcasing services, company information, and contact details.

## Architecture

- **Static HTML Site**: Pure HTML/CSS/JavaScript with no build process required
- **Multi-page Structure**: Separate HTML files for each section (index, about, services, partners, symbol, contact)
- **Responsive Design**: Uses CSS Grid/Flexbox with mobile-first approach
- **Azure Static Web Apps**: Deployed automatically via GitHub Actions on push to main

## File Structure

- `index.html` - Homepage with hero section and value propositions
- `about.html`, `services.html`, `partners.html`, `symbol.html`, `contact.html` - Individual pages
- `styles.css` - Global stylesheet with dark theme (#0A0F1E background, #FFFFFF text)
- `script.js` - JavaScript functionality (currently minimal)
- `staticwebapp.config.json` - Azure SWA routing configuration with SPA fallback
- `swa-cli.config.json` - Local development configuration for Azure SWA CLI

## Development Commands

Since this is a static site with no build process:

**Local Development:**
```bash
# Serve locally using Azure Static Web Apps CLI
swa start . --port 4280

# Or use any simple HTTP server
python3 -m http.server 8000
```

**Testing:**
- Manual testing via browser
- No automated test suite configured

## Deployment

- **Automatic**: Push to `main` branch triggers Azure Static Web Apps deployment
- **Manual**: Use `swa deploy` command with proper configuration
- **Configuration**: Skip build process (static files served directly)

## Design System

- **Colors**: Dark theme with blue-orange gradient (#00AEEF to #FFA500)
- **Fonts**: Montserrat (headings), Roboto (body text)
- **Logo**: `atheryon-logo-dark.png` used in header and hero background

## Content Management

- Contact information points to direct2client.com.au (parent company)
- Company details: Direct2Client Pty Ltd ABN 66 615 197 607, 5 Martin Place Sydney
- All content is hard-coded in HTML files - no CMS or dynamic content