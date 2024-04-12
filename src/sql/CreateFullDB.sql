--
-- File generated with SQLiteStudio v3.4.4 on Fri Apr 12 11:12:00 2024
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

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 1829,
                                 '27-Sep-21',
                                 53,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 2164,
                                 '21-Nov-04',
                                 70,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 2505,
                                 '10-Jan-06',
                                 2,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 2727,
                                 '4-Dec-23',
                                 50,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 2810,
                                 '8-Mar-04',
                                 15,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 2821,
                                 '16-Sep-03',
                                 62,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 4983,
                                 '1-Feb-25',
                                 93,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 5771,
                                 '27-Mar-19',
                                 23,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 6020,
                                 '11-Mar-06',
                                 56,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 6630,
                                 '4-Jun-15',
                                 59,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 6794,
                                 '8-Jan-09',
                                 43,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 6975,
                                 '25-Oct-00',
                                 55,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 7087,
                                 '16-Aug-12',
                                 85,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 7594,
                                 '15-Jul-04',
                                 27,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 7600,
                                 '12-May-07',
                                 37,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 7810,
                                 '6-Mar-05',
                                 17,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 7968,
                                 '20-Feb-12',
                                 62,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 8206,
                                 '2-May-12',
                                 96,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 9784,
                                 '14-May-05',
                                 99,
                                 'active'
                             );

INSERT INTO Community_Member (
                                 user_id,
                                 date_started,
                                 distance,
                                 member_status
                             )
                             VALUES (
                                 9888,
                                 '5-Feb-17',
                                 98,
                                 'active'
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

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      158238,
                      'A',
                      '75',
                      '25',
                      36,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      221915,
                      'B',
                      '45',
                      '18',
                      33,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      289774,
                      'C',
                      '27',
                      '17',
                      48,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      337409,
                      'D',
                      '79',
                      '21',
                      40,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      360798,
                      'E',
                      '70',
                      '13',
                      67,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      361271,
                      'F',
                      '66',
                      '11',
                      40,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      362722,
                      'G',
                      '80',
                      '19',
                      62,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      397884,
                      'H',
                      '31',
                      '17',
                      47,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      405242,
                      'I',
                      '5',
                      '14',
                      27,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      438157,
                      'J',
                      '34',
                      '14',
                      33,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      485234,
                      'K',
                      '67',
                      '10',
                      46,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      537605,
                      'L',
                      '69',
                      '28',
                      69,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      562336,
                      'M',
                      '18',
                      '14',
                      52,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      575629,
                      'N',
                      '81',
                      '27',
                      59,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      681299,
                      'O',
                      '18',
                      '10',
                      24,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      688100,
                      'P',
                      '83',
                      '26',
                      61,
                      'active'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      752591,
                      'Q',
                      '37',
                      '17',
                      69,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      840678,
                      'R',
                      '31',
                      '20',
                      51,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      849481,
                      'S',
                      '9',
                      '16',
                      49,
                      'inactive'
                  );

INSERT INTO Drone (
                      serial_no,
                      name,
                      weight_cap,
                      dist_auto,
                      max_speed,
                      status
                  )
                  VALUES (
                      938085,
                      'T',
                      '13',
                      '29',
                      59,
                      'active'
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

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         1634,
                         'Documentation',
                         87249,
                         '654-258 Nunc Av.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         2178,
                         'Multitasking',
                         62190,
                         'Ap #529-5778 A Road'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         2792,
                         'Stamina',
                         119136,
                         '8511 Mollis Road'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         3731,
                         'Punctuality',
                         95048,
                         '842-1503 Molestie Avenue'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         3996,
                         'Accuracy',
                         103360,
                         'Ap #647-1432 At Ave'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         4137,
                         'Attention-to-detail',
                         63763,
                         'P.O. Box 810 6352 Semper Avenue'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         4760,
                         'Communication',
                         106898,
                         'Ap #400-6347 Ultricies Street'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         5125,
                         'Adaptability',
                         69221,
                         '773-1631 Gravida Road'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         5376,
                         'Customer-service',
                         124982,
                         'Ap #672-2383 Praesent Street'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         6463,
                         'Safety-conscious',
                         104980,
                         '395-4478 Egestas Rd.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         6592,
                         'GPS',
                         88414,
                         'Ap #354-9665 Neque. Road'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         6641,
                         'Safety',
                         91193,
                         'Ap #567-6935 Orci Av.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         7078,
                         'Inventory-management',
                         89546,
                         '382-9072 Euismod Rd.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         7388,
                         'Communication',
                         93088,
                         '6614 Sodales. St.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         7509,
                         'Reliability',
                         116028,
                         '126-5311 Vitae Ave'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         8875,
                         'GPS',
                         11774,
                         'Ap #355-7867 Luctus Av.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         9002,
                         'Reliability',
                         61692,
                         '467-406 Eget Rd.'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         9277,
                         'Patience',
                         77238,
                         '8015 Donec Street'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         9772,
                         'Vehicle-maintenance',
                         121307,
                         '1017 Felis. Street'
                     );

