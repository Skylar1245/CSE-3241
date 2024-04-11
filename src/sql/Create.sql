CREATE TABLE Warehouse (
    warehouse_address TEXT PRIMARY KEY,
    city TEXT,
    phone TEXT CHECK(LENGTH(phone) = 10),
    manager INTEGER,
    storage_capacity INTEGER,
    drone_capacity INTEGER
);

CREATE TABLE Person (
    id_no INTEGER PRIMARY KEY,
    phone TEXT CHECK(LENGTH(phone) = 10),
    fname TEXT,
    lname TEXT,
    person_address TEXT,
    email TEXT
);

CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    skill TEXT,
    salary INTEGER,
    warehouse TEXT,
    FOREIGN KEY (emp_id) REFERENCES PERSON(id_no),
    FOREIGN KEY (warehouse) REFERENCES WAREHOUSE(warehouse_address)
);

CREATE TABLE Community_Member (
    user_id INTEGER PRIMARY KEY,
    date_started TEXT,
    distance INTEGER,
    member_status TEXT,
    FOREIGN KEY (user_id) REFERENCES PERSON(id_no)
);

CREATE TABLE Inventory (
    serial_no INTEGER PRIMARY KEY,
    model_no INTEGER,
    inventory_status TEXT,
    inventory_year INTEGER,
    warranty_exp TEXT,
    manufacturer TEXT,
    inventory_location TEXT,
    inventory_name TEXT,
    FOREIGN KEY (manufacturer) REFERENCES MANUFACTURER(cname) FOREIGN KEY (inventory_location) REFERENCES WAREHOUSE(warehouse_address)
);

CREATE TABLE Drone (
    serial_no INTEGER PRIMARY KEY,
    weight_cap TEXT,
    dist_auto TEXT,
    max_speed INTEGER,
    FOREIGN KEY (serial_no) REFERENCES INVENTORY(serial_no)
);

CREATE TABLE Equipment (
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

CREATE TABLE Manufacturer (
    cname TEXT PRIMARY KEY,
    city TEXT,
    phone TEXT CHECK(LENGTH(phone) = 10),
    manufacturer_address TEXT
);

CREATE TABLE Orders (
    order_no INTEGER PRIMARY KEY,
    item INTEGER,
    quantity INTEGER,
    order_value INTEGER,
    estimated_date TEXT,
    actual_date TEXT,
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE Rental (
    rental_no INTEGER PRIMARY KEY,
    member INTEGER,
    pdrone INTEGER,
    ddrone INTEGER,
    item INTEGER,
    quantity INTEGER,
    checkout TEXT,
    dep_date TEXT,
    est_arr TEXT,
    FOREIGN KEY (member) REFERENCES COMMUNITY_MEMBER(user_id),
    FOREIGN KEY (pdrone) REFERENCES DRONE(serial_no),
    FOREIGN KEY (ddrone) REFERENCES DRONE(serial_no),
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE Review (
    review_no INTEGER PRIMARY KEY,
    comment TEXT,
    rating INTEGER,
    member INTEGER,
    item INTEGER,
    FOREIGN KEY (member) REFERENCES COMMUNITY_MEMBER(user_id),
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);

CREATE TABLE Repair (
    repair_no INTEGER PRIMARY KEY,
    item INTEGER,
    repair_description TEXT,
    est_time TEXT,
    employee INTEGER,
    FOREIGN KEY (item) REFERENCES DRONE(serial_no),
    FOREIGN KEY (employee) REFERENCES EMPLOYEE(emp_id)
);

CREATE TABLE RentedItems (
    rental_no INTEGER,
    item INTEGER,
    PRIMARY KEY (rental_no, item),
    FOREIGN KEY (rental_no) REFERENCES Rental(rental_no),
    FOREIGN KEY (item) REFERENCES EQUIPMENT(serial_no)
);