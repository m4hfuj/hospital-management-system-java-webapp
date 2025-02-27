# 🏥 Hospital Management System using Java and Tomcat Server
Welcome to the Hospital Management System project! This project is built using Java, JSP, Servlets, JDBC, and MySQL. It aims to streamline and manage hospital operations efficiently.

## 📝 Introduction
The Hospital Management System is designed to manage the administrative tasks of hospitals, including patient records, doctor appointments, and billing. 


### Prerequisites
Ensure you have the following installed:
- Java Development Kit (JDK)
- Apache Tomcat
- MySQL
- Eclipse IDE
- Proper JAR files for JDBC and Servlet APIs

### Download and Install Tomcat Server

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


### Setup Database

**Configure Database:**
   - Create a database in MySQL using the provided `sql.txt` file.
   - Update the database credentials in the project:
     ```java
     String url = "jdbc:mysql://localhost:3306/hospitalmngsys";
     String username = "root";
     String password = "";
     ```

### Open project on Browser

**Clone the Repository:**
   ```bash
   git clone https://github.com/Shripad735/hospital-management-system.git
   ```

Then copy the hospital-management-system folder into inside of /opt/tomcat/webapps folder

**Access the Application:**
   - Open your browser and go to: `http://localhost:8080/hospital-management-system/homepage.jsp`


## 📞 Contact
If you have any questions or suggestions, feel free to contact me at:
- Email: mhmirza.jusr@gmail.com

Thank you for checking out the Hospital Management System project! 🙌
```









    
