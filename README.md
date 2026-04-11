# Hunterpedia-api
A comprehensive RESTful API for managing my Hunterpedia directory, built with Spring Boot, Spring Data JPA, and PostgreSQL. This project demonstrates fundamental concepts for building APIs with Spring Boot.

## Table of Contents

- [Technology Stack](#technology-stack)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Project Architecture](#project-architecture)
- [API Endpoints](#api-endpoints)
- [API Demo Video](#api-demo-video)
- [Database Schema](#database-schema)

---

## Technology Stack

| Technology          | Version | Purpose                                |
| ------------------- | ------- | -------------------------------------- |
| **Java**            | 25      | Programming language                   |
| **Spring Boot**     | 4.0.3   | Framework for building the application |
| **Spring Data JPA** | Latest  | ORM layer for database access          |
| **Hibernate**       | Latest  | JPA implementation                     |
| **PostgreSQL**      | Latest  | Relational database                    |
| **Maven**           | Latest  | Build and dependency management        |

### Java - [Spring ORM with JPA and Hibernate](https://medium.com/@burakkocakeu/jpa-hibernate-and-spring-data-jpa-efa71feb82ac)
- We are using ORM (Object-Relational Mapping) to deal with databases. This is a technique that allows us to interact with a relational database using object-oriented programming principles.
- JPA (Jakarta Persistence, formerly Java Persistence API) is a specification that defines ORM standards in Java. It provides an abstraction layer for ORM frameworks to make concrete implementations.
- Hibernate: Hibernate is a popular ORM framework that implements JPA. It simplifies database operations by mapping Java objects to database tables and handling queries efficiently.
- Spring ORM allows seamless integration of Hibernate and JPA, making database interactions more manageable and reducing boilerplate code.

### Key Dependencies Explained

**spring-boot-starter-data-jpa**: Provides Spring Data JPA for simplified database access through repositories and automatic query generation.

**spring-boot-starter-webmvc**: Provides Spring Web MVC for building REST APIs with annotations like `@Controller`, `@GetMapping`, etc.

**postgresql**: JDBC driver to connect to PostgreSQL database.

---

## Installation & Setup

### Prerequisites

Before you begin, ensure you have installed:

1. **Java 25 JDK**
   - Download from [Oracle Java](https://www.oracle.com/java/technologies/downloads/) or use a package manager
   - Verify installation: `java -version`

2. **Neon.tech PostgreSQL Database** (Cloud-based, Serverless)
   - This project uses [Neon.tech](https://neon.tech), a serverless PostgreSQL database in the cloud
   - You don't need to install PostgreSQL locally
   - Sign up for a free account at [Neon.tech](https://neon.tech)
   - You only need an internet connection to connect to the database

3. **Git** (optional, for cloning the project)
   - Download from [Git Official Site](https://git-scm.com/)

### About Maven Wrapper

This project includes the **Maven Wrapper**, meaning you do not need to install Maven separately. The wrapper automatically downloads the correct Maven version for you.

The Maven Wrapper is a handy tool that ensures everyone working on the project uses the same Maven version, reducing compatibility issues.

### Setup Instructions

1. **Clone or Download the Project**

   ```bash
   git clone <repository-url>
   cd hunterpedia-api
   ```

2. **Install Dependencies**
   The Maven Wrapper will automatically download dependencies from the `pom.xml` file:

   **On Windows**:

   ```cmd
   mvnw.cmd clean install
   ```

   **On Mac/Linux**:

   ```bash
   ./mvnw clean install
   ```

   This command:
   - `clean`: Removes previous build artifacts
   - `install`: Downloads all dependencies and compiles the project
   - First run may take a few minutes as Maven is downloaded

3. **Database Configuration (Neon.tech Serverless PostgreSQL)**

   #### Step 1: Get Your Neon.tech Connection String

   1. Navigate to [Neon.tech](https://neon.tech)
   2. Sign in to your account
   3. In your project dashboard, find your connection string
   4. It will look like: `postgresql://username:password@host:5432/dbname`

   #### Step 2: Stop Tracking `application.properties` Locally

   To prevent accidentally committing your database credentials to Git, use `git skip-worktree` to exclude your local copy:

   ```bash
   git update-index --skip-worktree src/main/resources/application.properties
   ```

   This tells Git to ignore any changes you make to this file locally. You can now safely edit the file without worrying about committing sensitive data.

   #### Step 3: Update Your Connection String

   Edit `src/main/resources/application.properties` and add your Neon.tech PostgreSQL connection string:

   ```properties
   spring.application.name=crud-api
   spring.datasource.url=jdbc:postgresql://host:5432/dbname
   spring.datasource.username=your_neon_username
   spring.datasource.password=your_neon_password
   spring.jpa.hibernate.ddl-auto=update

   #Log out sql queries
   logging.level.org.hibernate.SQL=DEBUG
   logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE
   logging.level.org.hibernate.orm.jdbc.bind=TRACE
   ```

   Replace with your actual Neon.tech credentials:
   - `host`: Your Neon.tech host (e.g., `some-cool-projectName-pooler.c-7.us-east-1.aws.neon.tech`)
   - `dbname`: Your database name (usually `neondb`)
   - `your_neon_username`: Your Neon.tech username
   - `your_neon_password`: Your Neon.tech password

   #### Example Connection String

   ```properties
   spring.datasource.url=jdbc:postgresql://ep-cool-cherry-ai9ih0ua-pooler.c-7.us-east-1.aws.neon.tech:5432/neondb
   spring.datasource.username=neondb_owner
   spring.datasource.password=your_password_here
   ```

   #### To Resume Tracking the File

   If you need to revert and track the file again:

   ```bash
   git update-index --no-skip-worktree src/main/resources/application.properties
   ```

   **Important Note**: This approach (using `git skip-worktree`) keeps credentials safe locally while the file can be tracked in Git. However, in production environments, database credentials should be managed using environment variables or cloud-based secret management services like AWS Secrets Manager or Azure Key Vault.

4. **Verify Setup**

   **On Windows (PowerShell)**:

   ```cmd
   mvnw.cmd compile
   ```

   **On Mac/Linux (Bash/zsh)**:

   ```bash
   ./mvnw compile
   ```

   If successful, you'll see `BUILD SUCCESS` at the end.

---

## Running the Application

### Using Maven Wrapper

**On Windows**:

```cmd
mvnw.cmd spring-boot:run
```

**On Mac/Linux**:

```bash
./mvnw spring-boot:run
```

The application will start on **http://localhost:8080**

You should see output like:

```
Started CrudApiApplication in 4.532 seconds
```

### Using Java (After Building)

Alternatively, after building the project, you can run the compiled JAR file:

```bash
java -jar target/crud-api-0.0.1-SNAPSHOT.jar
```

### Using VS Code GUI

1. **Open the Project**: Open the project folder in VS Code
2. **Install Extension**: Install the "Extension Pack for Java" (by Microsoft) if not already installed
3. **Run the Application**:
   - Go to the Explorer view (left sidebar)
   - Navigate to `src > main > java > com > csc340 > crud_api > CrudApiApplication.java`
   - Right-click on `CrudApiApplication.java`
   - Select **"Run Java"** or click the ▶️ **Run** button that appears above the class definition
4. **View Output**: The terminal will show the Spring Boot startup messages and confirm the application is running

### Using IntelliJ IDEA GUI

1. **Open the Project**: Open the project folder in IntelliJ IDEA (it will recognize it as a Maven project)
2. **Configure JDK**:
   - Go to **File → Project Structure → Project**
   - Set the Project SDK to Java 25
3. **Run the Application**:
   - Navigate to `src > main > java > com > csc340 > crud_api > CrudApiApplication.java` in the Project Explorer
   - Right-click on `CrudApiApplication.java`
   - Select **"Run 'CrudApiApplication.main()'"** or click the ▶️ **Run** button next to the class name
4. **View Output**: The Run window at the bottom will show Spring Boot startup messages and confirm the application is running

**Alternative: Using the Run Menu**:
- Go to **Run → Run...** and select `CrudApiApplication` from the list
- Or use the keyboard shortcut: **Shift+F10** (Windows) or **Ctrl+R** (Mac)

### Stopping the Application

Press `Ctrl+C` in your terminal to stop the running application. If using IDE GUI, click the ⏹️ **Stop** button in the Run/Debug toolbar.

---

## Project Architecture

### Folder Structure

```
src/main/java/com/csc340/api/
├── Hunter.java                       # Entity/Model class
├── HunterApiController.java          # Handles HTTP requests
├── HunterpediaApiApplication.java    # Entry point of the application
├── HunterRepository.java             # Database access layer
└── HunterService.java                # Business logic layer

src/main/resources/
└── application.properties             # Configuration file
```

### Architectural Pattern: **Layered Architecture**

This project follows a three-tier architecture pattern:

```
┌─────────────────────────────────────┐
│   HTTP Client (REST Client, Browser)│
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Controller Layer                 │
│  (HunterApiController)             │
│  - Handles HTTP requests/responses  │
│  - Maps URLs to methods(endpoints)  │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Service Layer                    │
│  (HunterService)                   │
│  - Contains business logic          │
│  - Processes data from repositories │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Repository Layer                 │
│  (HunterRepository)                │
│  - Communicates with database       │
│  - Performs CRUD operations         │
└────────────────┬────────────────────┘
                 │
┌────────────────▼────────────────────┐
│    Database                         │
│  (PostgreSQL)                       │
└─────────────────────────────────────┘
```

### Why This Architecture?

- **Separation of Concerns**: Each layer has a specific responsibility
- **Reusability**: Service layer logic can be reused by multiple controllers
- **Testability**: Each layer can be tested independently
- **Maintainability**: Changes in one layer don't require changes in others

---

## API Endpoints

All endpoints use the base URL: `http://localhost:8080/hunters`

### 1. Get All Hunters

```http
GET /hunters
```

**Description**: Retrieve a list of all hunters in the database.

**Parameters**: None

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Student objects

---

### 2. Get Hunter by ID

```http
GET /hunters/{hunterId}
```

**Description**: Retrieve a single hunter by their Hunter ID.

**Path Parameters**:

- `hunterId` (Long, required): The unique identifier of the hunter

**Response**:

- **Status Code**: `200 OK` (if found) or `404 Not Found` (if not found)
- **Body**: Hunter object


### 3. Create a New Student

```http
POST /hunters
```

**Description**: Create a new hunter record in the database.

**Request Body**: Hunter object with the following fields:

- `name` (String, required, unique): Hunter's full name
- `nenType` (String, required): Hunter's nen category
- `abilities` (String, optional): Hunter's nen ability
- `background` (String, required): Brief statement desribing the hunter
- `imageURL` (String, required, unique): File path for hunter's image

**Response**:

- **Status Code**: `200 OK` (if created successfully)
- **Body**: Created Hunter object with assigned `hunterId`

---

### 4. Get Hunter by Nen Type

```http
GET /hunters/nenType/{nenType}
```

**Description**: Retrieve all hunters with a specific nen type.

**Path Parameters**:

- `nenType` (String, required): The nen type to filter by (e.g., "Transmuter")

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of Student objects

---

### 5. Search Hunters by Name

```http
GET /hunters/search?name={name}
```

**Description**: Search for hunters by name (partial match supported) or retrieve all students if no name is provided.

**Query Parameters**:

- `name` (String, optional): The name or part of the name to search for

**Response**:

- **Status Code**: `200 OK`
- **Body**: Array of matched Student objects

---

### 7. Update a Hunter

```http
PUT /hunters/{hunterId}
```

**Description**: Update an existing hunter's information.

**Path Parameters**:

- `hunterId` (Long, required): The ID of the hunter to update

**Request Body**: Hunter object with fields to update:

- `name` (String, required, unique): Hunter's full name
- `nenType` (String, required): Hunter's nen category
- `abilities` (String, optional): Hunter's nen ability
- `background` (String, required): Brief statement desribing the hunter
- `imageURL` (String, required, unique): File path for hunter's image

**Response**:

- **Status Code**: `200 OK` (if updated successfully) or `404 Not Found` (if hunter not found)
- **Body**: Updated Hunter object

---

### 9. Delete a Hunter

```http
DELETE /hunters/{hunterId}
```

**Description**: Delete an existing hunter record from the database.

**Path Parameters**:

- `hunterId` (Long, required): The ID of the hunter to delete

**Response**:

- **Status Code**: `204 No Content` (successful deletion)
- **Body**: Empty


### Api Demo Video

https://uncg-my.sharepoint.com/:v:/g/personal/jdbutts_uncg_edu/IQBwFTWcOSydTL1LUpx2ckkEAcTtTI7KSgbimXkedeqOiro?e=w485wH

---

### MVC Demo Video

https://uncg-my.sharepoint.com/:v:/g/personal/jdbutts_uncg_edu/IQAGOKPEy45ARpL31kZAG7VLARkbLoTzilUds5-OyRvPH80?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=hF4Rah


## Database Schema

The application uses a single table to store student data:

### HUNTERS Table

| Column       | Type             | Constraints      | Description                                  |
| ------------ | ---------------- | ---------------- | -------------------------------------------- |
| `hunter_id`  | BIGINT           | PRIMARY KEY      | Auto-incrementing unique identifier          |
| `name`       | VARCHAR(255)     | NOT NULL, UNIQUE | Hunter's full name (must be unique)          |
| `nenType`    | VARCHAR(255)     | NOT NULL         | Hunter's nen category                        |
| `abilities`  | VARCHAR(255)     | Can be NULL      | Hunter's nen ability (optional)              |
| `background` | DOUBLE PRECISION | NOT NULL         | Brief statement desribing the hunter         |
  `image_url`  | VARCHAR(255)     | NOT NULL, UNIQUE | File path for hunter's image (must be unique)|


## Testing the API

### Using Postman/Echo API/Bruno (GUI)

1. Create a new request
2. Select HTTP method (GET, POST, PUT, DELETE)
3. Enter URL (e.g., http://localhost:8080/hunters/)
4. If POST/PUT, go to "Body" tab → select "raw" and "JSON"
5. Enter JSON data and click "Send"

---

## Common Issues and Solutions

### Issue: Port 8080 is already in use

**Solution**: Change the port in `application.properties`:

```properties
server.port=8081
```

Then access the API at `http://localhost:8081/hunters/`

### Issue: "Connection refused" when accessing database

**Solution**:
- Ensure you have **internet access** to connect to Neon.tech (the database is cloud-based and always running)
- Verify your connection string is correct in `application.properties`
- Check that your username and password from Neon.tech are correct
- Make sure the host/endpoint is reachable (not blocked by firewall)

### Issue: Getting 404 errors

**Solution**:

- Verify the endpoint URL is correct
- Make sure the application is running (use `mvnw.cmd spring-boot:run` on Windows or `./mvnw spring-boot:run` on Mac/Linux)
- Check the base path is `/hunters`

### Issue: JSON parsing errors in POST/PUT requests

**Solution**:

- Ensure `Content-Type: application/json` header is set
- Verify JSON syntax is valid (use online JSON validator)
- Check all required fields are included (name and email are required)

---

## Additional Resources

- [Spring Boot Official Documentation](https://spring.io/projects/spring-boot)
- [Spring Data JPA Guide](https://spring.io/projects/spring-data-jpa)
- [REST API Best Practices](https://restfulapi.net/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
