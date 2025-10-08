# 🛡️ Smart Surveillance System Using FPGA

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)  

---

## 📌 Project Overview

This project implements a **high-performance, real-time Smart Security Surveillance System** using FPGA technology.  
It integrates a **Spartan-6 FPGA** with a **PIR motion sensor** and an **ESP32-CAM module** to enable efficient motion detection and live video streaming.  

The system leverages **VHDL** for hardware design to achieve low latency, enhanced power efficiency, and robust real-time processing — making it ideal for embedded surveillance applications such as smart homes, industrial safety, and agricultural monitoring.

---

## 🚀 Features

- Real-time motion detection via PIR sensor.  
- Live video streaming via ESP32-CAM over Wi-Fi.  
- Spartan-6 FPGA acts as central controller coordinating sensor input and streaming.  
- Hardware implemented in VHDL for reliability and low-power operation.  
- Web-based user interface for alerts and video access.  
- Scalable and cost-effective design for diverse surveillance needs.

---

## 🧰 Technologies Used

- **VHDL** — FPGA hardware description and logic design.  
- **Xilinx Spartan-6 FPGA** — central controller.  
- **ESP32-CAM** — Wi-Fi-enabled camera for video capture and streaming.  
- **PIR Sensor** — Passive Infrared sensor for motion detection.  
- **HTML** — user interface for alerts and video access.

---

## 📂 Repository Structure

/vhdl/ → VHDL source files for FPGA logic implementation
/html/ → Web interface files for alerts and live feed
LICENSE → MIT License file
README.md → Project documentation

yaml
Copy code

---

## 🏗️ System Architecture

1. **PIR Sensor Monitoring** — Continuously detects motion.  
2. **FPGA Processing** — Processes PIR input and initiates video streaming.  
3. **ESP32-CAM Activation** — Streams live video via Wi-Fi.  
4. **Alert Notification** — FPGA sends alert to user with live feed link.  
5. **User Access** — View live stream through web interface.

---

## ⚙️ Installation & Setup

### Hardware Setup

1. **Connect PIR sensor:**
   - Power supply (3.3V or 5V) to sensor.
   - Output signal → FPGA GPIO input.
   - Ground → FPGA GND.

2. **Connect ESP32-CAM:**
   - Power supply 5V (or 3.3V per specification).
   - UART interface → FPGA RX/TX lines.
   - Ground → FPGA GND.

---

### Software Setup

1. Open the VHDL project in a compatible FPGA development environment (e.g., Xilinx ISE).  
2. Compile and synthesize targeting the Spartan-6 FPGA.  
3. Program the FPGA with the generated bitstream.  
4. Deploy HTML interface files to a web host or local server.

---

## 🚨 Usage

1. Power on FPGA board and connected modules.  
2. Monitor for motion alerts.  
3. Access live video stream via the provided URL.  
4. Use the web interface to manage and view surveillance.

---

## 📊 Results

- Motion detection effective within a **6–7 meter range** and a **120° field of view**.  
- Live video streaming with minimal latency.  
- Low power consumption for continuous surveillance.  
- Scalable solution for smart surveillance.

---

## 🛠 Troubleshooting & Support

- Verify power supply levels to all sensors and modules.  
- Confirm UART and GPIO connections between FPGA, ESP32-CAM, and PIR sensor.  
- Ensure correct FPGA bitstream programming.  
- Check Wi-Fi network settings and ESP32-CAM streaming status.  
- Refer to datasheets and VHDL code for debugging.

---

## 🤝 Contribution

Contributions are welcome!  
Fork this repository and submit pull requests for bug fixes, features, or enhancements.

---

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## 📧 Contact

**Varun Thej Parimi**  
Email: p.varunthej@gmail.com

---

**Made with ❤️ for smarter and safer surveillance**
