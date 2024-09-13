CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(140) NOT NULL,
    last_name VARCHAR(140) NOT NULL,
    email VARCHAR(140) NOT NULL
);

SELECT * FROM contacts

CREATE TABLE subcategory (
    subcategory_id VARCHAR(140) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(140) NOT NULL
);

SELECT * FROM subcategory

CREATE TABLE category (
    category_id VARCHAR(140) PRIMARY KEY NOT NULL,
    category VARCHAR(140) NOT NULL
);

SELECT * FROM category

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(140) NOT NULL,
    description VARCHAR(140) NOT NULL,
    goal VARCHAR(140) NOT NULL,
    pledged VARCHAR(140) NOT NULL,
    outcome VARCHAR(140) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(140) NOT NULL,
    currency VARCHAR(140) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(140) NOT NULL,
    subcategory_id VARCHAR(140) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign