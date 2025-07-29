#!/bin/bash

# Network Diagnostics Script for Atheryon Website
# This script helps trace network issues and gather IP information

SITE_URL="https://thankful-meadow-06676a21e.1.azurestaticapps.net"
DOMAIN="thankful-meadow-06676a21e.1.azurestaticapps.net"

echo "🌐 Atheryon Website Network Diagnostics"
echo "========================================"
echo ""

echo "📍 Basic Site Information:"
echo "  URL: $SITE_URL"
echo "  Domain: $DOMAIN"
echo "  Service: Azure Static Web Apps"
echo "  Region: Australia East"
echo ""

echo "🔍 DNS Resolution:"
nslookup $DOMAIN
echo ""

echo "📡 IP Address Information:"
dig +short $DOMAIN
echo ""

echo "🛣️  Network Route Tracing:"
traceroute $DOMAIN 2>/dev/null || echo "Traceroute not available. Try: tracert $DOMAIN on Windows"
echo ""

echo "🏥 Health Check:"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" $SITE_URL)
RESPONSE_TIME=$(curl -s -o /dev/null -w "%{time_total}" $SITE_URL)
echo "  HTTP Status: $HTTP_CODE"
echo "  Response Time: ${RESPONSE_TIME}s"
echo ""

echo "🔐 SSL Certificate Info:"
echo | openssl s_client -servername $DOMAIN -connect $DOMAIN:443 2>/dev/null | openssl x509 -noout -dates -issuer -subject
echo ""

echo "📊 Performance Test:"
curl -w "  DNS Lookup: %{time_namelookup}s\n  Connect: %{time_connect}s\n  SSL Handshake: %{time_appconnect}s\n  Transfer: %{time_starttransfer}s\n  Total: %{time_total}s\n" -o /dev/null -s $SITE_URL
echo ""

echo "💡 Troubleshooting Tips:"
echo "  1. If DNS fails: Check internet connection and DNS settings"
echo "  2. If SSL errors: Verify certificate validity and system time"
echo "  3. If slow response: Check network latency to Australia East region"
echo "  4. For deployment issues: Check GitHub Actions workflow logs"
echo ""

echo "📋 Additional Commands:"
echo "  curl -I $SITE_URL"
echo "  wget --spider $SITE_URL"
echo "  ping $DOMAIN"
echo ""

echo "🆘 Support Resources:"
echo "  Azure Status: https://status.azure.com/"
echo "  GitHub Status: https://www.githubstatus.com/"
echo "  Azure Portal: https://portal.azure.com/"