CREATE TABLE stores (
	store_id 		INT 		NOT NULL,
	area_code 		INT 		NOT NULL,
	manager 		VARCHAR(20),
	population_grps 	VARCHAR(40),
	state_id		INT,
	type_id			INT,
      CONSTRAINT stores_pk PRIMARY KEY (store_id)
);

CREATE TABLE planned_sales (
	date			DATE		NOT NULL,
	item_id			INT		NOT NULL,
	store_nbr		INT		NOT NULL,
	sales_plan_dollar	DECIMAL(10,2),
	CONSTRAINT planned_sales_pk PRIMARY KEY (date,item_id,store_nbr)
);

CREATE TABLE sales (
	sales_date		DATE		NOT NULL,
	item_id			INT		NOT NULL,
	store_nbr		INT		NOT NULL,
	reg_sls_dlr		DECIMAL(10,2),
	pml_sls_dlr		DECIMAL(10,2),
	cle_sls_dlr		DECIMAL(10,2),
	tot_sls_dlr		DECIMAL(10,2),
	CONSTRAINT sales_pk PRIMARY KEY (sales_date,item_id,store_nbr)
);

CREATE TABLE region_south (
	store_nbr		BIGINT	NOT NULL,
	store_category		VARCHAR(40),
	market			VARCHAR(40),
	manager			VARCHAR(50),
	demo_desc		VARCHAR(50),
	state			CHAR(2),
	CONSTRAINT region_south_pk PRIMARY KEY (store_nbr)
);

CREATE TABLE transactions (
	cur_trn_date		DATE		NOT NULL,
	item_id			INT		NOT NULL,
	store_nbr		BIGINT	NOT NULL,
	reg_sls_dlr		DECIMAL(10,2),
	reg_sls_qty 		DECIMAL(10,2),
	pml_sls_dlr		DECIMAL(10,2),
	pml_sls_qty		DECIMAL(10,2),
	cle_sls_dlr		DECIMAL(10,2),
	cle_sls_qty		DECIMAL(10,2),
	pln_sls_dlr		DECIMAL(10,2),
	CONSTRAINT transactions_pk PRIMARY KEY (cur_trn_date,item_id,store_nbr)
);	

CREATE TABLE assortment (
	item			INT 		NOT NULL,
	item_text		VARCHAR(50),
	colors			VARCHAR(50),
	item_class		INT,
	item_size		INT,
	item_style		VARCHAR(20),
	CONSTRAINT assortment_pk PRIMARY KEY (item)
);

CREATE TABLE departments (
	department_nbr		INT		NOT NULL,
	desc			VARCHAR(50),
	department_division	INT,
	division_text		VARCHAR(30),
	CONSTRAINT departments_pk PRIMARY KEY (department_nbr)
);

CREATE TABLE dep_of_class (
	item_class		INT		NOT NULL,
	department_nbr		INT		NOT NULL,
	CONSTRAINT dep_of_class_pk PRIMARY KEY (department_nbr,item_class)
);
