CREATE SCHEMA `report card`;

CREATE TABLE `report card`.tbl_admin ( 
	admin_id             int  NOT NULL    PRIMARY KEY,
	admin_name           varchar(64)  NOT NULL    ,
	admin_email          varchar(32)  NOT NULL    ,
	admin_phone          int  NOT NULL    ,
	admin_password       varchar(64)  NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_class ( 
	class_id             int  NOT NULL    PRIMARY KEY,
	class_name           varchar(32)  NOT NULL    ,
	subject_id           int  NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_marks ( 
	marks_id             int  NOT NULL    PRIMARY KEY,
	student_registration_number varchar(32)  NOT NULL    ,
	marks_score          int UNSIGNED NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_sequence ( 
	sequence_id          int  NOT NULL    PRIMARY KEY,
	sequence_number      int UNSIGNED NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_subject ( 
	subject_id           int  NOT NULL    PRIMARY KEY,
	subject_name         varchar(32)  NOT NULL    ,
	subject_coefficient  int UNSIGNED NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_teacher ( 
	teacher_id           int  NOT NULL    PRIMARY KEY,
	teacher_name         varchar(64)  NOT NULL    ,
	teacher_email        varchar(32)  NOT NULL    ,
	teacher_phone        int UNSIGNED NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_teachers_log ( 
	log_id               int  NOT NULL    PRIMARY KEY,
	log_time             timestamp(6)  NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	teacher_id           int  NOT NULL    
 ) engine=InnoDB;

CREATE TABLE `report card`.tbl_student ( 
	student_name         varchar(100)  NOT NULL    ,
	student_registration_number varchar(16)  NOT NULL    PRIMARY KEY,
	subject_id           int  NOT NULL    
 ) engine=InnoDB;

ALTER TABLE `report card`.tbl_student ADD CONSTRAINT fk_tbl_student_tbl_subject FOREIGN KEY ( subject_id ) REFERENCES `report card`.tbl_subject( subject_id ) ON DELETE NO ACTION ON UPDATE NO ACTION;