INSERT INTO Employee (
                         emp_id,
                         skill,
                         salary,
                         warehouse
                     )
                     VALUES (
                         9998,
                         'Safety',
                         134056,
                         '784-201 Nullam Avenue'
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

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          101042,
                          'Router',
                          'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales',
                          '56',
                          57,
                          14,
                          9,
                          199
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          125073,
                          'Transmitter',
                          'fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut',
                          '88',
                          35,
                          16,
                          1,
                          62
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          149854,
                          'Printer',
                          'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci',
                          '98',
                          94,
                          6,
                          6,
                          176
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          210544,
                          'Receiver',
                          'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam',
                          '19',
                          4,
                          5,
                          9,
                          181
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          282897,
                          'GPS',
                          'justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis.',
                          '26',
                          94,
                          9,
                          6,
                          184
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          504064,
                          'Printer',
                          'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam',
                          '67',
                          65,
                          5,
                          2,
                          35
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          504073,
                          'Charger',
                          'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.',
                          '46',
                          68,
                          14,
                          3,
                          103
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          518809,
                          'Receiver',
                          'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,',
                          '38',
                          34,
                          6,
                          9,
                          75
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          538085,
                          'Printer',
                          'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi',
                          '66',
                          18,
                          11,
                          2,
                          85
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          549540,
                          'Router',
                          'amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,',
                          '10',
                          76,
                          15,
                          3,
                          108
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          682571,
                          'Battery',
                          'massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,',
                          '46',
                          25,
                          3,
                          10,
                          20
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          695517,
                          'Battery',
                          'mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem,',
                          '34',
                          68,
                          2,
                          6,
                          151
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          740249,
                          'Receiver',
                          'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed',
                          '38',
                          51,
                          18,
                          4,
                          73
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          806507,
                          'Computer',
                          'magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis',
                          '74',
                          7,
                          10,
                          2,
                          148
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          814386,
                          'Camera',
                          'magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus',
                          '22',
                          81,
                          4,
                          6,
                          170
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          817019,
                          'Charger',
                          'ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus',
                          '78',
                          7,
                          18,
                          9,
                          107
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          918979,
                          'Battery',
                          'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac',
                          '39',
                          38,
                          7,
                          3,
                          98
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          944418,
                          'Battery',
                          'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac',
                          '23',
                          12,
                          17,
                          11,
                          6
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          966552,
                          'Printer',
                          'nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin',
                          '53',
                          23,
                          5,
                          8,
                          128
                      );

