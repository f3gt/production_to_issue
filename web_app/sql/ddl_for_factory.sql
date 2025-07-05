
use prod_data
IF OBJECT_ID('bronze.user_tab','U') is not null
	drop table bronze.user_tab

create table bronze.user_tab (
	sr_no int  identity(1,1),
	userid nvarchar(20) primary key,
	first_name nvarchar(50),
	last_name nvarchar(50),
	element nvarchar(50),
	user_pass nvarchar(50),
	Factory nvarchar(50) ,
	data_in_date dateTIME default getdate(),

	)

IF OBJECT_ID('bronze.pod_fac','U') is not null
	drop table bronze.pod_fac

create table bronze.pod_fac (
	sr_no int  identity(1,1) primary key ,
	prd_date date,
	element_type nvarchar(50),
	element nvarchar(50),
	quantity int,
	volume float,
	concrete_grade nvarchar(50),
	Factory nvarchar(50) default 'POD',
	remarks nvarchar(100),
	data_in_date dateTIME default getdate(),
	userid nvarchar(20) foreign key references bronze.user_tab(userid)
	)

IF OBJECT_ID('bronze.hcs_fac','U') is not null
	drop table bronze.hcs_fac

	create table bronze.hcs_fac (
		sr_no int  identity(1,1) primary key ,
		prd_date date,
		element_type nvarchar(50),
		element nvarchar(50),
		quantity int,
		volume float,
		concrete_grade nvarchar(50),
		Factory nvarchar(50) default 'HCS',
		remarks nvarchar(100),
		data_in_date dateTIME default getdate()
		)

IF OBJECT_ID('bronze.special_fac','U') is not null
	drop table bronze.special_fac

	create table bronze.special_fac (
		sr_no int  identity(1,1) primary key ,
		prd_date date,
		element_type nvarchar(50),
		element nvarchar(50),
		quantity int,
		volume float,
		concrete_grade nvarchar(50),
		Factory nvarchar(50) default 'SPECIAL MOULD',
		remarks nvarchar(100),
		data_in_date dateTIME default getdate()
		)

IF OBJECT_ID('bronze.carousal_fac','U') is not null
	drop table bronze.carousal_fac

	create table bronze.carousal_fac (
		sr_no int  identity(1,1) primary key ,
		prd_date date,
		element_type nvarchar(50),
		element nvarchar(50),
		quantity int,
		volume float,
		concrete_grade nvarchar(50),
		Factory nvarchar(50) default 'CAROUSAL',
		remarks nvarchar(100),
		data_in_date dateTIME default getdate()
		)


IF OBJECT_ID('bronze.log_recieve','U') is not null
	drop table bronze.log_recieve

	create table bronze.log_recieve (
		sr_no int  identity(1,1) primary key ,
		prd_date date,
		element_type nvarchar(50),
		element nvarchar(50),
		quantity int,
		volume float,
		concrete_grade nvarchar(50),
		recieve_date datetime,
		Factory nvarchar(50) default 'CAROUSAL',
		remarks nvarchar(100),
		data_in_date dateTIME default getdate()
		)

IF OBJECT_ID('bronze.log_issue','U') is not null
	drop table bronze.log_issue

	create table bronze.log_issue (
		sr_no int  identity(1,1) primary key ,
		prd_date date,
		element_type nvarchar(50),
		element nvarchar(50),
		quantity int,
		recieve_date datetime,
		issue_date datetime,
		Factory nvarchar(50) default 'CAROUSAL',
		remarks nvarchar(100),
		data_in_date dateTIME default getdate()
		)
select * from bronze.log_issue



select * from bronze.user_tab


INSERT INTO bronze.user_tab(
				userid,first_name,last_name,user_pass,Factory) VALUES(12347,'ASHISH','Yadav',12347,'CAROUSAL')

				SELECT * FROM bronze.user_tab

				SELECT * FROM bronze.user_tab
				select * from bronze.carousal_fac
				select * from bronze.pod_fac
				select * from bronze.special_fac