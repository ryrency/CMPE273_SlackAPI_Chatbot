use slackbot;


/*******************************************************************************************************************************************************************/
/*GREENSHEET - SITHU AUNG*/
/*******************************************************************************************************************************************************************/

INSERT INTO  courses(name, description, pre_requisites)
VALUES("cmpe273", "Enterprise Distributed Systems", "Strong in a OOP or functional programming language");


INSERT INTO instructors (name, office_location, email, office_start_time,
office_end_time, specific_instruction, preferred_contact_method, office_phone, about)
VALUES("Sithu Aung","ENG 337","richardsinn@yahoo.com","Saturday 9:15AM", "12:00PM","Appointment necessary before meeting","e-mail","Office Phone No not shared","Professor at SJSU" );

INSERT INTO course_sections(course_id, section_no)
VALUES(1, "01");



INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-02-02 11:59:00","Lab1", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-03-08 11:59:00","Assignment 1", 1);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-03-22 11:59:00","Lab 2", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-03-29 11:59:00","Assignment 2", 1);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-04-12 11:59:00","Lab 3", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-04-26 11:59:00","Assignment 3", 1);
INSERT INTO course_schedules (course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-05-10 11:59:00","Lab 4", 0);
INSERT INTO course_schedules (course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-05-10 11:59:00","Project", 2);
INSERT INTO course_schedules (course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-05-10 11:59:00","Mid-term", 3);
INSERT INTO course_schedules (course_section_id, due_date, activity, activity_type)
VALUES(1, "2017-05-10 11:59:00","Final Exam", 4);




INSERT INTO course_topics(course_section_id, lecture_date, topic)
VALUES(1,"2017-02-01","Distributed Systems Overview");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-08","Integration Protocols");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-15","Remote Procedure calls");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-22","RESTful Web Services");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-22","RESTful Web Services");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-01","RESTful Web Services");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-08","Messaging");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-15","Consistency Models");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-22","Fault Tolerance(Replication)");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-29","Spring Break - NO CLASS");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-05","Mid Term");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-12","MessFault Tolerance(Sharding)");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-19","Consensus");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-26","Performance");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-03","Decentralised Application");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-10","Project Presentations");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-24","Final Exam");




INSERT INTO course_grading(course_section_id, activity, weight, activity_type)
VALUES(1, "Pop Quizzes","5%", 0);
INSERT INTO course_grading(course_section_id, activity, weight, activity_type)
VALUES(1, "Labs","5%", 1);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(1, "Assignment","30%", 2);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(1, "Class Project","20%", 3);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(1, "Mid-Term Exam","20%", 4);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(1, "Final Exam","20%", 5);



INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be able to demonstrate an understanding of advanced knowledge of the practice of software engineering, from vision to analysis, design, validation and deployment. ");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be able to tackle complex engineering problems and tasks, using contemporary engineering principles, methodologies and tools. ");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be able to demonstrate leadership and the ability to participate in teamwork in an environment with different disciplines of engineering, science and business. ");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be aware of ethical, economic and environmental implications of their work, as appropriate.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be able to advance successfully in the engineering profession, and sustain a process of life-long learning in engineer or other professional areas.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(1,"Be able to communicate effectively, in both oral and written forms.");



INSERT INTO course_section_details(course_section_id,instr_id,class_start_time,
class_end_time, class_location,course_website,add_drop_detail,reference_material)
VALUES(1,1,"6:00PM","8.45PM","SH100","https://sjsu.instructure.com/courses","Please check college website for details","Book1, Book2, Book3");



INSERT INTO learning_objectives(course_section_id, description)
VALUES(1,"Ability to demonstrate an understanding of architecture principles in building distributed systems");
INSERT INTO learning_objectives(course_section_id,description)
VALUES(1,"Ability to create application services using Web Services. ");
INSERT INTO learning_objectives(course_section_id,description)
VALUES(1,"Ability to integrate application services using Java Messaging Services");
INSERT INTO learning_objectives(course_section_id,description)
VALUES(1,"Ability to design and implement distributed systems with a particular emphasis on how to deal with the shared state using distributed caching");
INSERT INTO learning_objectives(course_section_id,description)
VALUES(1,"Ability to identify and evaluate application protocols and integration patterns for distributed system");





/*******************************************************************************************************************************************************************/
/*GREENSHEET - RICHARD SINN*/
/*******************************************************************************************************************************************************************/

INSERT INTO  courses(name, description, pre_requisites)
VALUES("cmpe272", "Enterprise Software Platforms", "Classified graduate standing or instructor consent. Computer Engineering and Software Engineering majors only.");

