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

Experience Nepal is a PHP-based Tourism Management System developed as my Final Year Project (FYP). Travellers can explore tour packages, make bookings, submit enquiries, rate their experiences and get package recommendations based on what similar travellers liked.

It also includes an Admin Panel for managing tour packages, users, bookings, enquiries, issues and website content.

## 🛠️ Technologies Used

- **PHP 8.x**
- **MySQL / MariaDB**
- **Bootstrap 4**
- **jQuery**
- **HTML5**
- **CSS3**
- **JavaScript**
- **XAMPP**

## ✨ Features

**For travellers**
- 🔑 User registration, login and logout
- 👤 User profile
- 🎒 Browse tour packages and view full details
- 📅 Book a package and check your booking history
- ⭐ Rate packages and get personalised recommendations
- 💬 Submit enquiries and report issues
- 🔒 Change password and forgot password functionality

**For admins**
- 🔐 Admin login and dashboard overview
- 🧳 Add, edit and delete tour packages
- 🖼️ Manage package images
- 👥 Manage users, bookings, enquiries, issues and ratings
- 📄 Edit site pages such as About, Terms and Contact

## 🧰 Requirements

Before running the project, make sure you have:

- Windows
- [XAMPP](https://www.apachefriends.org/) with Apache, MySQL, PHP 8.x and phpMyAdmin
- A modern web browser
- Git (recommended)

Built with PHP 8.0 and MariaDB 10.4.

## 🚀 How to Access

This guide explains how to run the project on a Windows computer using XAMPP.

**1. Install XAMPP**

Download and install **XAMPP**. During installation, make sure these components are selected: Apache, MySQL, PHP and phpMyAdmin.

The default installation location is:

```text
C:\xampp
```

**2. Start Apache and MySQL**

Open the XAMPP Control Panel:

```text
C:\xampp\xampp-control.exe
```

Click **Start** next to **Apache** and next to **MySQL**. Both should show as **Running**:

```text
Apache   Running
MySQL    Running
```

> Keep the XAMPP Control Panel open while using the website.

**If Apache does not start:** Apache normally uses ports **80** and **443**. Another application may already be using them, for example IIS, Skype, other web servers, Docker or other development tools. Check the error shown in the XAMPP Control Panel before changing any ports.

**If MySQL does not start:** MySQL normally uses port **3306**. Another MySQL/MariaDB installation may already be using it. Check the XAMPP error message before changing any configuration.

**3. Download the project**

Open **PowerShell** or **Command Prompt** and run:

```bash
cd C:\Users\YOUR_USERNAME\Desktop
git clone https://github.com/athristt/Experience-Nepal-FYP-TMS.git
cd Experience-Nepal-FYP-TMS
```

The project should contain:

```text
Experience-Nepal-FYP-TMS/
│
├── bootstrap-4.0.0/
├── sql file/
├── tms/
├── .gitattributes
├── README.md
└── Tourism Management System -TMS.zip
```

**4. Copy the site into XAMPP**

The actual PHP website is inside the **`tms`** folder. Copy this folder:

```text
Experience-Nepal-FYP-TMS/tms
```

into:

```text
C:\xampp\htdocs\
```

The final location should be:

```text
C:\xampp\htdocs\tms
```

**5. Open phpMyAdmin**

Make sure Apache and MySQL are running, then visit:

```text
http://localhost/phpmyadmin/
```

**6. Create the database**

1. Click **New** in the left sidebar
2. Enter the database name **`tms`**
3. Click **Create**

**7. Import the database**

The SQL file is included in the repository at `sql file/tms.sql`.

1. Click the **`tms`** database
2. Click **Import** at the top
3. Click **Choose File** and select **`sql file/tms.sql`**
4. Scroll down and click **Import**

After a successful import, the `tms` database should contain these tables:

```text
admin
tblbooking
tblenquiry
tblissues
tblpages
tbltourpackages
tblusers
userrating
```

**8. Check the database configuration**

The project uses the local MySQL configuration provided by XAMPP:

```text
Database: tms
Username: root
Password: empty
Host: localhost
```

If you change the MySQL username, password or database name, update the project's database configuration accordingly. Do not change the configuration if the project is already connecting successfully.

**9. Open the site**

| What | Link |
|------|------|
| Website | http://localhost/tms/ |
| Admin panel | http://localhost/tms/admin/ |
| phpMyAdmin | http://localhost/phpmyadmin/ |

You should see the **Experience Nepal** homepage. Example pages include Home, About, Tour Packages, Terms of Use, Contact Us, Enquiry, Sign Up and Sign In.

Demo admin login: username `admin`, password `admin`. These credentials are for local/demo use only. Please change the password after your first login, and before deploying the system publicly.

## 🗂️ Folder Guide

| Folder / File | What is inside |
|---------------|----------------|
| `tms/` | The website and admin panel |
| `sql file/` | The database file to import (`tms.sql`) |
| `bootstrap-4.0.0/` | Bootstrap files used for styling |
| `Tourism Management System -TMS.zip` | Zipped copy of the project |

Inside the `tms/` folder:

```text
tms/
│
├── admin/          Admin panel
├── css/            Stylesheets
├── fonts/          Font files
├── images/         Website images
├── includes/       PHP include/configuration files
├── js/             JavaScript files
│
├── index.php
├── package-list.php
├── package-details.php
├── profile.php
├── enquiry.php
├── ratings.php
├── recommend.php
└── ...
```

> The project expects the default XAMPP database login (user `root`, empty password) and a database named `tms`.

## 🗄️ Database

The project uses a MySQL/MariaDB database named `tms`. Main tables include:

| Table | Purpose |
|-------|---------|
| `admin` | Administrator accounts |
| `tblusers` | Registered users |
| `tbltourpackages` | Tour package information |
| `tblbooking` | Tour bookings |
| `tblenquiry` | User enquiries |
| `tblissues` | Reported issues |
| `tblpages` | Website page content |
| `userrating` | User/package ratings |

## 🧪 Testing the Installation

After installation, verify the following.

**XAMPP**

```text
☑ Apache is running
☑ MySQL is running
```

**Database** (open http://localhost/phpmyadmin/)

```text
☑ tms database exists
☑ Database tables are present
```

**Website** (open http://localhost/tms/)

```text
☑ Homepage loads
☑ Tour packages appear
☑ Images load
☑ Package details work
```

**Admin** (open http://localhost/tms/admin/)

```text
☑ Admin login page loads
☑ Admin login works
☑ Dashboard loads
```

## 🐛 Troubleshooting

**"Object not found" / 404 error**

Check that the project is located exactly at `C:\xampp\htdocs\tms`, then try http://localhost/tms/ again.

**Database connection error**

Check that:

1. MySQL is running in XAMPP
2. The database `tms` exists
3. `tms.sql` was imported successfully
4. The database configuration uses host `localhost`, database `tms`, username `root` and an empty password

**Apache won't start**

Check whether another application is using ports `80` or `443`. Use the XAMPP Control Panel logs to identify the problem before changing ports.

**MySQL won't start**

Check whether another MySQL/MariaDB service is already running and using port `3306`. Check the XAMPP logs for the exact error.

**Images are not loading**

Make sure the complete project was copied, including:

```text
images/
admin/pacakgeimages/
```

The website should be located at `C:\xampp\htdocs\tms`.

## 🔒 Security Notes

This project was originally developed as an academic/final-year project. Before deploying it to a public server, consider:

- Changing the default admin credentials
- Using strong passwords
- Securing database credentials
- Validating and sanitizing user input
- Using prepared SQL statements
- Adding CSRF protection
- Improving authentication/session security
- Disabling PHP error messages in production
- Updating outdated dependencies
- Moving sensitive configuration outside publicly accessible directories

## 👤 Author

Made by **Pranav Regmi** ([@athristt](https://github.com/athristt))

## 📄 License

This project was developed as a Final Year Project for educational purposes.
