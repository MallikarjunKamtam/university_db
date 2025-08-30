-- academic.departments
INSERT INTO academic.departments (department_id, name, building) VALUES
(1, 'Computer Science', 'Engineering Block A'),
(2, 'Mathematics', 'Science Block B'),
(3, 'Physics', 'Physics Block'),
(4, 'Chemistry', 'Chemistry Block'),
(5, 'English', 'Humanities Building'),
(6, 'Mechanical Engineering', 'Mech Engg Center'),
(7, 'Economics', 'Business Block'),
(8, 'Psychology', 'Social Sciences Building');

-- academic.programs
INSERT INTO academic.programs (program_id, program_name, degree_level, duration_years, department_id) VALUES
(1, 'B.Tech Computer Science', 'Bachelors', 4, 1),
(2, 'B.A. English Literature', 'Bachelors', 3, 5),
(3, 'M.Sc Mathematics', 'Masters', 2, 2),
(4, 'PhD Physics', 'PhD', 5, 3),
(5, 'B.Sc Chemistry', 'Bachelors', 3, 4),
(6, 'B.Tech Mechanical Engg', 'Bachelors', 4, 6),
(7, 'MA Psychology', 'Masters', 2, 8),
(8, 'B.A. Economics', 'Bachelors', 3, 7);

-- academic.students
INSERT INTO academic.students (student_id, first_name, last_name, dob, gender, email, phone, enrollment_year, program_id) VALUES
(1, 'Ravi', 'Kumar', '2002-05-10', 'M', 'ravi.kumar@example.com', '9876543210', 2021, 1),
(2, 'Anjali', 'Sharma', '2001-11-18', 'F', 'anjali.sharma@example.com', '9812345678', 2022, 2),
(3, 'Sunil', 'Verma', '2003-03-25', 'M', 'sunil.verma@example.com', '9873412560', 2021, 3),
(4, 'Priya', 'Singh', '2002-08-14', 'F', 'priya.singh@example.com', '9856124785', 2022, 4),
(5, 'Rahul', 'Gupta', '2000-02-19', 'M', 'rahul.gupta@example.com', '9832137564', 2020, 5),
(6, 'Kiran', 'Patel', '2002-12-30', 'M', 'kiran.patel@example.com', '9845791230', 2023, 6),
(7, 'Divya', 'Desai', '2001-06-07', 'F', 'divya.desai@example.com', '9821456978', 2023, 7),
(8, 'Neha', 'Chopra', '2003-09-01', 'F', 'neha.chopra@example.com', '9832154784', 2021, 8);

-- academic.courses
INSERT INTO academic.courses (course_id, course_code, course_name, credits, department_id) VALUES
(1, 'CS101', 'Intro to Programming', 3, 1),
(2, 'ENG201', 'English Literature I', 4, 5),
(3, 'MAT301', 'Advanced Calculus', 4, 2),
(4, 'PHY401', 'Quantum Mechanics', 4, 3),
(5, 'CHE102', 'Organic Chemistry', 3, 4),
(6, 'MECH202', 'Thermodynamics', 3, 6),
(7, 'PSY101', 'Introduction to Psychology', 3, 8),
(8, 'ECO101', 'Microeconomics', 3, 7);


-- admin.faculties
INSERT INTO admin.faculties (faculty_id, first_name, last_name, email, phone, hire_date, designation, department_id) VALUES
(1, 'Arun', 'Mehta', 'arun.mehta@univ.edu', '9123456789', '2015-08-15', 'Professor', 1),
(2, 'Sunita', 'Patel', 'sunita.patel@univ.edu', '9988776655', '2018-07-01', 'Associate Professor', 2),
(3, 'Vikram', 'Nair', 'vikram.nair@univ.edu', '9132457698', '2016-01-25', 'Assistant Professor', 3),
(4, 'Neelam', 'Singhania', 'neelam.singh@univ.edu', '9198765432', '2017-05-10', 'Lecturer', 5),
(5, 'Rajesh', 'Kumar', 'rajesh.kumar@univ.edu', '9154321789', '2019-03-12', 'Professor', 1);

-- academic.course_offerings
INSERT INTO academic.course_offerings (offering_id, course_id, faculty_id, semester, year) VALUES
(1, 1, 1, 'Fall', 2023),
(2, 2, 2, 'Spring', 2023),
(3, 3, 3, 'Fall', 2024),
(4, 1, 1, 'Winter', 2023),
(5, 4, 4, 'Summer', 2024),
(6, 5, 5, 'Fall', 2024);

-- academic.enrollments
INSERT INTO academic.enrollments (enrollment_id, student_id, offering_id, enrollment_date, status) VALUES
(1, 1, 1, '2023-08-01', 'enrolled'),
(2, 2, 2, '2023-08-02', 'completed'),
(3, 3, 3, '2023-08-03', 'enrolled'),
(4, 4, 1, '2023-08-04', 'dropped'),
(5, 5, 4, '2023-08-05', 'completed'),
(6, 6, 5, '2023-08-06', 'enrolled');

