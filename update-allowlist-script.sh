#!/bin/bash

# Your API key (replace with your actual API key)
API_KEY="<YOUR_API_KEY>"

# The API endpoint
ENDPOINT="https://api.nextdns.io/profiles/<your-profile-id>/allowlist"

# Array of domains to be added to the allowlist
declare -a DOMAIN_LIST=(
"amp-api-edge.apps.apple.com"
"amp-api-search-edge.apps.apple.com"
"smoot.apple.com"
"demdex.net"
"discordapp.com"
"espncdn.com"
"dcf.espn.com"
"gamepass.com"
"ghcr.io"
"github.com"
"github.io"
"gitlab.com"
"googleapis.com"
"fonts.gstatic.com"
"ads-fa-darwin.hulustream.com"
"graph.facebook.com"
"graph.instagram.com"
"i.instagram.com"
"intuit.com"
"megaphone.fm"
"microsoft.com"
"nbcsports.com"
"nerdfonts.com"
"nextdns.io"
"omtrdc.net"
"hulu.hb-api.omtrdc.net"
"peacocktv.com"
"pinimg.com"
"rancher.io"
"scdn.co"
"simplelogin.io"
"soundcloud.com"
"spotify.com"
"typekit.net"
"ubuntu.com"
"ui.com"
"urbanairship.com"
"visualstudio.com"
"windows.com"
"windowsupdate.com"
"xboxlive.com"
"s.youtube.com"
)

# Loop through the domain list and make a curl request for each
for domain in "${DOMAIN_LIST[@]}"; do
  curl --location "$ENDPOINT" \
    --header 'Content-Type: application/json' \
    --header "X-Api-Key: $API_KEY" \
    --data "{
        \"id\": \"$domain\",
        \"active\": true
    }"
    
    # Optional: sleep between requests to avoid rate-limiting issues
    # sleep 1
done