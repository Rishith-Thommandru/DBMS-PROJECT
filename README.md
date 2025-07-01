# 🏥 ASHA Worker Health Record Management System

> **A Database Management System for Community Healthcare Records**

---

## 📚 Project Overview

The **ASHA Worker Health Record Management System** is a database-driven solution designed to help ASHA (Accredited Social Health Activist) workers efficiently manage healthcare records in rural India.

The system manages data related to families, individuals, immunizations, pregnancies, chronic diseases, medicine distribution, and ASHA worker visits. It is designed to replace traditional paper records with a robust and structured relational database.

---

## 🚀 Features

- 👨‍👩‍👧‍👦 Manage households, families, and individuals
- 🤰 Pregnancy tracking and newborn records
- 💉 Immunization records with age-based eligibility
- ❤️ Chronic disease monitoring
- 💊 Medicine and tablet distribution logs
- ⚰️ Mortality tracking
- 📝 ASHA worker visit records
- 🔗 Fully normalized relational database
- 🔄 SQL triggers for automated updates

---

## 🔥 ER Diagram

[ER Diagram](./diagrams/er_diagram.pdf)

---

## 🗄️ Relational Schema Diagram

[Relational Schema](./diagrams/relational_schema.pdf)

---

## 🗂️ Entities

- Village
- Asha
- Family
- Person
- VillageVisitRecord
- PregnancyRecord
- NewBornRecord
- DeathRecord
- Disease
- ChronicDiseaseRecord
- Vaccine
- ImmunizationRecord
- Tablet
- MedicineDistributionRecord

---

## 🛠️ Technologies Used

- **Database:** MySQL
- **Languages:** SQL (DDL, DML, Triggers)
- **Tools:** MySQL Workbench, dbdiagram.io

---

## 📂 Project Files

| File Name                        | Description                                          |
|----------------------------------|------------------------------------------------------|
| `create_tables_and_triggers.sql` | SQL script to create the database, tables, and triggers. |
| `insert_data.sql`                | SQL script to populate the database with sample data.|
| `/diagrams/er_diagram.pdf`       | Entity-Relationship diagram.                         |
| `/diagrams/relational_schema.pdf`| Relational schema diagram with PKs and FKs.          |
| `/docs/ASHA_WORKER_DBMS_REPORT.pdf`   | Project report with schema, diagrams, and explanations.|

---

## 🏗️ How to Run

1. Install MySQL Server (or use XAMPP/WAMP).
2. Open MySQL Workbench or any SQL client.
3. Run `create_tables_and_triggers.sql` to create the database and tables.
4. Run `insert_data.sql` to populate with sample data.
5. Execute SQL queries to explore and manage healthcare data.

---

## 📄 Documentation

- 📑 [Project Report](./docs/ASHA_WORKER_DBMS_REPORT.pdf)

---

## 👨‍💻 Authors

- **Rishith Thommandru** — [LinkedIn](https://www.linkedin.com/in/rishith-thommandru)
- **Vyshnav Reddy Pinreddy**

---

## 📜 License

This project is developed for educational and demonstration purposes related to database management and design.

---

## ⭐ Acknowledgements

Inspired by the vital role of ASHA workers in community healthcare.

---
