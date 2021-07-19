CREATE SCHEMA `report card`;

CREATE SCHEMA todo;

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

CREATE TABLE todo.`Todo` ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	`Desciption`         varchar(255)  NOT NULL    ,
	user_id              int UNSIGNED NOT NULL    ,
	created_at           timestamp      ,
	updated_at           timestamp      
 );

CREATE INDEX todo_user_id_index ON todo.`Todo` ( user_id );

CREATE TABLE todo.failed_jobs ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	uuid                 varchar(255)  NOT NULL    ,
	connection           text  NOT NULL    ,
	queue                text  NOT NULL    ,
	payload              longtext  NOT NULL    ,
	exception            longtext  NOT NULL    ,
	failed_at            timestamp  NOT NULL DEFAULT current_timestamp()   ,
	CONSTRAINT failed_jobs_uuid_unique UNIQUE ( uuid ) 
 );

CREATE TABLE todo.migrations ( 
	id                   int UNSIGNED NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	migration            varchar(255)  NOT NULL    ,
	batch                int  NOT NULL    
 );

CREATE TABLE todo.password_resets ( 
	email                varchar(255)  NOT NULL    ,
	token                varchar(255)  NOT NULL    ,
	created_at           timestamp      
 );

CREATE INDEX password_resets_email_index ON todo.password_resets ( email );

CREATE TABLE todo.users ( 
	id                   bigint UNSIGNED NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	name                 varchar(255)  NOT NULL    ,
	email                varchar(255)  NOT NULL    ,
	email_verified_at    timestamp      ,
	password             varchar(255)  NOT NULL    ,
	remember_token       varchar(100)      ,
	created_at           timestamp      ,
	updated_at           timestamp      ,
	CONSTRAINT users_email_unique UNIQUE ( email ) 
 );

ALTER TABLE `report card`.tbl_student ADD CONSTRAINT fk_tbl_student_tbl_subject FOREIGN KEY ( subject_id ) REFERENCES `report card`.tbl_subject( subject_id ) ON DELETE NO ACTION ON UPDATE NO ACTION;
