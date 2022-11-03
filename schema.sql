-- Creating tables for crowdfunding_db
CREATE TABLE category (
    category_id     VARCHAR(10)     PRIMARY KEY   NOT NULL,
    category_name   VARCHAR(50)   NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id  VARCHAR(10) PRIMARY KEY  NOT NULL,
    subcatory_name  VARCHAR(50)     NOT NULL
);

CREATE TABLE contacts (
    contact_id      INT  PRIMARY KEY  NOT NULL,
    first_name      VARCHAR(50)   NOT NULL,
    last_name       VARCHAR(50)   NOT NULL,
    email           VARCHAR(100)   NOT NULL
);

CREATE TABLE campaign(
    cf_id   INT PRIMARY KEY    NOT NULL,
    contact_id  INT     NOT NULL,
    company_name    VARCHAR(100)   NOT NULL,
    description     text       NOT NULL,
    goal        numeric(10,2)   NOT NULL,
    pledged     numeric(10,2)   NOT NULL,
    outcome     VARCHAR(50)   NOT NULL,
    backers_count INT      NOT NULL,
    country     VARCHAR(10)   NOT NULL,
    currency    VARCHAR(10)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id     VARCHAR(10)   NOT NULL,
    subcategory_id  VARCHAR(10)   NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

CREATE TABLE backer (
    backer_id VARCHAR(5) PRIMARY KEY NOT NULL,    
	cf_id INT NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name  varchar(50) NOT NULL,
    email      varchar(100) NOT NULL,
    FOREIGN KEY (cf_id) REFERENCES campaign (cf_id)    
);

