use slackbot;

INSERT INTO  courses(name, description, pre_requisites)
VALUES("cmpe273", "Enterprise Distributed Systems", "Strong in a OOP or functional programming language");


INSERT INTO instructors (name, office_location, email, office_start_time,
office_end_time, specific_instruction, preferred_contact_method, office_phone, about)
VALUES("Sithu Aung","ENG 281","Sithu.aung@sjsu.edu","Wednesday 5:00PM", "6:00PM","","","","Professor at SJSU" );


INSERT INTO course_sections(course_id, section_no)
VALUES(1, "01");


INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-02-02 11:59:00","Lab1");
INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-03-08 11:59:00","Assignment 1");
INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-03-22 11:59:00","Lab 2");
INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-03-29 11:59:00","Assignment 2");
INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-04-12 11:59:00","Lab 3");
INSERT INTO submission_details	(course_section_id, due_date,activity)
VALUES(1, "2017-04-26 11:59:00","Assignment 3");
INSERT INTO submission_details (course_section_id, due_date,activity)
VALUES(1, "2017-05-10 11:59:00","Lab 4");


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


INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Pop Quizzes","5%");
INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Labs","5%");
INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Assignment","30%");
INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Class Project","20%");
INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Mid-Term Exam","20%");
INSERT INTO course_grading(course_section_id,activity,weight)
VALUES(1, "Final Exam","20%");


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


INSERT INTO course_section_details(course_section_id,instr_id,class_start_time,
class_end_time, class_location,course_website,add_drop_detail,reference_material)
VALUES(1,1,"6:00PM","8.45PM","SH100","","","Book1, Book2, Book3");