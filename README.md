# 🏥 Hospital Management System using Java and Tomcat Server
Welcome to the Hospital Management System project! This project is built using Java, JSP, Servlets, JDBC, and MySQL. It aims to streamline and manage hospital operations efficiently.

## 📝 Introduction
The Hospital Management System is designed to manage the administrative tasks of hospitals, including patient records, doctor appointments, and billing. 


### Prerequisites
Ensure you have the following installed:
- Java Development Kit (JDK)
- Apache Tomcat
- MySQL
- Vscode IDE
- Proper JAR files for JDBC and Servlet APIs

## Installation

### Step 1: Tomcat

Download tomcat 11 from: https://tomcat.apache.org/download-11.cgi

For Ubuntu:

    wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.4/bin/apache-tomcat-11.0.4.tar.gz

Then Use:

    tar -xvf apache-tomcat-11.0.4.tar.gz
    mkdir /opt/tomcat
    mv apache-tomcat-11.0.4/* /opt/tomcat


To start tomcat server:

    cd /opt/tomcat/bin
    ./startup.sh

To stop tomcat server:

    ./shutdown.sh


### Step 2: Setup Database

**Start MySQL Database**

- Stop apache2: `sudo systemctl stop apache2`
- Stop MySQL: `sudo service mysql stop`
- Run: `sudo /opt/lampp/manager-linux-x64.run`

**Configure Database:**
   - Create a database in MySQL using the provided `sql.txt` file.
   - Update the database credentials in the project:
     ```java
     String url = "jdbc:mysql://localhost:3306/hospitalmngsys";
     String username = "root";
     String password = "";
     ```

### Step 3: Java Editor

Use Vscode for editing the code
Open hospital-management-system folder with Vscode

**File Structure:**

    hospital-management-system/
    ├── META-INF
    ├── WEB-INF
    │   ├── class/
    │   │   ├── *Compile classes*
    │   ├── lib/
    │   │   ├── *All jre library files*
    │   ├── src/
    │   │   ├── *Java Codes*
    │   ├── hospitalDashboard.jsp
    │   ├── web.xml
    ├── *All frontend jsp files*

### Maven libraries

- Java Maven Repository URL: `https://repo1.maven.org/maven2/`
- jakarta.servlet-api-6.1.0.jar: `https://repo1.maven.org/maven2/jakarta/servlet/jakarta.servlet-api/6.1.0/jakarta.servlet-api-6.1.0.jar`
- jstl-1.2.jar: `Source not Found`
- mysql-connector-j-8.1.0.jar: `https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.1.0/mysql-connector-j-8.1.0.jar`


### Use this command to compile java source codes in Vscode

    javac -cp "./WEB-INF/lib/*" -d "./WEB-INF/classes" ./WEB-INF/src/*.java


### Step 4: Open project on Browser

**Clone the Repository:**
   ```bash
   git clone https://github.com/m4hfuj/hospital-management-system-java-webapp.git
   ```

Then copy the hospital-management-system folder into inside of /opt/tomcat/webapps folder

**Access the Application:**
   - Open your browser and go to: `http://localhost:8080/hospital-management-system/homepage.jsp`


## 📞 Contact
If you have any questions or suggestions, feel free to contact me at:
- Email: mhmirza.just@gmail.com

Thank you for checking out the Hospital Management System project! 🙌
