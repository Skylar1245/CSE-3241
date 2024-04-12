--
-- File generated with SQLiteStudio v3.4.4 on Fri Apr 12 11:10:47 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Community_Member
CREATE TABLE IF NOT EXISTS Community_Member (
    user_id       INTEGER PRIMARY KEY,
    date_started  TEXT,
    distance      INTEGER,
    member_status TEXT,
    FOREIGN KEY (
        user_id
    )
    REFERENCES PERSON (id_no) 
);


-- Table: Drone
CREATE TABLE IF NOT EXISTS Drone (
    serial_no  INTEGER PRIMARY KEY,
    name       TEXT,
    weight_cap TEXT,
    dist_auto  TEXT,
    max_speed  INTEGER,
    status     TEXT,
    FOREIGN KEY (
        serial_no
    )
    REFERENCES INVENTORY (serial_no) 
);


-- Table: Employee
CREATE TABLE IF NOT EXISTS Employee (
    emp_id    INTEGER PRIMARY KEY,
    skill     TEXT,
    salary    INTEGER,
    warehouse TEXT,
    FOREIGN KEY (
        emp_id
    )
    REFERENCES PERSON (id_no),
    FOREIGN KEY (
        warehouse
    )
    REFERENCES WAREHOUSE (warehouse_address) 
);


-- Table: Equipment
CREATE TABLE IF NOT EXISTS Equipment (
    serial_no             INTEGER PRIMARY KEY,
    equipment_type        TEXT,
    equipment_description TEXT,
    equipment_weight      TEXT,
    equipment_length      INTEGER,
    equipment_width       INTEGER,
    equipment_height      INTEGER,
    quantity              INTEGER,
    FOREIGN KEY (
        serial_no
    )
    REFERENCES INVENTORY (serial_no) 
);


-- Table: Inventory
CREATE TABLE IF NOT EXISTS Inventory (
    serial_no          INTEGER PRIMARY KEY,
    model_no           INTEGER,
    inventory_status   TEXT,
    inventory_year     INTEGER,
    warranty_exp       TEXT,
    manufacturer       TEXT,
    inventory_location TEXT,
    FOREIGN KEY (
        manufacturer
    )
    REFERENCES MANUFACTURER (cname),
    FOREIGN KEY (
        inventory_location
    )
    REFERENCES WAREHOUSE (warehouse_address) 
);


-- Table: Manufacturer
CREATE TABLE IF NOT EXISTS Manufacturer (
    cname                TEXT PRIMARY KEY,
    city                 TEXT,
    phone                TEXT CHECK (LENGTH(phone) = 10),
    manufacturer_address TEXT
);


-- Table: Orders
CREATE TABLE IF NOT EXISTS Orders (
    order_no       INTEGER PRIMARY KEY,
    item           INTEGER,
    quantity       INTEGER,
    order_value    INTEGER,
    estimated_date TEXT,
    actual_date    TEXT,
    FOREIGN KEY (
        item
    )
    REFERENCES EQUIPMENT (serial_no) 
);


-- Table: Person
CREATE TABLE IF NOT EXISTS Person (
    id_no          INTEGER PRIMARY KEY,
    phone          TEXT    CHECK (LENGTH(phone) = 10),
    fname          TEXT,
    lname          TEXT,
    person_address TEXT,
    email          TEXT
);


-- Table: Rental
CREATE TABLE IF NOT EXISTS Rental (
    rental_no INTEGER PRIMARY KEY,
    member    INTEGER,
    pdrone    INTEGER,
    ddrone    INTEGER,
    quantity  INTEGER,
    checkout  TEXT,
    dep_date  TEXT,
    est_arr   TEXT,
    FOREIGN KEY (
        member
    )
    REFERENCES COMMUNITY_MEMBER (user_id),
    FOREIGN KEY (
        pdrone
    )
    REFERENCES DRONE (serial_no),
    FOREIGN KEY (
        ddrone
    )
    REFERENCES DRONE (serial_no) 
);


-- Table: RentedItems
CREATE TABLE IF NOT EXISTS RentedItems (
    rental_no INTEGER,
    item      INTEGER,
    PRIMARY KEY (
        rental_no,
        item
    ),
    FOREIGN KEY (
        rental_no
    )
    REFERENCES Rental (rental_no),
    FOREIGN KEY (
        item
    )
    REFERENCES EQUIPMENT (serial_no) 
);


-- Table: Repair
CREATE TABLE IF NOT EXISTS Repair (
    repair_no          INTEGER PRIMARY KEY,
    item               INTEGER,
    repair_description TEXT,
    est_time           TEXT,
    employee           INTEGER,
    FOREIGN KEY (
        item
    )
    REFERENCES DRONE (serial_no),
    FOREIGN KEY (
        employee
    )
    REFERENCES EMPLOYEE (emp_id) 
);


-- Table: Review
CREATE TABLE IF NOT EXISTS Review (
    review_no INTEGER PRIMARY KEY,
    comment   TEXT,
    rating    INTEGER,
    member    INTEGER,
    item      INTEGER,
    FOREIGN KEY (
        member
    )
    REFERENCES COMMUNITY_MEMBER (user_id),
    FOREIGN KEY (
        item
    )
    REFERENCES EQUIPMENT (serial_no) 
);


-- Table: Warehouse
CREATE TABLE IF NOT EXISTS Warehouse (
    warehouse_address TEXT    PRIMARY KEY,
    city              TEXT,
    phone             TEXT    CHECK (LENGTH(phone) = 10),
    manager           INTEGER,
    storage_capacity  INTEGER,
    drone_capacity    INTEGER
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
