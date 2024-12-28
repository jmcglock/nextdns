#!/bin/bash

API_KEY="YOUR_API_KEY_HERE"
PROFILE_ID="YOUR_PROFILE_ID_HERE"
ENDPOINT="https://api.nextdns.io/profiles/${PROFILE_ID}/allowlist"

domains=(
    "apple.com"
    "amp-api-edge.apps.apple.com"
    "amp-api-search-edge.apps.apple.com"
    "smoot.apple.com"
    "microsoft.com"
    "visualstudio.com"
    "windows.com"
    "windowsupdate.com"
    "xboxlive.com"
    "ghcr.io"
    "github.com"
    "github.io"
    "gitlab.com"
    "googleapis.com"
    "discordapp.com"
    "graph.facebook.com"
    "graph.instagram.com"
    "i.instagram.com"
    "pinimg.com"
    "soundcloud.com"
    "spotify.com"
    "scdn.co"
    "s.youtube.com"
    "ads-fa-darwin.hulustream.com"
    "hulu.hb-api.omtrdc.net"
    "megaphone.fm"
    "nbcsports.com"
    "peacocktv.com"
    "dcf.espn.com"
    "espncdn.com"
    "gamepass.com"
    "demdex.net"
    "fonts.gstatic.com"
    "intuit.com"
    "nerdfonts.com"
    "nextdns.io"
    "omtrdc.net"
    "rancher.io"
    "simplelogin.io"
    "typekit.net"
    "ubuntu.com"
    "ui.com"
    "urbanairship.com"
    "tesla.com"
    "tesla.services"
    "tessie.com"
    "akamai.net"
    "cloudflare.com"
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