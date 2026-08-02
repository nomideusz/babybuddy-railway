# Deploy and Host Baby Buddy on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/new/template/babybuddy?utm_medium=integration&utm_source=button&utm_campaign=babybuddy)

[Baby Buddy](https://github.com/babybuddy/babybuddy) is a self-hosted baby tracker — log feedings, diaper changes, sleep, tummy time, pumping, growth, and temperature, and see it all on a timeline with charts. Caregivers share one account-protected instance, so parents, grandparents, and sitters stay in sync without handing data to an app company.

## About Hosting Baby Buddy

This template runs the linuxserver.io Baby Buddy image as a single Railway service. The SQLite database and settings persist on a volume at `/config`. CSRF origins are pre-wired to your Railway domain, so forms work out of the box.

## Common Use Cases

- New-parent logbook: feedings, sleep, and diapers tracked from any phone browser, shared between caregivers
- Data for the pediatrician: growth charts, feeding totals, and sleep patterns as real numbers
- Home Assistant integration — Baby Buddy has a first-party HA integration for dashboards and sensors

## Dependencies for Baby Buddy Hosting

- None — single service with SQLite

### Deployment Dependencies

- [Baby Buddy documentation](https://docs.baby-buddy.net/)
- [Home Assistant integration](https://www.home-assistant.io/integrations/babybuddy/)
- [linuxserver.io image docs](https://docs.linuxserver.io/images/docker-babybuddy/)

### Implementation Details

**First boot:** log in with username `admin` and password `admin` on your Railway domain — **change the password immediately** (top-right menu → Password).

Notes and limits:

- `PORT` and `CSRF_TRUSTED_ORIGINS` are pre-wired for Railway — leave them unchanged.
- Set `TZ` to your time zone so timeline entries land on the right day.
- SQLite on the volume comfortably handles family-scale usage; the linuxserver image also supports external Postgres via env vars if you ever need it.

## Why Deploy Baby Buddy on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Baby Buddy on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
