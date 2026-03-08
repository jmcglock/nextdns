#!/bin/bash

API_KEY=""
PROFILE_ID=""
ENDPOINT="https://api.nextdns.io/profiles/${PROFILE_ID}/allowlist"

domains=(
    "akamai.net"
    "amp-api-edge.apps.apple.com"
    "amp-api-search-edge.apps.apple.com"
    "apple.com"
    "braze.com"
    "cloudflare.com"
    "dcf.espn.com"
    "discordapp.com"
    "espn.com"
    "espncdn.com"
    "fonts.gstatic.com"
    "gamepass.com"
    "ghcr.io"
    "github.com"
    "github.io"
    "gitlab.com"
    "go.com"
    "googleapis.com"
    "graph.facebook.com"
    "graph.instagram.com"
    "i.instagram.com"
    "intuit.com"
    "megaphone.fm"
    "microsoft.com"
    "nbcsports.com"
    "nerdfonts.com"
    "nextdns.io"
    "pinimg.com"
    "rancher.io"
    "s.youtube.com"
    "scdn.co"
    "simplelogin.io"
    "smoot.apple.com"
    "soundcloud.com"
    "spotify.com"
    "tesla.com"
    "tesla.services"
    "tessie.com"
    "tidal.com"
    "typekit.net"
    "ubuntu.com"
    "ui.com"
    "visualstudio.com"
    "windows.com"
    "windowsupdate.com"
    "xboxlive.com"
)

echo "Starting to add ${#domains[@]} domains..."

for domain in "${domains[@]}"; do
    echo "Adding $domain..."
    curl -s --location "$ENDPOINT" \
        --header 'Content-Type: application/json' \
        --header "X-Api-Key: $API_KEY" \
        --data "{\"id\": \"$domain\", \"active\": true}"
    echo
    sleep 0.5
done

echo "Done!"