INSERT INTO instructors (name, office_location, email, office_start_time,
office_end_time, specific_instruction, preferred_contact_method, office_phone, about)
VALUES("Richard Sinn","ENG 281","Sithu.aung@sjsu.edu","Wednesday 5:00PM", "6:00PM","Class meets every sat","e-mail","Office Phone No not shared","Richard Sinn is a Professor at SJSU and a Senior Software Development Manager at Adobe." );

INSERT INTO course_sections(course_id, section_no)
VALUES(2, "02");



INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-02-07 11:59:00","Lab- Mobile Ad Hoc Network", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-03-01 11:59:00","Lab: TCP Plot Reading Exercise", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-03-08 11:59:00","Homework Web Env Setup", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-03-15 11:59:00","Lab: Create Basic Web Application / Page", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-03-22 11:59:00","Lab: Secure Section with username and password verification", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-04-12 11:59:00","Lab: Database for Users", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-04-19 11:59:00","Lab: Cookie App", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-04-26 11:59:00","Lab: CURL", 0);
INSERT INTO course_schedules	(course_section_id, due_date, activity, activity_type)
VALUES(2, "2017-05-03 11:59:00","Lab: Youtube tryout", 0);




INSERT INTO course_topics(course_section_id, lecture_date, topic)
VALUES(2,"2017-01-28","Enterprise Architecture");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-02-04","Wireless and Mobile Networks");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-02-11","HTTP");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-02-18","TCP / Networking");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-02-25","HTML 5 Programming");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-03-04","Security Overview ");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-03-12","PKI");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-03-19","Firewall and IDS");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-03-25","Midterm");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-04-01","Database / SQL");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-04-08","Big Data");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-04-15","Mobile Computing");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-04-22","Cloud Computing");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-04-29","RFID / IoT");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-05-06","Project Presentation");
INSERT INTO course_topics(course_section_id,lecture_date,topic)
VALUES(2,"2017-05-20","Final Exam");


INSERT INTO course_grading(course_section_id, activity, weight, activity_type)
VALUES(2, "Labs","35%", 1);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(2, "Team Project","20%", 2);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(2, "Team Presentation","20%", 3);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(2, "Mid-Term Exam","15%", 4);
INSERT INTO course_grading(course_section_id,activity,weight, activity_type)
VALUES(2, "Final Exam","20%", 5);




INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be able to demonstrate an understanding of advanced knowledge of the practice of software engineering, from vision to analysis, design, validation and deployment.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be able to tackle complex engineering problems and tasks, using contemporary engineering principles, methodologies and tools.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be able to demonstrate leadership and the ability to participate in teamwork in an environment with different disciplines of engineering, science and business.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be aware of ethical, economic and environmental implications of their work, as appropriate.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be able to advance successfully in the engineering profession, and sustain a process of life-long learning in engineer or other professional areas.");
INSERT INTO program_outcomes(course_section_id, description)
VALUES(2,"Be able to communicate effectively, in both oral and written forms.");




INSERT INTO learning_objectives(course_section_id, description)
VALUES(2,"Ability to identify and evaluate technologies and place them within a software platform.");
INSERT INTO learning_objectives(course_section_id, description)
VALUES(2,"Ability to understand where a technology fits within its maturity lifecycle.");
INSERT INTO learning_objectives(course_section_id, description)
VALUES(2,"Ability to understand the standardization process for enterprise class software technologies.");
INSERT INTO learning_objectives(course_section_id, description)
VALUES(2,"Ability to compose a software platform and system architecture solution using available technologies given a business problem.");
INSERT INTO learning_objectives(course_section_id, description)
VALUES(2,"Ability to analyze software technologies, standards, and architectures then communicate the outcome of the analysis.");





INSERT INTO course_section_details(course_section_id,instr_id,class_start_time,
class_end_time, class_location,course_website,add_drop_detail,reference_material)
VALUES(2,2,"9:15AM","12.00PM","ENG 337","http://openloop.com/education/classes/sjsu_engr/engr_ent_swplatforms/","Please check college website for details.","TCP refernce");


/*******************************************************************************************************************************************************************/
/*University policies*/
/*******************************************************************************************************************************************************************/

