# Viva Voce Questions and Answers - Medical Shop Management System

### Q1: What architecture does this application follow?
**Answer**: The system follows the classic **Model-View-Controller (MVC)** architectural pattern coupled with the **Data Access Object (DAO)** design pattern. This decouples the user interface (Swing), business logic/service layer, and data persistence operations (JDBC/SQL).

### Q2: How does the system handle database connectivity and fallback?
**Answer**: The application includes a dynamic connection factory (`DatabaseConnection.java`). It attempts to establish a connection to a MySQL instance using JDBC (`mysql-connector-j`). If MySQL is offline or unreachable, it gracefully falls back to an embedded **H2 Database** (`jdbc:h2:./data/medical_shop_db`), automatically initializing the database schema and sample data on the fly.

### Q3: How is password security maintained?
**Answer**: User passwords are encrypted using **BCrypt** (`org.mindrot.jbcrypt`). Plaintext passwords are never stored in the database. During authentication, the input password is verified against the salted BCrypt hash.

### Q4: How is PDF Invoice generation implemented?
**Answer**: Invoices are generated dynamically upon POS checkout using **Apache PDFBox**. The system extracts sale details, formats header info, itemized lists, GST amounts, and total calculations into a standard PDF document saved in the `/invoices` directory.

### Q5: What libraries are used for Barcode and QR code generation?
**Answer**: The application utilizes Google’s **ZXing (Zebra Crossing)** library to render Code 128 barcodes and standard QR codes for medicine scanning and verification.

### Q6: How does the POS Billing module update inventory levels?
**Answer**: When a checkout transaction occurs, `SalesDAO` initiates a database transaction with `setAutoCommit(false)`. It inserts the master sale record, batch inserts itemized rows, and decrements stock quantities in `medicines` using atomic `UPDATE` statements. If any error occurs, a `rollback()` is triggered to prevent inventory corruption.

### Q7: Explain the role-based security in the system.
**Answer**: The application defines three primary roles:
1. **Administrator**: Full access to all modules, employee management, system logs, and configuration settings.
2. **Pharmacist**: Access to Medicine Catalog, Inventory Control, Expiry tracking, and Supplier management.
3. **Cashier**: Access restricted to POS/Billing, Customer lookup, and daily sales views.

### Q8: What database views and triggers are included in the MySQL schema?
**Answer**: 
- `v_low_stock_alerts`: A pre-compiled SQL view that joins medicines and suppliers to list products where quantity <= min_quantity.
- `v_near_expiry`: A view filtering medicines expiring within 60 days.

### Q9: How are analytics graphs rendered?
**Answer**: Using **JFreeChart**, the system converts live data sets into visual components (`ChartPanel`) displaying weekly revenue line charts and medicine category pie charts on the dashboard.

### Q10: What Look and Feel library is used for modern Swing UI?
**Answer**: The app uses **FlatLaf (FlatLightLaf)**, a modern open-source Look and Feel for Java Swing providing clean typography, dark/light mode compatibility, and rounded components.