INSERT INTO Equipment (
                          serial_no,
                          equipment_type,
                          equipment_description,
                          equipment_weight,
                          equipment_length,
                          equipment_width,
                          equipment_height,
                          quantity
                      )
                      VALUES (
                          984720,
                          'Receiver',
                          'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus',
                          '39',
                          49,
                          14,
                          7,
                          50
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

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          101042,
                          687,
                          'FALSE',
                          2023,
                          '29-Jun-23',
                          'Curabitur Egestas Inc.',
                          '126-5311 Vitae Ave'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          125073,
                          195,
                          'TRUE',
                          2024,
                          '20-Dec-23',
                          'Vel Convallis LLP',
                          '8511 Mollis Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          149854,
                          973,
                          'FALSE',
                          2023,
                          '5-Jul-23',
                          'Curabitur Egestas Inc.',
                          '467-406 Eget Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          158238,
                          102,
                          'Out',
                          2000,
                          '18-Oct-24',
                          'Elit Corporation',
                          '1017 Felis. Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          210544,
                          501,
                          'FALSE',
                          2024,
                          '5-Oct-23',
                          'Nisl Quisque Fringilla Incorporated',
                          '395-4478 Egestas Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          221915,
                          505,
                          'Lost',
                          2009,
                          '14-Mar-25',
                          'Ligula Elit Pretium Limited',
                          'Ap #400-6347 Ultricies Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          282897,
                          135,
                          'TRUE',
                          2023,
                          '31-Oct-23',
                          'Eget Magna Corporation',
                          'Ap #354-9665 Neque. Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          289774,
                          344,
                          'Pending',
                          2017,
                          '18-Jul-24',
                          'Rutrum Foundation',
                          'Ap #647-1432 At Ave'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          337409,
                          194,
                          'Lost',
                          2024,
                          '5-Oct-27',
                          'Ullamcorper Eu Industries',
                          '382-9072 Euismod Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          360798,
                          151,
                          'for',
                          2008,
                          '20-Mar-24',
                          'Ac Mattis Velit LLP',
                          'Ap #647-1432 At Ave'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          361271,
                          422,
                          'pickup',
                          2011,
                          '13-Aug-24',
                          'Lorem Luctus Ut Foundation',
                          '773-1631 Gravida Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          362722,
                          576,
                          'Pending',
                          2006,
                          '7-Sep-24',
                          'Tellus Institute',
                          'Ap #355-7867 Luctus Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          397884,
                          162,
                          'Pending',
                          2005,
                          '16-Jun-23',
                          'Etiam LLC',
                          'Ap #355-7867 Luctus Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          405242,
                          634,
                          'Discontinued',
                          2012,
                          '3-Mar-25',
                          'Lorem Luctus Ut Foundation',
                          'Ap #400-6347 Ultricies Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          438157,
                          374,
                          'restock',
                          2001,
                          '24-Jun-27',
                          'Lorem Luctus Ut Foundation',
                          '773-1631 Gravida Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          485234,
                          849,
                          'Backordered',
                          2007,
                          '18-Aug-23',
                          'Suspendisse Tristique Neque Limited',
                          '382-9072 Euismod Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          504064,
                          763,
                          'TRUE',
                          2025,
                          '18-Jan-24',
                          'Ligula Aenean Ltd',
                          '842-1503 Molestie Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          504073,
                          204,
                          'TRUE',
                          2024,
                          '9-Aug-24',
                          'Curabitur Egestas Inc.',
                          '126-5311 Vitae Ave'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          518809,
                          870,
                          'FALSE',
                          2024,
                          '7-Jul-23',
                          'Nisl Quisque Fringilla Incorporated',
                          '6614 Sodales. St.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          537605,
                          111,
                          'Stolen',
                          2011,
                          '21-Oct-24',
                          'Lorem Luctus Ut Foundation',
                          '784-201 Nullam Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          538085,
                          158,
                          'FALSE',
                          2023,
                          '13-Jun-23',
                          'Ligula Aenean Ltd',
                          'Ap #354-9665 Neque. Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          549540,
                          816,
                          'FALSE',
                          2023,
                          '15-Dec-23',
                          'Proin Vel Associates',
                          '395-4478 Egestas Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          562336,
                          807,
                          'for',
                          2017,
                          '29-Sep-26',
                          'Lorem Luctus Ut Foundation',
                          'Ap #567-6935 Orci Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          575629,
                          413,
                          'Ready',
                          2005,
                          '10-Sep-27',
                          'Lorem Luctus Ut Foundation',
                          'P.O. Box 810 6352 Semper Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          681299,
                          674,
                          'Defective',
                          2005,
                          '10-Jan-27',
                          'Elit Corporation',
                          '1017 Felis. Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          682571,
                          408,
                          'FALSE',
                          2023,
                          '6-Aug-23',
                          'Orci Ltd',
                          'Ap #529-5778 A Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          688100,
                          339,
                          'Discontinued',
                          2010,
                          '11-Jul-26',
                          'Lorem Luctus Ut Foundation',
                          'P.O. Box 810 6352 Semper Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          695517,
                          318,
                          'TRUE',
                          2024,
                          '11-Dec-23',
                          'Curabitur Egestas Inc.',
                          '654-258 Nunc Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          740249,
                          521,
                          'TRUE',
                          2024,
                          '10-Apr-24',
                          'Curabitur Egestas Inc.',
                          '6614 Sodales. St.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          752591,
                          802,
                          'restock',
                          2004,
                          '13-Jul-26',
                          'Lorem Luctus Ut Foundation',
                          '784-201 Nullam Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          806507,
                          294,
                          'TRUE',
                          2024,
                          '31-Oct-23',
                          'Eget Magna Corporation',
                          'Ap #529-5778 A Road'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          814386,
                          809,
                          'TRUE',
                          2024,
                          '24-Jun-24',
                          'Elit Corporation',
                          '8015 Donec Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          817019,
                          548,
                          'FALSE',
                          2024,
                          '26-Feb-24',
                          'Proin Vel Associates',
                          '842-1503 Molestie Avenue'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          840678,
                          528,
                          'Reserved',
                          2020,
                          '3-Aug-23',
                          'Sodales Elit Limited',
                          'Ap #672-2383 Praesent Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          849481,
                          713,
                          'Backordered',
                          2004,
                          '8-May-25',
                          'Lorem Luctus Ut Foundation',
                          'Ap #567-6935 Orci Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          918979,
                          266,
                          'TRUE',
                          2023,
                          '29-Feb-24',
                          'Curabitur Egestas Inc.',
                          '654-258 Nunc Av.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          938085,
                          703,
                          'of',
                          2012,
                          '7-Feb-27',
                          'Commodo Hendrerit Institute',
                          'Ap #672-2383 Praesent Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          944418,
                          957,
                          'TRUE',
                          2024,
                          '17-May-24',
                          'Curabitur Egestas Inc.',
                          '467-406 Eget Rd.'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          966552,
                          261,
                          'FALSE',
                          2024,
                          '15-May-24',
                          'Elit Corporation',
                          '8015 Donec Street'
                      );

