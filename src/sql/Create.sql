CREATE TABLE WAREHOUSE (
    warehouse_address TEXT PRIMARY KEY,
    city TEXT,
    phone TEXT CHECK(LENGTH(phone) = 10),
    manager INTEGER,
    storage_capacity INTEGER,
    drone_capacity INTEGER
);

CREATE TABLE PERSON (
    id_no INTEGER PRIMARY KEY,
    phone TEXT CHECK(LENGTH(phone) = 10),
    fname TEXT,
    lname TEXT,
    person_address TEXT,
    email TEXT
);

CREATE TABLE EMPLOYEE (
    emp_id INTEGER PRIMARY KEY,
    skill TEXT,
    salary INTEGER,
    warehouse TEXT,
    FOREIGN KEY (emp_id) REFERENCES PERSON(id_no),
    FOREIGN KEY (warehouse) REFERENCES WAREHOUSE(warehouse_address)
);

CREATE TABLE COMMUNITY_MEMBER (
    user_id INTEGER PRIMARY KEY,
    date_started TEXT,
    distance INTEGER,
    member_status TEXT,
    FOREIGN KEY (user_id) REFERENCES PERSON(id_no)
);

CREATE TABLE INVENTORY (
    serial_no INTEGER PRIMARY KEY,
    model_no INTEGER,
    inventory_status TEXT,
    inventory_year INTEGER,
    warranty_exp TEXT,
    manufacturer TEXT,
    inventory_location TEXT,
    FOREIGN KEY (manufacturer) REFERENCES MANUFACTURER(cname)
);

CREATE TABLE DRONE (
    serial_no INTEGER PRIMARY KEY,
    drone_name TEXT,
    weight_cap TEXT,
    dist_auto TEXT,
    max_speed INTEGER,
    FOREIGN KEY (serial_no) REFERENCES INVENTORY(serial_no)
);

CREATE TABLE EQUIPMENT (
    serial_no INTEGER PRIMARY KEY,
    equipment_type TEXT,
    equipment_description TEXT,
    equipment_weight TEXT,
    equipment_length INTEGER,
    equipment_width INTEGER,
    equipment_height INTEGER,
    quantity INTEGER,
    FOREIGN KEY (serial_no) REFERENCES INVENTORY(serial_no)
);

CREATE TABLE MANUFACTURER (
    cname TEXT PRIMARY KEY,
    city TEXT,
    phone TEXT CHECK(LENGTH(phone) = 10),
    manufacturer_address TEXT
);
CREATE TABLE PLACED_ORDER (
    order_no INTEGER PRIMARY KEY,
    item TEXT,
    quantity INTEGER,
    order_value INTEGER,
    estimated_date TEXT,
    actual_date TEXT,
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE RENTAL (
    rental_no INTEGER PRIMARY KEY,
    member INTEGER,
    drone INTEGER,
    item INTEGER,
    quantity INTEGER,
    checkout TEXT,
    FOREIGN KEY (member) REFERENCES COMMUNITY_MEMBER(user_id),
    FOREIGN KEY (drone) REFERENCES DRONE(serial_no),
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE REVIEW (
    review_no INTEGER PRIMARY KEY,
    comment TEXT,
    rating INTEGER,
    member TEXT,
    item TEXT,
    FOREIGN KEY (member) REFERENCES COMMUNITY_MEMBER(user_id),
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE REPAIR (
    repair_no INTEGER PRIMARY KEY,
    item TEXT,
    repair_description TEXT,
    est_time TEXT,
    employee TEXT,
    FOREIGN KEY (item) REFERENCES DRONE(serial_no),
    FOREIGN KEY (employee) REFERENCES EMPLOYEE(emp_id)
);