-- academic.grades
INSERT INTO academic.grades (grade_id, enrollment_id, grade, graded_on) VALUES
(1, 1, 'A', '2023-12-15'),
(2, 2, 'B+', '2023-12-16'),
(3, 3, 'A-', '2023-12-17'),
(4, 4, 'C', '2023-12-18'),
(5, 5, 'B', '2023-12-19'),
(6, 6, 'A+', '2023-12-20');

-- academic.assignments
INSERT INTO academic.assignments (assignment_id, offering_id, title, description, due_date) VALUES
(1, 1, 'Project Proposal', 'Submit proposal document.', '2023-09-15'),
(2, 2, 'Midterm Essay', 'Write an essay on assigned topic.', '2023-10-20'),
(3, 3, 'Final Presentation', 'Present final project.', '2023-12-10');

-- academic.submissions
INSERT INTO academic.submissions (submission_id, assignment_id, student_id, submitted_on, grade, feedback) VALUES
(1, 1, 1, '2023-09-14 10:00', 'A', 'Great work.'),
(2, 2, 2, '2023-10-19 14:00', 'B+', 'Good effort.'),
(3, 3, 3, '2023-12-09 15:30', 'A-', 'Well presented.');

-- academic.exams
INSERT INTO academic.exams (exam_id, offering_id, exam_type, exam_date, total_marks) VALUES
(1, 1, 'Midterm', '2023-10-15', 100),
(2, 2, 'Final', '2023-12-15', 150),
(3, 3, 'Quiz', '2023-09-30', 50);

-- academic.exam_results
INSERT INTO academic.exam_results (result_id, exam_id, student_id, marks_obtained, grade) VALUES
(1, 1, 1, 85, 'A'),
(2, 2, 2, 140, 'A+'),
(3, 3, 3, 45, 'B+');

-- academic.teaching_assistants
INSERT INTO academic.teaching_assistants (ta_id, offering_id, student_id, assigned_date) VALUES
(1, 1, 4, '2023-08-20'),
(2, 2, 5, '2023-08-21');

-- academic.prerequisites
INSERT INTO academic.prerequisites (course_id, prerequisite_course_id) VALUES
(3, 1),
(4, 3);

-- academic.waitlists
INSERT INTO academic.waitlists (waitlist_id, offering_id, student_id, added_on, position) VALUES
(1, 1, 7, '2023-08-22', 1),
(2, 2, 8, '2023-08-23', 2);

-- academic.course_materials
INSERT INTO academic.course_materials (material_id, course_id, title, material_type, url, uploaded_on) VALUES
(1, 1, 'Lecture 1 Notes', 'Lecture Notes', 'http://univ.edu/materials/lec1', '2023-08-10'),
(2, 2, 'Lecture 2 Slides', 'Slide', 'http://univ.edu/materials/lec2', '2023-08-11');

-- admin.rooms
INSERT INTO admin.rooms (room_id, building, room_number, capacity, type) VALUES
(1, 'Engineering Block A', 'A101', 60, 'Lecture'),
(2, 'Science Block B', 'B204', 40, 'Lab'),
(3, 'Humanities Building', 'H107', 30, 'Lecture'),
(4, 'Business Block', 'BB01', 100, 'Auditorium');

-- admin.class_schedule
INSERT INTO admin.class_schedule (schedule_id, offering_id, room_id, day_of_week, start_time, end_time) VALUES
(1, 1, 1, 'Monday', '09:00', '10:30'),
(2, 2, 2, 'Tuesday', '11:00', '12:30'),
(3, 3, 3, 'Wednesday', '14:00', '15:30'),
(4, 4, 4, 'Thursday', '16:00', '17:30');

-- library.authors
INSERT INTO library.authors (author_id, first_name, last_name) VALUES
(1, 'Isaac', 'Asimov'),
(2, 'Jane', 'Austen'),
(3, 'Albert', 'Einstein'),
(4, 'Mary', 'Shelley'),
(5, 'Thomas', 'Hardy');

-- library.publishers
INSERT INTO library.publishers (publisher_id, name, address, contact_email) VALUES
(1, 'MIT Press', 'Cambridge, MA', 'contact@mitpress.edu'),
(2, 'Penguin', 'London, UK', 'info@penguin.com'),
(3, 'Basic Books', 'New York, NY', 'info@basicbooks.com'),
(4, 'Dover', 'Mineola, NY', 'support@doverpublications.com'),
(5, 'Springer', 'Berlin, Germany', 'contact@springer.com'),
(6, 'Pearson', 'New York, NY', 'help@pearson.com'),
(7, 'Harvard University Press', 'Cambridge, MA', 'info@harvardpress.edu');

-- library.books
INSERT INTO library.books (book_id, title, isbn, publisher, published_year, total_copies, publisher_id) VALUES
(1, 'Introduction to Algorithms', '9780262033848', 'MIT Press', 2009, 10, 1),
(2, 'Pride and Prejudice', '9780141199078', 'Penguin', 1813, 6, 2),
(3, 'Relativity: The Special and the General Theory', '9780465025275', 'Basic Books', 1916, 4, 3),
(4, 'Frankenstein', '9780486282114', 'Dover', 1818, 7, 4),
(5, 'Analysis I', '9783540056120', 'Springer', 1978, 5, 5),
(6, 'Compilers: Principles, Techniques, and Tools', '9780321486813', 'Pearson', 2006, 8, 6),
(7, 'The Idea of Justice', '9780674060470', 'Harvard University Press', 2009, 3, 7);