INSERT INTO Inventory (
                          serial_no,
                          model_no,
                          inventory_status,
                          inventory_year,
                          warranty_exp,
                          manufacturer,
                          inventory_location
                      )
                      VALUES (
                          984720,
                          804,
                          'FALSE',
                          2024,
                          '12-Apr-24',
                          'Iaculis Aliquet Corp.',
                          '8511 Mollis Road'
                      );


-- Table: Manufacturer
CREATE TABLE IF NOT EXISTS Manufacturer (
    cname                TEXT PRIMARY KEY,
    city                 TEXT,
    phone                TEXT CHECK (LENGTH(phone) = 10),
    manufacturer_address TEXT
);

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Commodo Hendrerit Institute',
                             'Lexington',
                             '8442276351',
                             'P.O. Box 683, 3452 Eget St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Sodales Elit Limited',
                             'Pike Creek',
                             '8483314205',
                             'P.O. Box 132, 9400 Vulputate Ave'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Rutrum Foundation',
                             'Minneapolis',
                             '1452372161',
                             'Ap #934-2260 Donec St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Ac Mattis Velit LLP',
                             'West Valley City',
                             '4812024660',
                             'Ap #400-5289 Lobortis St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Ullamcorper Eu Industries',
                             'Akron',
                             '1070738166',
                             '114-2322 Curae St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Suspendisse Tristique Neque Limited',
                             'Savannah',
                             '2053278651',
                             'Ap #955-8266 Primis Ave'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Tellus Institute',
                             'Henderson',
                             '5555833588',
                             'Ap #271-543 Gravida Street'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Etiam LLC',
                             'Chesapeake',
                             '8437836953',
                             '681-7475 Adipiscing. Avenue'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Ligula Elit Pretium Limited',
                             'St. Petersburg',
                             '3253792586',
                             '708-330 Orci Ave'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Lorem Luctus Ut Foundation',
                             'Gulfport',
                             '2581455412',
                             '123-6280 Feugiat St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Pretium Et Rutrum Ltd',
                             'Birmingham',
                             '2695238356',
                             '4796 Nonummy St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Elit Corporation',
                             'Lewiston',
                             '8185875722',
                             'P.O. Box 149, 6900 Aliquet Rd.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Curabitur Egestas Inc.',
                             'Oklahoma City',
                             '3791742279',
                             '268-9420 Blandit St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Nisl Quisque Fringilla Incorporated',
                             'Essex',
                             '1275264253',
                             '4605 Ornare, St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Proin Vel Associates',
                             'Montgomery',
                             '2556545787',
                             'Ap #358-2385 Lobortis Street'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Ligula Aenean Ltd',
                             'Portland',
                             '7501834678',
                             'Ap #997-3845 Vehicula Ave'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Eget Magna Corporation',
                             'San Diego',
                             '7807727318',
                             'Ap #937-2168 Praesent St.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Orci Ltd',
                             'Denver',
                             '1633526505',
                             '693-7285 Ornare Rd.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Vel Convallis LLP',
                             'Little Rock',
                             '6846981969',
                             '8384 Aenean Av.'
                         );

INSERT INTO Manufacturer (
                             cname,
                             city,
                             phone,
                             manufacturer_address
                         )
                         VALUES (
                             'Iaculis Aliquet Corp.',
                             'Owensboro',
                             '3322375886',
                             '883-8767 Nam Rd.'
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

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       22,
                       966552,
                       2,
                       190,
                       '20-Mar-23',
                       '19-Oct-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       31,
                       210544,
                       6,
                       195,
                       '27-Nov-23',
                       '15-May-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       32,
                       918979,
                       5,
                       107,
                       '23-Dec-23',
                       '20-Feb-24'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       47,
                       682571,
                       7,
                       185,
                       '9-Sep-23',
                       '23-May-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       70,
                       101042,
                       10,
                       85,
                       '28-Aug-23',
                       '12-Jun-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       106,
                       817019,
                       10,
                       92,
                       '25-Nov-23',
                       '29-Dec-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       111,
                       210544,
                       6,
                       19,
                       '9-Dec-23',
                       '4-Jan-24'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       171,
                       814386,
                       2,
                       7,
                       '6-May-23',
                       '26-Feb-24'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       302,
                       918979,
                       5,
                       171,
                       '24-Apr-23',
                       '6-Jun-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       356,
                       282897,
                       7,
                       123,
                       '25-Apr-23',
                       '11-Nov-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       417,
                       101042,
                       3,
                       186,
                       '10-Sep-23',
                       '4-Jul-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       594,
                       282897,
                       4,
                       122,
                       '7-Feb-24',
                       '14-Aug-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       681,
                       210544,
                       10,
                       61,
                       '8-Dec-23',
                       '4-Jul-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       689,
                       817019,
                       4,
                       176,
                       '14-Mar-23',
                       '24-Oct-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       812,
                       918979,
                       5,
                       71,
                       '9-Dec-23',
                       '8-Sep-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       837,
                       817019,
                       8,
                       43,
                       '30-Dec-23',
                       '20-May-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       842,
                       282897,
                       9,
                       91,
                       '12-Oct-23',
                       '6-Jan-24'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       856,
                       101042,
                       4,
                       75,
                       '27-May-23',
                       '11-Oct-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       933,
                       101042,
                       4,
                       163,
                       '13-Jan-24',
                       '13-May-23'
                   );

