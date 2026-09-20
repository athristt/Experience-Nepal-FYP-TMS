<div align="center">

# 🇳🇵 Experience Nepal

**A Tourism Management System with smart, rating based package recommendations.**

![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap_4-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)
![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)

</div>

---

## 📖 About

Experience Nepal is a tourism website where travellers can discover tour packages, book trips, rate their experiences and get package recommendations based on what similar travellers liked. Admins manage everything from a separate dashboard. This was built as my Final Year Project (FYP).

## ✨ Features

**For travellers**
- 🔑 Sign up, log in and manage a profile
- 🎒 Browse tour packages and view full details
- 📅 Book a package and check your tour history
- ⭐ Rate packages and get personalised recommendations
- 💬 Send enquiries and raise issues

**For admins**
- 📊 Dashboard overview
- 🧳 Create and manage tour packages
- 👥 Manage users, bookings, enquiries and issues
- 📄 Edit site pages such as About, Terms and Contact

## 🧰 Requirements

- [XAMPP](https://www.apachefriends.org/) (or WAMP / MAMP) with PHP and MySQL
- A modern web browser

Built with PHP 8.0 and MariaDB 10.4.

## 🚀 How to Access

**1. Get the project**

```bash
git clone https://github.com/athristt/Experience-Nepal-FYP-TMS.git
```

**2. Copy the site into XAMPP**

Copy the **`tms`** folder into your XAMPP web folder, for example `C:\xampp\htdocs\tms`

**3. Start the servers**

Open the XAMPP Control Panel and start **Apache** and **MySQL**.

**4. Set up the database**

1. Open **http://localhost/phpmyadmin**
2. Create a new database named **`tms`**
3. Click **Import** and choose **`sql file/tms.sql`**

**5. Open the site**

| What | Link |
|------|------|
| Website | http://localhost/tms/ |
| Admin panel | http://localhost/tms/admin/ |

Demo admin login: username `admin`, password `admin`. Please change it after your first login.

## 🗂️ Folder Guide

| Folder | What is inside |
|--------|----------------|
| `tms/` | The website and admin panel |
| `sql file/` | The database file to import |
| `bootstrap-4.0.0/` | Bootstrap files used for styling |

> The project expects the default XAMPP database login (user `root`, empty password) and a database named `tms`.

## 👤 Author

Made by **Pranav Regmi** ([@athristt](https://github.com/athristt))