-- library.book_authors
INSERT INTO library.book_authors (book_id, author_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- library.book_loans
INSERT INTO library.book_loans (loan_id, book_id, student_id, loan_date, due_date, return_date) VALUES
(1, 1, 1, '2023-08-01', '2023-08-15', NULL),
(2, 2, 2, '2023-08-02', '2023-08-16', '2023-08-14'),
(3, 3, 3, '2023-08-03', '2023-08-17', NULL);

-- library.fines
INSERT INTO library.fines (fine_id, loan_id, amount, paid, fine_date) VALUES
(1, 1, 25.00, FALSE, '2023-08-20'),
(2, 3, 15.00, TRUE, '2023-08-21');

 
-- student_life.clubs
INSERT INTO student_life.clubs (club_id, club_name, description, founding_year) VALUES
(1, 'Coding Club', 'For all coding enthusiasts.', 2015),
(2, 'Dramatics Society', 'Theatre and drama performances.', 2012),
(3, 'Literary Circle', 'Book readings and poetry slams.', 2017),
(4, 'Sports League', 'Football, cricket and more.', 2018);

-- student_life.club_memberships
INSERT INTO student_life.club_memberships (membership_id, club_id, student_id, join_date, role) VALUES
(1, 1, 1, '2023-01-10', 'Member'),
(2, 2, 2, '2023-02-15', 'President'),
(3, 1, 3, '2023-03-20', 'Secretary');

-- student_life.events
INSERT INTO student_life.events (event_id, club_id, event_name, event_date, location, description) VALUES
(1, 1, 'Hackathon 2023', '2023-11-10', 'Main Auditorium', 'A 24-hour coding challenge.'),
(2, 3, 'Poetry Slam Night', '2023-10-25', 'Library Hall', 'An evening of poetry and performance.');

-- student_life.housing
INSERT INTO student_life.housing (housing_id, building_name, address, capacity) VALUES
(1, 'Hostel A', 'Sector 1, Campus', 120),
(2, 'Hostel B', 'Sector 2, Campus', 100),
(3, 'PG Block', 'Sector 3, Campus', 80),
(4, 'Girls Hostel', 'Sector 4, Campus', 90);

-- student_life.housing_assignments
INSERT INTO student_life.housing_assignments (assignment_id, housing_id, student_id, room_number, assigned_date, vacated_date) VALUES
(1, 1, 1, '101', '2023-08-20', NULL),
(2, 2, 2, '102', '2023-08-21', NULL),
(3, 3, 3, '103', '2023-08-22', NULL);

-- finance.tuition_fees
INSERT INTO finance.tuition_fees (tuition_id, program_id, year, amount) VALUES
(1, 1, 2023, 50000.00),
(2, 2, 2023, 35000.00),
(3, 3, 2023, 60000.00);

-- finance.payments
INSERT INTO finance.payments (payment_id, student_id, tuition_id, payment_date, amount, payment_method) VALUES
(1, 1, 1, '2023-08-01', 25000.00, 'Credit Card'),
(2, 2, 2, '2023-08-05', 35000.00, 'Bank Transfer'),
(3, 3, 3, '2023-08-10', 30000.00, 'Cash');

-- finance.scholarships
INSERT INTO finance.scholarships (scholarship_id, name, amount, criteria) VALUES
(1, 'Merit Scholarship', 10000.00, 'Top 5% in program'),
(2, 'Sports Excellence', 8000.00, 'National level sports medalist');

-- finance.scholarship_awards
INSERT INTO finance.scholarship_awards (award_id, scholarship_id, student_id, award_date) VALUES
(1, 1, 1, '2023-09-01'),
(2, 2, 3, '2023-09-15');

-- system.users
INSERT INTO system.users (user_id, username, password_hash, email, created_at) VALUES
(1, 'ravi123', 'hashedpassword1', 'ravi123@example.com', '2023-07-01 08:00'),
(2, 'anjaliS', 'hashedpassword2', 'anjalis@example.com', '2023-07-05 09:30'),
(3, 'sunilV', 'hashedpassword3', 'sunilv@example.com', '2023-07-10 11:15');

-- system.roles
INSERT INTO system.roles (role_id, role_name, description) VALUES
(1, 'Admin', 'System administrator'),
(2, 'Student', 'University student');

-- system.user_roles
INSERT INTO system.user_roles (user_id, role_id, assigned_at) VALUES
(1, 1, '2023-07-02 08:00'),
(2, 2, '2023-07-06 10:00'),
(3, 2, '2023-07-11 12:00');

-- system.permissions
INSERT INTO system.permissions (permission_id, permission_name, description) VALUES
(1, 'read', 'Permission to read data'),
(2, 'write', 'Permission to write data'),
(3, 'execute', 'Permission to execute actions');

-- system.role_permissions
INSERT INTO system.role_permissions (role_id, permission_id) VALUES
(1, 1),
(2, 2);