INSERT INTO Orders (
                       order_no,
                       item,
                       quantity,
                       order_value,
                       estimated_date,
                       actual_date
                   )
                   VALUES (
                       948,
                       682571,
                       4,
                       68,
                       '12-Aug-23',
                       '30-May-23'
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

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       1245,
                       '1234567899',
                       'Skylar',
                       'stephens',
                       'road',
                       'email@gmail.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       1634,
                       '5379329665',
                       'Perry',
                       'Rosales',
                       '5175 Sagittis. Av.',
                       'malesuada.fames@aol.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       1829,
                       '9231264580',
                       'Emilio',
                       'Vega',
                       '8658 S. Foxrun Dr. Long Beach, NY 11561',
                       'darvictor@sambalrica.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2020,
                       '1000000000',
                       'Please',
                       'work',
                       'help me',
                       'pleasepleaseplase'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2164,
                       '3961089784',
                       'Ajay',
                       'Douglas',
                       '8348 10th St. Danvers, MA 01923',
                       'joker8a@lvovnikita.site'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2178,
                       '4516170317',
                       'Xanthus',
                       'Velez',
                       'Ap #247-2884 Mattis Rd.',
                       'tristique.neque.venenatis@outlook.net'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2505,
                       '6696478480',
                       'Shaun',
                       'Miles',
                       '966 Cedar Swamp Dr. Snellville, GA 30039',
                       'guzemchik@vxdsth.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2727,
                       '2457551203',
                       'Kyran',
                       'Molina',
                       '9039 S. Bay Meadows St. Montgomery Village MD 20886',
                       'n3spurhx@networks-site-real.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2792,
                       '9223514032',
                       'Plato',
                       'Ford',
                       'Ap #818-6337 Sagittis Rd.',
                       'ut.nulla@outlook.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2810,
                       '9871485946',
                       'Jayden',
                       'Lang',
                       '371 W. Hill Field Dr. Detroit MI 48205',
                       'garciperez21@jwpemail.top'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       2821,
                       '6787828145',
                       'Orlando',
                       'Kramer',
                       '143 Front Circle Clearwater, FL 33756',
                       'teddyfilder@cottononloverz.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       3731,
                       '1963521359',
                       'Benedict',
                       'Shaw',
                       'P.O. Box 699, 2644 Cursus. Av.',
                       'sed.eu@yahoo.edu'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       3996,
                       '6837225310',
                       'Cairo',
                       'Monroe',
                       'Ap #412-3620 Mollis Rd.',
                       'iaculis@outlook.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       4137,
                       '2354917181',
                       'Grace',
                       'Gibbs',
                       '417-7049 Cras Street',
                       'nunc@yahoo.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       4200,
                       '6969669696',
                       'haley',
                       'bonidie',
                       '4 street',
                       'slay@girl.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       4760,
                       '1719771806',
                       'Lewis',
                       'Livingston',
                       '397-5816 Praesent Ave',
                       'non.bibendum@aol.net'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       4983,
                       '5939638044',
                       'Jon',
                       'Boyd',
                       '7649 Arch Ave. Oakland Gardens, NY 11364',
                       'luzwild@hotmail.red'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       5125,
                       '1194330137',
                       'Chancellor',
                       'Sweeney',
                       'Ap #554-9179 Pede Av.',
                       'ac@outlook.ca'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       5376,
                       '7924648172',
                       'Leroy',
                       'Anthony',
                       '386-3766 Aliquam Street',
                       'enim.mi@google.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       5771,
                       '3396807625',
                       'Levi',
                       'Mejia',
                       '737 Jockey Hollow Dr. Charlotte NC 28205',
                       'rakso85@goreng.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6020,
                       '6231159318',
                       'Adele',
                       'Dotson',
                       '299 Deerfield St. Lake Jackson, TX 77566',
                       'teemo868@gpbemail.top'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6463,
                       '2910515627',
                       'Edward',
                       'Reed',
                       'Ap #708-9938 Scelerisque St.',
                       'lobortis.quis@hotmail.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6592,
                       '1554833882',
                       'Ebony',
                       'Hutchinson',
                       '913-3842 Sapien. Street',
                       'integer.tincidunt@hotmail.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6630,
                       '4820684689',
                       'Monty',
                       'Spence',
                       '627 Branch Drive Coventry, RI 02816',
                       'spock99@emailgap.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6641,
                       '1273807157',
                       'Ariel',
                       'Medina',
                       'P.O. Box 172, 7540 Enim, Road',
                       'sit@protonmail.edu'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6794,
                       '1195983728',
                       'Fannie',
                       'Juarez',
                       '7323 East Cedar Street Paterson, NJ 07501',
                       'grabielgamboa@hamiliton.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6900,
                       '4204204200',
                       'kate',
                       'goertz',
                       'town',
                       'slay1@girl.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       6975,
                       '3617427791',
                       'Lloyd',
                       'Cervantes',
                       '3 Colonial Street Bozeman, MT 59715',
                       'dogbreth@awemail.top'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7078,
                       '2931984255',
                       'Sean',
                       'Estes',
                       'Ap #886-367 Sollicitudin Avenue',
                       'et@google.net'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7087,
                       '1786850826',
                       'Keane',
                       'Morris',
                       '961 Princess St. Chesterfield VA 23832',
                       'jenlynndaigle@ybananaulx.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7388,
                       '2779771673',
                       'Deanna',
                       'Hester',
                       'Ap #173-5269 Dolor Road',
                       'augue.id.ante@hotmail.net'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7509,
                       '3694852853',
                       'Armand',
                       'Case',
                       'P.O. Box 492, 4923 Lorem Avenue',
                       'cursus.a@yahoo.org'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7594,
                       '5292580562',
                       'Niamh',
                       'Copeland',
                       '258 N. St Margarets Street El Paso, TX 79930',
                       'm4lik4@rackabzar.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7600,
                       '4739984188',
                       'Anish',
                       'Lee',
                       '220 Carriage Ave. Ooltewah TN 37363',
                       'ficken123@lylilupuzy.pl'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7810,
                       '3985511855',
                       'Abdirahman',
                       'Cameron',
                       '9650 Vale Ave. Romeoville, IL 60446',
                       'alexmeda@enloza.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       7968,
                       '9508101147',
                       'Delilah',
                       'Irwin',
                       '340 Peg Shop Dr. Hickory NC 28601',
                       'bigguy2@inspireaiguide.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       8206,
                       '8359095428',
                       'Natalie',
                       'Hoffman',
                       '16 Jennings Street Frankfort, KY 40601',
                       'gollini@troothshop.com'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       8875,
                       '7943769437',
                       'Eve',
                       'Ramos',
                       'P.O. Box 296, 3362 Fusce St.',
                       'vitae.posuere.at@outlook.ca'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9002,
                       '6474198288',
                       'Slade',
                       'Macdonald',
                       'Ap #297-3292 Lacus. Avenue',
                       'nulla@yahoo.edu'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9277,
                       '6888180526',
                       'Clayton',
                       'Vincent',
                       'Ap #942-935 Pede Ave',
                       'dis@icloud.net'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9772,
                       '4630035851',
                       'Echo',
                       'Yates',
                       '764 Semper Av.',
                       'massa.mauris.vestibulum@icloud.ca'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9784,
                       '8060205749',
                       'Ayesha',
                       'Schneider',
                       '4 Race Ave. Copperas Cove, TX 76522',
                       'winterborn@joeyjasil.cloud'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9888,
                       '2301827076',
                       'Amaan',
                       'Mccullough',
                       '178 West Howard St. Beachwood OH 44122',
                       'asakeeva86@mlusae.xyz'
                   );

