# XA: Aviation Maintenance Analytics ✈️
A Dockerized Business Intelligence (BI) stack for tracking Astra aircraft maintenance.

## 🚀 Overview
Converted a standalone analytics tool into a scalable, containerized environment. This project tracks over 1,000 maintenance logs across 96 data columns to provide real-time aircraft health insights, specifically optimized for mobile access in the hangar.

## 📱 Remote Access
This dashboard is deployed via **Docker** and secured using **Tailscale Networking**. It is accessible from any authorized device (iPhone, iPad, or remote laptop) on the private tailnet without exposing ports to the public internet.

* **Internal URL:** `http://xa:3000`
* **Network Provider:** Tailscale (MagicDNS enabled)
* **Encryption:** WireGuard (End-to-End)

## 🛠 Technical Stack
* **Containerization:** Docker & Docker Compose for rapid deployment.
* **BI Tool:** Metabase for interactive SQL-based dashboarding.
* **Networking:** Tailscale Mesh VPN for secure, remote mobile access.
* **Database:** Relational SQL schema tracking ATA Chapters (05, 12, 24, 32, 34, 72, 73).
* **Hardware:** Optimized for high-speed I/O on NVMe storage (Samsung 990 PRO).

---

## 📋 Getting Started (From Scratch)

### 1. Prerequisites
* Ubuntu server with Docker and Docker Compose installed.
* A Tailscale account with MagicDNS enabled.

### 2. File Structure
```text
aviation_analytics/
├── docker-compose.yml
├── metabase.db/        # Your H2 or Postgres database files
└── README.md
