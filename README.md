# XA: Aviation Maintenance Analytics ✈️
A Dockerized Business Intelligence (BI) stack for tracking N528RR aircraft maintenance.

## 🚀 Overview
Converted a standalone Java-based analytics tool into a scalable, containerized environment. This project tracks over 1,000 maintenance logs to provide real-time aircraft health insights.

## 🛠 Tech Stack
- **Engine:** Docker & Docker Compose
- **Analytics:** Metabase
- **Database:** PostgreSQL
- **Infrastructure:** Ubuntu Server (Dell Latitude 5490 / i7-8650U / Samsung 990 PRO)

## 📊 Key Metrics Tracked
- **100-Hour Inspection Countdown**: Real-time gauge for mandatory FAA inspections.
- **Task Frequency**: Identification of recurring mechanical issues.

## 📊 Analytics Preview

### Maintenance Due List
![Maintenance Due List](dasboard_preview.png)

### Maintenance Item Master Data
![Astra Maintenance Items](AMI.png)


ATA Code,System Name,Description
05,Time Limits/Maintenance Checks,"Mandatory inspections (A-Checks, 48-Month, etc.)"
12,Servicing,Routine tasks like lubrication and fluid checks
21,Air Conditioning,Pressurization and climate control systems
24,Electrical Power,"Battery, AC/DC generation, and distribution"
32,Landing Gear,"Wheels, brakes, and extension/retraction logic"
34,Navigation,Pitot-static systems and flight instruments
72,Engine,Specific maintenance for the power plant units