INSERT INTO Person (
                       id_no,
                       phone,
                       fname,
                       lname,
                       person_address,
                       email
                   )
                   VALUES (
                       9998,
                       '1096321762',
                       'Mona',
                       'Beach',
                       '749-7566 Luctus Rd.',
                       'mauris.id@hotmail.com'
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

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       129,
                       2821,
                       289774,
                       289774,
                       3,
                       '2023-02-15',
                       '5/19/24',
                       '2023-02-20'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       132,
                       6020,
                       681299,
                       681299,
                       1,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-20'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       137,
                       7087,
                       158238,
                       158238,
                       1,
                       '2023-02-12',
                       '2023-02-15',
                       '2023-02-21'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       139,
                       7594,
                       485234,
                       485234,
                       6,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-17'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       281,
                       2810,
                       362722,
                       362722,
                       4,
                       '2023-02-10',
                       '2023-02-15',
                       '2023-02-11'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       289,
                       2505,
                       405242,
                       405242,
                       12,
                       '2023-02-16',
                       '2023-02-15',
                       '2023-02-22'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       461,
                       1829,
                       562336,
                       562336,
                       4,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-30'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       484,
                       2727,
                       938085,
                       938085,
                       3,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-19'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       490,
                       7810,
                       337409,
                       337409,
                       2,
                       '2023-02-20',
                       '2023-02-15',
                       '2023-02-31'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       601,
                       7600,
                       289774,
                       289774,
                       3,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-17'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       667,
                       6794,
                       537605,
                       537605,
                       5,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-16'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       703,
                       4983,
                       397884,
                       397884,
                       2,
                       '2023-02-25',
                       '2023-02-15',
                       '2023-02-28'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       737,
                       5771,
                       360798,
                       360798,
                       10,
                       '2023-02-25',
                       '2023-02-15',
                       '2023-02-29'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       757,
                       9888,
                       221915,
                       221915,
                       1,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-14'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       795,
                       2164,
                       221915,
                       221915,
                       1,
                       '2023-02-16',
                       '2023-02-15',
                       '2023-02-18'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       808,
                       9784,
                       849481,
                       849481,
                       4,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-27'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       872,
                       6630,
                       158238,
                       158238,
                       1,
                       '2023-02-17',
                       '2023-02-15',
                       '2023-02-20'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       928,
                       7968,
                       337409,
                       337409,
                       20,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-26'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       943,
                       8206,
                       688100,
                       688100,
                       1,
                       '2023-02-04',
                       '2023-02-15',
                       '2023-02-15'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       977,
                       6975,
                       938085,
                       938085,
                       2,
                       '2023-02-15',
                       '2023-02-15',
                       '2023-02-25'
                   );