INSERT INTO  university_policy(name,description)
VALUES("General Expectations, Rights and Responsibilities of the Student","As members of the academic community, students accept both the rights and responsibilities incumbent upon all members of the institution. Students are encouraged to familiarize themselves with SJSU’s policies and practices pertaining to the procedures to follow if and when questions or concerns about a class arises. To learn important campus information, view University Policy S16-15 and SJSU current semester’s Policies and Procedures. In general, it is recommended that students begin by seeking clarification or discussing concerns with their instructor.  If such conversation is not possible, or if it does not address the issue, it is recommended that the student contact the Department Chair as the next step.");
INSERT INTO  university_policy(name,description)
VALUES("Workload and Credit Hour Requirements","Success in this course is based on the expectation that students will spend, for each unit of credit, a minimum of 45 hours over the length of the course (normally 3 hours per unit per week with 1 of the hours used for lecture) for instruction or preparation/studying or course related activities including but not limited to internships, labs, clinical practica. Other course structures will have equivalent workload expectations as described in the syllabus.");
INSERT INTO  university_policy(name,description)
VALUES("Attendance and Participation ","Attendance per se shall not be used as a criterion for grading. However, students are expected to attend all meetings for the courses in which they are enrolled as they are responsible for material discussed therein, and active participation is frequently essential to ensure maximum benefit to all class members. In some cases, attendance is fundamental to course objectives; for example, students may be required to interact with others in the class. Attendance is the responsibility of the student. Participation may be used as a criterion for grading when the parameters and their evaluation are clearly defined in the course syllabus and the percentage of the overall grade is stated. The full policy language can be found at http://www.sjsu.edu/senate/docs/F15-3.pdf");
INSERT INTO  university_policy(name,description)
VALUES("Accommodation to Students’ Religious Holidays","University Policy S14-7 states that San José State University shall provide accommodation on any graded class work or activities for students wishing to observe religious holidays when such observances require students to be absent from class. It is the responsibility of the student to inform the instructor, in writing, about such holidays before the add deadline at the start of each semester. If such holidays occur before the add deadline, the student must notify the instructor, in writing, at least three days before the date that he/she will be absent. It is the responsibility of the instructor to make every reasonable effort to honor the student request without penalty, and of the student to make up the work missed. ");
INSERT INTO  university_policy(name,description)
VALUES("Dropping and Adding","Students are responsible for understanding the policies and procedures about add/drop, grade forgiveness, etc.  Add/drop deadlines can be found on the current academic year calendars document on the Academic Calendars webpage.  Students should be aware of the current deadlines and penalties for dropping classes (Late Drop Information).Information about the latest changes and news is available at the Advising Hub.");
INSERT INTO  university_policy(name,description)
VALUES("Academic integrity","Your commitment, as a student, to learning is evidenced by your enrollment at San Jose State University.  The University Academic Integrity Policy F15-7 requires you to be honest in all your academic course work. Faculty members are required to report all infractions to the office of Student Conduct and Ethical Development. Visit the Student Conduct and Ethical Development website for more information.");
INSERT INTO  university_policy(name,description)
VALUES("Campus Policy in Compliance with the American Disabilities Act","If you need course adaptations or accommodations because of a disability, or if you need to make special arrangements in case the building must be evacuated, please make an appointment with me as soon as possible, or see me during office hours. Presidential Directive 97-03 requires that students with disabilities requesting accommodations must register with the Accessible Education Center (AEC) to establish a record of their disability.");
INSERT INTO  university_policy(name,description)
VALUES("SJSU Writing Center","The SJSU Writing Center is located in Clark Hall, Suite 126. All Writing Specialists have gone through a rigorous hiring process, and they are well trained to assist all students at all levels within all disciplines to become better writers. In addition to one-on-one tutoring services, the Writing Center also offers workshops every semester on a variety of writing topics. To make an appointment or to refer to the numerous online resources offered through the Writing Center, visit the Writing Center website at http://www.sjsu.edu/writingcenter. For additional resources and updated information, follow the Writing Center on Twitter and become a fan of the SJSU Writing Center on Facebook.");
INSERT INTO  university_policy(name,description)
VALUES("SJSU Peer Connections","Peer Connections’ free tutoring and mentoring is designed to assist students in the development of their full academic potential and to inspire them to become independent learners.  Peer Connections tutors are trained to provide content-based tutoring in many lower division courses (some upper division) as well as writing and study skills assistance. Small group and individual tutoring are available.  Peer Connections mentors are trained to provide support and resources in navigating the college experience. This support includes assistance in learning strategies and techniques on how to be a successful student.  Peer Connections has a learning commons, desktop computers, and success workshops on a wide variety of topics.  For more information on services, hours, locations, or a list of current workshops, please visit Peer Connections website at http://peerconnections.sjsu.edu for more information.");
INSERT INTO  university_policy(name,description)
VALUES("Student Technology Resources","A wide variety of audio-visual equipment is available for student checkout from Media Services located in IRC 112. These items include DV and HD digital camcorders; digital still cameras; video, slide and overhead projectors; DVD, CD, and audiotape players; sound systems, wireless microphones, projection screens and monitors.");

