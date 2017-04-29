
DROP DATABASE SLACKBOT;
CREATE DATABASE SLACKBOT;


USE SLACKBOT;

create table COURSE_INSTRUCTOR (
  instr_id int auto_increment not null primary key,
  instr_name varchar(255),
  instr_Offce_location varchar(255),
  email varchar(255),
  office_start_time varchar(255),
  office_end_time varchar(255),
  specific_instruction varchar(255),
  preffered_contact_method varchar(255),
  Ofce_Ph_No varchar(255),
  about varchar(255)
);

USE SLACKBOT;

create table COURSE(
    course_id int auto_increment not null primary key,
    course_name varchar(255),
    course_description varchar(255),
    pre_requisites varchar(255)
);

USE SLACKBOT;

create table COURSE_SECTION(
course_section_id int auto_increment not null primary key,
course_id varchar(20),
section_no int,
CONSTRAINT CRSE_SEC UNIQUE (course_id,section_no)
);

USE SLACKBOT;

																

create table SUBMISSION_DETAILS			(
    submission_id int auto_increment not null primary key,
	course_section_id int not null,
    due_date timestamp ,
    activity varchar(255),
        foreign key (course_section_id) references COURSE_SECTION(course_section_id)

    /*activity_details varchar(255)*/
);

USE SLACKBOT;

create table COURSE_TOPIC(
    topic_id int auto_increment not null primary key,
    course_section_id int not null,
    lecture_date date,
    topic varchar(255),
    foreign key (course_section_id) references COURSE_SECTION(course_section_id)
    );

USE SLACKBOT;

create table COURSE_GRADING(
    grade_id int auto_increment not null primary key,
	course_section_id int not null,
    activity varchar(255),
    weightage varchar(20),
    foreign key (course_section_id) references COURSE_SECTION(course_section_id)
);		

USE SLACKBOT;

create table PROGRAM_OUTCOMES(
    po_id varchar(10) not null primary key,
	course_section_id int not null,
    po_description varchar(255),
    foreign key (course_section_id) references COURSE_SECTION(course_section_id)
);

USE SLACKBOT;

create table COURSE_LEARNING_OBJECTIVE(		
    clo_id varchar(20) not null primary key,
	course_section_id int not null,
    clo_description varchar(255),
    foreign key (course_section_id) references COURSE_SECTION(course_section_id)
);

USE SLACKBOT;

create table PROGRAM_LEARNING_MAP	(
    pl_id int auto_increment not null primary key,
	course_section_id int not null,
    po_id varchar(10) not null,
    clo_id varchar (10)not null,
    foreign key (po_id) references PROGRAM_OUTCOMES(po_id),
    foreign key (clo_id) references COURSE_LEARNING_OBJECTIVE(clo_id),
	foreign key (course_section_id) references COURSE_SECTION(course_section_id),
    CONSTRAINT CRSE_SEC UNIQUE (po_id,clo_id)

);

USE SLACKBOT;


create table COURSE_SECTION_DETAIL(
    course_section_detail_id int auto_increment not null primary key,
    course_section_id int not null,
    instr_id int not null,
	day_of_week varchar(255),
    class_start_time varchar(20),
    class_end_time varchar(255),
    class_location varchar(255),
    course_website varchar(255),
    add_drop_detail varchar(255),
    reference_material_1 varchar(255),
    reference_material_2 varchar(255),
    reference_material_3 varchar(255),
    grading_type varchar(30),
    classroom_protocol varchar(255),
    extra_details varchar(255),
	foreign key (course_section_id) references COURSE_SECTION(course_section_id),
    foreign key (instr_id) references COURSE_INSTRUCTOR(instr_id)
);

USE SLACKBOT;


create table UNIVERSITY_POLICY(
    upol_code int auto_increment not null primary key,
    pol_name varchar(255),
    pol_description varchar(255)
);

USE SLACKBOT;

create table COURSE_POLICY(
    cpol_code int auto_increment not null primary key,
    pol_name varchar(255),
    pol_description varchar(255),
    course_section_id int not null,
	foreign key (course_section_id) references COURSE_SECTION(course_section_id)
);