INSERT INTO Rental (
                       rental_no,
                       member,
                       pdrone,
                       ddrone,
                       quantity,
                       checkout,
                       dep_date,
                       est_arr
                   )
                   VALUES (
                       999,
                       6975,
                       688100,
                       688100,
                       4,
                       '2023-02-06',
                       '2023-02-15',
                       '2023-02-15'
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

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            137,
                            814386
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            757,
                            966552
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            601,
                            101042
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            928,
                            504073
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            737,
                            149854
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            484,
                            944418
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            281,
                            695517
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            703,
                            918979
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            289,
                            740249
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            808,
                            518809
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            139,
                            210544
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            667,
                            549540
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            461,
                            817019
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            872,
                            504064
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            132,
                            538085
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            943,
                            282897
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            795,
                            806507
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            129,
                            682571
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            490,
                            125073
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            977,
                            984720
                        );

INSERT INTO RentedItems (
                            rental_no,
                            item
                        )
                        VALUES (
                            999,
                            125073
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

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       1776,
                       537605,
                       'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie',
                       '11-Jan-25',
                       3996
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       2896,
                       562336,
                       'elit elit fermentum risus, at fringilla purus mauris a nunc. In',
                       '19-Feb-25',
                       6592
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       3252,
                       840678,
                       'eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae',
                       '29-Feb-24',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       4419,
                       752591,
                       'dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.',
                       '4-May-24',
                       2792
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       4530,
                       752591,
                       'scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec',
                       '8-Oct-23',
                       3731
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       4589,
                       840678,
                       'Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent',
                       '29-Apr-24',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       4935,
                       289774,
                       'pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.',
                       '6-Jul-24',
                       9002
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       5025,
                       397884,
                       'venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet',
                       '24-Apr-24',
                       9002
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       5055,
                       938085,
                       'lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.',
                       '18-Dec-24',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       5147,
                       752591,
                       'risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.',
                       '20-Feb-24',
                       3731
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       6446,
                       537605,
                       'non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.',
                       '18-Nov-23',
                       3996
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       6509,
                       840678,
                       'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque',
                       '11-Nov-23',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       7031,
                       575629,
                       'tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim.',
                       '25-May-23',
                       3996
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       7050,
                       849481,
                       'morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
                       '14-Nov-24',
                       9002
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       7307,
                       840678,
                       'neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio',
                       '10-May-24',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       7607,
                       289774,
                       'et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat,',
                       '5-Jun-24',
                       9998
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       8559,
                       575629,
                       'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat',
                       '21-Nov-24',
                       3996
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       8649,
                       688100,
                       'In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra',
                       '22-Oct-23',
                       9002
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       8945,
                       397884,
                       'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec',
                       '18-Dec-24',
                       9002
                   );

