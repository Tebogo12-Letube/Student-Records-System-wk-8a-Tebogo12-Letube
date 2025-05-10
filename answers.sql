CREATE TABLE Students (  
    StudentID INT PRIMARY KEY AUTO_INCREMENT,  
    FirstName VARCHAR(100) NOT NULL,  
    LastName VARCHAR(100) NOT NULL,  
    IDNumber VARCHAR(13) UNIQUE NOT NULL,  
    DateOfBirth DATE NOT NULL,  
    GradeLevel VARCHAR(20),  
    University VARCHAR(100),  
    Faculty VARCHAR(100)  
);  

CREATE TABLE Courses (  
    CourseID INT PRIMARY KEY AUTO_INCREMENT,  
    CourseName VARCHAR(255) NOT NULL,  
    CourseCode VARCHAR(20) UNIQUE NOT NULL,  
    Credits INT CHECK (Credits > 0),  
    Faculty VARCHAR(100)  
);  

CREATE TABLE Enrollments (  
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,  
    StudentID INT,  
    CourseID INT,  
    EnrollmentDate DATE NOT NULL,  
    Grade CHAR(2),  
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),  
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)  
);  

CREATE TABLE Schools (  
    SchoolID INT PRIMARY KEY AUTO_INCREMENT,  
    SchoolName VARCHAR(255) NOT NULL,  
    Province VARCHAR(100),  
    District VARCHAR(100)  
);  

CREATE TABLE StudentSchools (  
    StudentID INT,  
    SchoolID INT,  
    YearEnrolled YEAR NOT NULL,  
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),  
    FOREIGN KEY (SchoolID) REFERENCES Schools(SchoolID),  
    PRIMARY KEY (StudentID, SchoolID)  
);  
