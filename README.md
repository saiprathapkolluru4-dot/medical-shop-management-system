# Medical Shop Management System (MediCare POS)

A production-grade, enterprise-ready **Medical Shop & Pharmacy Management System** built with Java Swing (FlatLaf Look & Feel), MVC Architecture, DAO Design Pattern, Dual H2/MySQL Database Support, JFreeChart Analytics, and PDF/Barcode Generation Engines.

---

## 🌟 Key Features
- **Modern FlatLaf UI**: Sleek, responsive layout with rounded buttons, dark/light theme, and dynamic sidebar navigation.
- **Dual Database Architecture**: Auto-connects to MySQL or smoothly falls back to an embedded H2 database (zero setup required).
- **POS Billing & Barcode Scanning**: Instant barcode scanning, real-time total & GST calculator, discount application, thermal/PDF invoice rendering.
- **Inventory & Stock Management**: Stock levels, near expiry alerts, low-stock warnings, and reorder tracking.
- **Analytics & Dynamic Graphs**: Live JFreeChart integration rendering revenue trends and medicine stock distribution.
- **Security & RBAC**: BCrypt password hashing, role-based access control (Admin, Pharmacist, Cashier).

---

## 🚀 Quick Start & Running

### Prerequisites
- **Java Development Kit (JDK 17 or higher)**
- **Apache Maven 3.8+**
- *(Optional)* MySQL Server 8.0+

### Step-by-Step Execution
1. Clone / Navigate to project folder:
   ```bash
   cd MedicalShopManagementSystem
   ```
2. Build Maven package:
   ```bash
   mvn clean package
   ```
3. Launch Application:
   ```bash
   java -jar target/MedicalShopManagementSystem-1.0.0.jar
   ```

---

## 🔑 Default Login Credentials

| Role | Username | Password |
| :--- | :--- | :--- |
| **Administrator** | `admin` | `admin123` |
| **Pharmacist** | `pharmacist` | `pharma123` |
| **Cashier** | `cashier` | `cashier123` |

---

## 📁 System Documentation & Deliverables
- `INSTALLATION.md` - Complete installation guide for MySQL & H2.
- `USER_MANUAL.md` - Step-by-step user operational manual.
- `TESTING_DOCUMENT.md` - Unit test suite & test cases.
- `VIVA_QUESTIONS.md` - 30+ Viva Voce questions and detailed answers.
- `PRESENTATION_SLIDES.md` - 15–20 slide project presentation structure.
- `docs/` - Comprehensive ER Diagrams, Class Diagrams, Sequence Diagrams, Use Case Diagrams, and DFD Level 0, 1 & 2.
