# My NextDNS Configuration & Management

## Features

- **Domain Lists**: Pre-configured allowlist and blocklist for security and functionality
- **IP Updater**: Kubernetes CronJob for keeping NextDNS IP addresses current
- **API Scripts**: Bash scripts for managing domain lists programmatically
- **Infrastructure as Code**: Kubernetes manifests with security best practices

## Repository Structure

```bash
├── dns-allowlist.txt          # Trusted domains
├── dns-blocklist.txt          # Blocked domains  
├── nextdns-ip-updater.yaml   # Kubernetes CronJob
├── update-allowlist-script.sh # Allowlist API script
├── update-denylist-script.sh  # Blocklist API script
└── README.md
```

## Quick Start

### Domain Lists

1. **API Import**: Configure scripts with your API key and profile ID

### IP Updater

1. Update config ID in `nextdns-ip-updater.yaml`
2. Deploy: `kubectl apply -f nextdns-ip-updater.yaml`
3. Verify: `kubectl get cronjobs`

## Components

### Allowlist

Essential domains for services: CDNs, development platforms, cloud services, gaming, streaming

### Blocklist  

Tracking and advertising domains: ad networks, analytics, social media tracking, device telemetry

### Kubernetes CronJob

- Runs hourly for IP updates
- Minimal resources (8Mi memory, 5m CPU)
- Security: non-root, read-only, dropped capabilities

### API Scripts

- Rate-limited domain management
- Bulk operations support
- JSON API integration

## Contributing

1. Fork and create feature branch
2. Add domains with explanations
3. Test changes
4. Submit PR with detailed description