INSERT INTO Repair (
                       repair_no,
                       item,
                       repair_description,
                       est_time,
                       employee
                   )
                   VALUES (
                       9955,
                       289774,
                       'lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor',
                       '18-Jun-24',
                       9998
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

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       1496,
                       'mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis',
                       7,
                       7087,
                       149854
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       1636,
                       'Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam',
                       8,
                       2505,
                       549540
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       1718,
                       'eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna',
                       6,
                       9888,
                       740249
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       1758,
                       'vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae',
                       7,
                       2505,
                       210544
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       2971,
                       'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla',
                       5,
                       8206,
                       682571
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       3994,
                       'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu',
                       5,
                       5771,
                       518809
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       4015,
                       'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada',
                       2,
                       6020,
                       538085
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       4079,
                       'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam',
                       9,
                       6794,
                       538085
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       4395,
                       'ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu',
                       5,
                       9888,
                       918979
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       4613,
                       'eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris',
                       8,
                       4983,
                       210544
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       4952,
                       'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et',
                       6,
                       9784,
                       549540
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       5200,
                       'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt',
                       9,
                       9784,
                       549540
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       5736,
                       'fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin',
                       1,
                       2727,
                       210544
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       6205,
                       'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante',
                       6,
                       6020,
                       682571
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       6815,
                       'nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper',
                       7,
                       7087,
                       944418
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       7373,
                       'fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend',
                       7,
                       6794,
                       817019
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       7945,
                       'metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc',
                       4,
                       2810,
                       210544
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       8369,
                       'Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec,',
                       3,
                       7087,
                       101042
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       8584,
                       'quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec',
                       7,
                       7087,
                       504073
                   );

INSERT INTO Review (
                       review_no,
                       comment,
                       rating,
                       member,
                       item
                   )
                   VALUES (
                       9656,
                       'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu',
                       9,
                       9888,
                       695517
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

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #672-2383 Praesent Street',
                          'North Las Vegas',
                          '6314236558',
                          5376,
                          766,
                          49
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #647-1432 At Ave',
                          'Allentown',
                          '9841163661',
                          3996,
                          170,
                          76
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '382-9072 Euismod Rd.',
                          'Biloxi',
                          '2459644679',
                          7078,
                          726,
                          58
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #355-7867 Luctus Av.',
                          'San Antonio',
                          '3162425886',
                          8875,
                          102,
                          86
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #400-6347 Ultricies Street',
                          'Kearney',
                          '9284082426',
                          4760,
                          368,
                          74
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '773-1631 Gravida Road',
                          'Sandy',
                          '5661729473',
                          5125,
                          193,
                          59
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'P.O. Box 810 6352 Semper Avenue',
                          'Toledo',
                          '6188646813',
                          4137,
                          995,
                          16
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '784-201 Nullam Avenue',
                          'Montgomery',
                          '2573383147',
                          9998,
                          142,
                          71
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #567-6935 Orci Av.',
                          'Lakewood',
                          '9439616568',
                          6641,
                          304,
                          85
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '1017 Felis. Street',
                          'Overland Park',
                          '1351504786',
                          9772,
                          813,
                          32
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '8015 Donec Street',
                          'Wichita',
                          '5148773874',
                          9277,
                          204,
                          45
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '126-5311 Vitae Ave',
                          'Minneapolis',
                          '5091662268',
                          7509,
                          332,
                          100
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '467-406 Eget Rd.',
                          'Springfield',
                          '2852381681',
                          9002,
                          132,
                          65
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '654-258 Nunc Av.',
                          'Fort Worth',
                          '5775505885',
                          1634,
                          225,
                          49
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '6614 Sodales. St.',
                          'West Jordan',
                          '6292373945',
                          7388,
                          138,
                          25
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '395-4478 Egestas Rd.',
                          'Nampa',
                          '3187351732',
                          6463,
                          559,
                          16
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '842-1503 Molestie Avenue',
                          'Gillette',
                          '4673342156',
                          3731,
                          322,
                          38
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #354-9665 Neque. Road',
                          'Green Bay',
                          '9281285136',
                          6592,
                          151,
                          42
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          'Ap #529-5778 A Road',
                          'Annapolis',
                          '4658242487',
                          2178,
                          334,
                          59
                      );

INSERT INTO Warehouse (
                          warehouse_address,
                          city,
                          phone,
                          manager,
                          storage_capacity,
                          drone_capacity
                      )
                      VALUES (
                          '8511 Mollis Road',
                          'Portland',
                          '2073183680',
                          2792,
                          495,
                          91
                      );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
