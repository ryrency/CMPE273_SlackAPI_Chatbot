INSERT INTO  SLACKBOT.COURSE(course_name,course_description,pre_requisites)
VALUES("CMPE273", "Enterprise Distributed Systems",
"Strong in a OOP or functional programming language");

SELECT * FROM SLACKBOT.COURSE;








INSERT INTO SLACKBOT.COURSE_INSTRUCTOR (instr_name,instr_Offce_location,email,office_start_time,
office_end_time,specific_instruction,preffered_contact_method,Ofce_Ph_No,about)
VALUES("Sithu Aung","ENG 281","Sithu.aung@sjsu.edu","Wednesday 5:00PM", "6:00PM","","","","Proffesort at SJSU" );

SELECT * FROM SLACKBOT.COURSE_INSTRUCTOR;








INSERT INTO SLACKBOT.COURSE_SECTION(course_id,section_no,grading_type) 
VALUES("CMPE273","01","curved");

SELECT * FROM SLACKBOT.COURSE_SECTION;










INSERT INTO SLACKBOT.COURSE_SCHEDULE (course_section_id,day_of_week1,time1,day_of_week2,time2,day_of_week3,time3,classroom_protocol,extra_details)
VALUES (1, "Wednesday","6:00PM to 8.45PM","","","","","This course consists of a single lecture per week.  In-class activities including hands-on labs will be given to encourage attendance. You are encouraged to consult with me on your group project to make sure it is successful","");

SELECT * FROM SLACKBOT.COURSE_SCHEDULE;












INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-02-02 11:59:00","Lab1","TBD");


INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-03-08 11:59:00","Assignment 1","TBD");

INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-03-22 11:59:00","Lab 2","TBD");

INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-03-29 11:59:00","Assignment 2","TBD");

INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-04-12 11:59:00","Lab 3","TBD");

INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-04-26 11:59:00","Assignment 3","TBD");

INSERT INTO SLACKBOT.SUBMISSION_DETAILS	(due_date,activity,activity_details)
VALUES("2017-05-10 11:59:00","Lab 4","TBD");


SELECT * FROM SLACKBOT.SUBMISSION_DETAILS;















INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-01","Distributed Systems Overview");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-08","Integration Protocols");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-15","Remote Procedure calls");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-22","RESTful Web Services");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-02-22","RESTful Web Services");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-01","RESTful Web Services");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-08","Messaging");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-15","Consistency Models");
INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-22","Fault Tolerance(Replication)");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-03-29","Spring Break - NO CLASS");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-05","Mid Term");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-12","MessFault Tolerance(Sharding)");


INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-19","Consensus");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-04-26","Performance");


INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-03","Decentralised Application");


INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-10","Project Presentations");

INSERT INTO SLACKBOT.COURSE_TOPIC(course_section_id,lecture_date,topic)
VALUES(1,"2017-05-24","Final Exam");


SELECT * FROM SLACKBOT.COURSE_TOPIC;
















INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Pop Quizzes","5%");
INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Labs","5%");
INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Assignment","30%");
INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Class Project","20%");
INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Mid-Term Exam","20%");
INSERT INTO SLACKBOT.COURSE_GRADING(course_section_id,activity,weightage)
VALUES(1, "Final Exam","20%");
SELECT * FROM SLACKBOT.COURSE_GRADING;



INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO1",1,"Be able to demonstrate an understanding of advanced knowledge of the practice of software engineering, from vision to analysis, design, validation and deployment. ");
INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO2",1,"Be able to tackle complex engineering problems and tasks, using contemporary engineering principles, methodologies and tools. ");
INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO3",1,"Be able to demonstrate leadership and the ability to participate in teamwork in an environment with different disciplines of engineering, science and business. ");
INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO4",1,"Be aware of ethical, economic and environmental implications of their work, as appropriate.");
INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO5",1,"Be able to advance successfully in the engineering profession, and sustain a process of life-long learning in engineer or other professional areas.");
INSERT INTO SLACKBOT.PROGRAM_OUTCOMES(po_id, course_section_id,po_description)
VALUES("PO6",1,"Be able to communicate effectively, in both oral and written forms.");

SELECT * FROM SLACKBOT.PROGRAM_OUTCOMES;










INSERT INTO SLACKBOT.COURSE_LEARNING_OBJECTIVE(clo_id,course_section_id,clo_description)
VALUES("CLO1",1,"Ability to demonstrate an understanding of architecture principles in building distributed systems");
INSERT INTO SLACKBOT.COURSE_LEARNING_OBJECTIVE(clo_id,course_section_id,clo_description)
VALUES("CLO2",1,"Ability to create application services using Web Services. ");
INSERT INTO SLACKBOT.COURSE_LEARNING_OBJECTIVE(clo_id,course_section_id,clo_description)
VALUES("CLO3",1,"Ability to integrate application services using Java Messaging Services");
INSERT INTO SLACKBOT.COURSE_LEARNING_OBJECTIVE(clo_id,course_section_id,clo_description)
VALUES("CLO4",1,"Ability to design and implement distributed systems with a particular emphasis on how to deal with the shared state using distributed caching");
INSERT INTO SLACKBOT.COURSE_LEARNING_OBJECTIVE(clo_id,course_section_id,clo_description)
VALUES("CLO5",1,"Ability to identify and evaluate application protocols and integration patterns for distributed system");

SELECT * FROM SLACKBOT.COURSE_LEARNING_OBJECTIVE;















INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO1","CLO1");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO2","CLO1");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO1","CLO2");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO2","CLO2");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO1","CLO3");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO2","CLO3");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO1","CLO4");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO2","CLO4");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO1","CLO5");
INSERT INTO SLACKBOT.PROGRAM_LEARNING_MAP	(course_section_id,po_id,clo_id)
VALUES(1,"PO2","CLO5");

select *  FROM SLACKBOT.PROGRAM_LEARNING_MAP;


INSERT INTO SLACKBOT.COURSE_SECTION_DETAIL(course_section_id,instr_id,class_start_time,
class_end_time, class_location,course_website,add_drop_detail,reference_material_1,reference_material_2,reference_material_3)
VALUES(1,1,"6:00PM","8.45PM","SH100","","","Book1","","");

SELECT * FROM SLACKBOT.COURSE_SECTION_DETAIL















