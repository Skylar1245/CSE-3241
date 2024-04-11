## Getting Started

CSE-3241 Project Repo

## Members

- Kate Goertz
- Skylar Stephens
- Haley Bonidie
- Gywn Barnholtz

## Folder Structure

The workspace contains a java standard source folder `src` where all project `.java` and `sql` files can be found

- `src`: the folder containing all java files as well as
    - `data`: the folder containing all csv files to populate an empty database to our schema
    - `sql `: the folder containing sql code to create the database to our schema

## File Descriptions

Within the `src` folder there are many `.java` files

- `Main.java`: this is the program entry point
- `ManageDatabase.java`: this provides methods to add/remove/edit entities
- `ManageEquipment.java`: this provides methods to rent/return equipment as well as schedule deliveries/pickups
- `Person.java`: this is a data class to allow easy java manipulation of our entity
- `Search.java`: this provides methods to search entities
- `SQL.java`: this provides methods to interact with the database
- `UsefulReports.java`: this provides reports based on the requirements in checkpoint 4: Useful Reports
- `Utility.java`: this provides utility methods to prevent SQL injection as well as keep the text based app terminal clean