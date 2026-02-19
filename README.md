# XA: Aviation Maintenance Analytics ✈️
A Dockerized Business Intelligence (BI) stack for tracking N528RR aircraft maintenance.

## 🚀 Remote Access

This dashboard is deployed via **Docker** and secured using **Tailscale Networking**. It can be accessed from any authorized device (iPhone, iPad, or remote laptop) on the private tailnet.

* **Internal URL:** `http://xa:3000`
* **Network Provider:** Tailscale (MagicDNS enabled)
* **Encryption:** WireGuard (End-to-End)

## 🚀 Overview
Converted a standalone Java-based analytics tool into a scalable, containerized environment. This project tracks over 1,000 maintenance logs to provide real-time aircraft health insights.

## 🛠 Technical Stack
* **Containerization:** Docker & Docker Compose for rapid deployment.
* **BI Tool:** Metabase for interactive dashboarding.
* **Networking:** Tailscale Mesh VPN with MagicDNS for secure, remote mobile access.
* **Data Structure:** Relational SQL schema tracking ATA Chapters (05, 12, 24, 32, 34).

## 📊 Key Metrics Tracked
- **100-Hour Inspection Countdown**: Real-time gauge for mandatory FAA inspections.
- **Task Frequency**: Identification of recurring mechanical issues.

## 📊 Analytics Preview

This project transforms raw aviation data into actionable maintenance intelligence. Below are the key components of the system, from server initialization to the final command center.

| Initialization | SQL Alert Logic | Live Command Center |
| :--- | :--- | :--- |
| ![Metabase Boot](image_8b041e.png) | ![SQL Query](image_8b1dc9.png) | ![Live Dashboard](astra_dashboard.png) |

---

### 🖥️ Maintenance Command Center
The primary dashboard provides real-time tracking of airframe hours (4,211.1 Hobbs), fuel consumption, and high-priority maintenance alerts for ATA 72/73 components.
![Astra Maintenance Dashboard](astra_dashboard.png)

### 📋 Maintenance Due List
A comprehensive overview of upcoming service requirements, inspections, and component life limits.
![Maintenance Due List](dasboard_preview.png)

### 🗄️ Maintenance Item Master Data
Detailed view of the 90+ data points tracked for every serialized component on the aircraft, ensuring full regulatory compliance.
![Astra Maintenance Items](AMI.png)

