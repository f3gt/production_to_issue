use prod_data


IF OBJECT_ID('silver.pod_fac','U') is not null
	drop table silver.pod_fac

create table silver.pod_fac (
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
	userid nvarchar(20) foreign key references silver.user_tab(userid)
	)

IF OBJECT_ID('silver.hcs_fac','U') is not null
	drop table silver.hcs_fac

	create table silver.hcs_fac (
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

IF OBJECT_ID('silver.special_fac','U') is not null
	drop table silver.special_fac

	create table silver.special_fac (
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

IF OBJECT_ID('silver.carousal_fac','U') is not null
	drop table silver.carousal_fac

	create table silver.carousal_fac (
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


IF OBJECT_ID('silver.log_recieve','U') is not null
	drop table silver.log_recieve

	create table silver.log_recieve (
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

IF OBJECT_ID('silver.log_issue','U') is not null
	drop table silver.log_issue

	create table silver.log_issue (
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