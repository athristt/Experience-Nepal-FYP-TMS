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

Experience Nepal is a PHP based tourism website where travellers can explore tour packages, make bookings, submit enquiries, rate their experiences and get package recommendations based on what similar travellers liked. Admins manage tour packages, users, bookings, enquiries, issues and website content from a separate admin panel. This was built as my Final Year Project (FYP).

## ✨ Features

**For travellers**
- 🔑 Register, log in and log out, manage a profile, change password and reset a forgotten password
- 🎒 Browse tour packages and view full details
- 📅 Book a package and check your booking history
- ⭐ Rate packages and get personalised recommendations
- 💬 Submit enquiries and report issues

**For admins**
- 📊 Admin login and dashboard overview
- 🧳 Add, edit and delete tour packages, and manage package images
- 👥 Manage users, bookings, enquiries, issues and ratings
- 📄 Edit site pages such as About, Terms and Contact

## 🧰 Requirements

- Windows
- [XAMPP](https://www.apachefriends.org/) with Apache, MySQL, PHP and phpMyAdmin (default location `C:\xampp`)
- Git (recommended)
- A modern web browser

Built with PHP 8.x and MySQL / MariaDB, using Bootstrap 4 and jQuery. Tested with PHP 8.0 and MariaDB 10.4.

## 🚀 How to Access

**1. Get the project**

Open PowerShell or Command Prompt and run:

```bash
cd C:\Users\YOUR_USERNAME\Desktop
git clone https://github.com/athristt/Experience-Nepal-FYP-TMS.git
cd Experience-Nepal-FYP-TMS
```

**2. Copy the site into XAMPP**

Copy the **`tms`** folder from the project into your XAMPP web folder so the final location is:

```text
C:\xampp\htdocs\tms
```

**3. Start the servers**

Open **`C:\xampp\xampp-control.exe`** and start **Apache** and **MySQL**. Both should show as **Running**. Keep the XAMPP Control Panel open while using the website.

**4. Set up the database**

1. Open **http://localhost/phpmyadmin/**
2. Click **New**, enter the name **`tms`** and click **Create**
3. Select the **`tms`** database, click **Import** and choose **`sql file/tms.sql`**
4. Click **Import** at the bottom of the page

After a successful import you should see these tables: `admin`, `tblbooking`, `tblenquiry`, `tblissues`, `tblpages`, `tbltourpackages`, `tblusers` and `userrating`.

**5. Open the site**

| What | Link |
|------|------|
| Website | http://localhost/tms/ |
| Admin panel | http://localhost/tms/admin/ |
| phpMyAdmin | http://localhost/phpmyadmin/ |

Demo admin login: username `admin`, password `admin`. Please change it after your first login, and before deploying the project anywhere public.

## 🗂️ Folder Guide

| Folder / File | What is inside |
|---------------|----------------|
| `tms/` | The website and admin panel (`admin/`, `css/`, `fonts/`, `images/`, `includes/`, `js/` and the PHP pages) |
| `sql file/` | The database file to import (`tms.sql`) |
| `bootstrap-4.0.0/` | Bootstrap files used for styling |
| `Tourism Management System -TMS.zip` | Zipped copy of the project |

> The project expects the default XAMPP database login: host `localhost`, database `tms`, user `root` and an empty password. Only change the configuration if you changed these in MySQL.

## 👤 Author

Made by **Pranav Regmi** ([@athristt](https://github.com/athristt))
