import java.util.Scanner;

public class ManageDatabase {

    private static void PrintOptions() {
        System.out.print(
                "\n1. Member ONLY WORKING OPTION\n2. Drone\n3. Equipment\n4. Order\n5. Asset Repair\n6. Review\n7. Review\n8. Employee\n\nPlease enter the number of the option you would like to select:");
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Database Management:\n\n1. Edit Entry\n2. Add New Entry\n3. Delete Entry\n4. View Table\n\nPlease enter the number of the option you would like to select:");
        int userChoice = Utility.toInt(scanner.nextLine());
        if (userChoice == 1) {
            EditMenu(scanner);
        } else if (userChoice == 2) {
            AddMenu(scanner);
        } else if (userChoice == 3) {
            DeleteMenu(scanner);
        } else if (userChoice == 4) {
            ViewMenu(scanner);
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Prints the edit menu
     * 
     * @param scanner
     */
    public static void EditMenu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print("Edit Entry Menu");
        PrintOptions();

        String userInput = scanner.nextLine();
        int userChoice = Integer.parseInt(userInput);

        if (userChoice == 1) {
            EditMember(scanner);
        } else if (userChoice == 2) {
            System.out.println("You chose: Drone");
        } else if (userChoice == 3) {
            System.out.println("You chose: Equipment");
        } else if (userChoice == 4) {
            System.out.println("You chose: Order");
        } else if (userChoice == 5) {
            System.out.println("You chose: Asset Repair");
        } else if (userChoice == 6) {
            System.out.println("You chose: Review");
        } else if (userChoice == 7) {
            System.out.println("You chose: Review");
        } else if (userChoice == 8) {
            System.out.println("You chose: Employee");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Displays the menu for adding a new entry to the database
     * 
     * @param scanner
     */
    public static void AddMenu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print("New Entry Menu");
        PrintOptions();
        int userChoice = Utility.toInt(scanner.nextLine());
        if (userChoice == 1) {
            AddMember(scanner);
        } else if (userChoice == 2) {
            System.out.println("You chose: Drone");
        } else if (userChoice == 3) {
            System.out.println("You chose: Equipment");
        } else if (userChoice == 4) {
            System.out.println("You chose: Order");
        } else if (userChoice == 5) {
            System.out.println("You chose: Asset Repair");
        } else if (userChoice == 6) {
            System.out.println("You chose: Review");
        } else if (userChoice == 7) {
            System.out.println("You chose: Review");
        } else if (userChoice == 8) {
            System.out.println("You chose: Employee");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Prints the delete entry menu
     * 
     * @param scanner
     */
    public static void DeleteMenu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print("Delete Entry Menu:");
        PrintOptions();
        int userChoice = Utility.toInt(scanner.nextLine());
        if (userChoice == 1) {
            DeleteMember(scanner);
        } else if (userChoice == 2) {
            System.out.println("You chose: Drone");
        } else if (userChoice == 3) {
            System.out.println("You chose: Equipment");
        } else if (userChoice == 4) {
            System.out.println("You chose: Order");
        } else if (userChoice == 5) {
            System.out.println("You chose: Asset Repair");
        } else if (userChoice == 6) {
            System.out.println("You chose: Review");
        } else if (userChoice == 7) {
            System.out.println("You chose: Review");
        } else if (userChoice == 8) {
            System.out.println("You chose: Employee");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Displays the menu for adding a new entry to the database
     * 
     * @param scanner
     */
    public static void ViewMenu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print("View Table Menu");
        PrintOptions();
        int userChoice = Utility.toInt(scanner.nextLine());
        if (userChoice == 1) {
            SQL.ViewAllPersons();
        } else if (userChoice == 2) {
            System.out.println("You chose: Drone");
        } else if (userChoice == 3) {
            System.out.println("You chose: Equipment");
        } else if (userChoice == 4) {
            System.out.println("You chose: Order");
        } else if (userChoice == 5) {
            System.out.println("You chose: Asset Repair");
        } else if (userChoice == 6) {
            System.out.println("You chose: Review");
        } else if (userChoice == 7) {
            System.out.println("You chose: Review");
        } else if (userChoice == 8) {
            System.out.println("You chose: Employee");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Adds a new member to the database
     * 
     * @param scanner
     */
    private static void AddMember(Scanner scanner) {
        System.out.println("Add Member Menu\nPlease enter the following information:");
        System.out.print("First Name: ");
        String fname = scanner.nextLine();
        System.out.print("Last Name: ");
        String lname = scanner.nextLine();
        System.out.print("Address: ");
        String address = scanner.nextLine();
        System.out.print("Phone: ");
        String phone = scanner.nextLine();
        System.out.print("Email: ");
        String email = scanner.nextLine();
        System.out.print("id Number: ");
        int id = Utility.toInt(scanner.nextLine());
        // Clean inputs
        if (!Utility.checkStringInput(email) || !Utility.checkStringInput(fname) || !Utility.checkStringInput(lname)
                || !Utility.checkStringInput(address) || !Utility.checkStringInput(phone)
                || !Utility.checkStringInput(Integer.toString(id))) {
            System.out.println("Invalid input. Please try again.");
            AddMember(scanner);
        }
        Utility.clearTerminal();
        System.out.println("Please review the following information:");
        System.out.println("First Name: " + fname + "\nLast Name: " + lname + "\nAddress: " + address + "\nPhone: "
                + phone
                + "\nEmail: " + email + "\nid Number: " + id);
        System.out.print("Is this information correct? (Y/N): ");
        String userInput = scanner.nextLine();
        if (userInput.equalsIgnoreCase("Y")) {
            Person member = new Person(id, phone, fname, lname, address, email, false, false);
            if (SQL.AddPersonToDB(member)) {
                Utility.clearTerminal();
                System.out.println("Member added successfully!");
            } else {
                System.out.println("Error adding member to database.");
            }
        } else {
            AddMember(scanner);
        }

    }

    /**
     * Deletes a member from the database
     * 
     * @param scanner
     */
    private static void DeleteMember(Scanner scanner) {
        System.out.println("Please enter the member's ID:");
        int personID = Utility.toInt(scanner.nextLine());
        //Clean input
        if (!Utility.checkNumericInput(personID)) {
            System.out.println("Invalid input. Please try again.");
            DeleteMember(scanner);
        }
        System.out.print("Are you sure you want to delete member with ID: " + personID + "? (Y/N): ");
        String confirm = scanner.nextLine();
        if (confirm.equalsIgnoreCase("Y")) {
            boolean r = SQL.RemovePersonFromDB(personID);
            if (r) {
                System.out.println("Member with ID: " + personID + " has been deleted.");
            } else {
                System.out.println("Member with ID: " + personID + " not found.");
            }
        } else {
            System.out.println("Aborted.");
        }
    }

    private static void EditMember(Scanner scanner) {
        System.out.print("Please enter the member's ID:");
        String id = scanner.nextLine();
        int id_no = Utility.toInt(id);
        //clean input 
        if (!Utility.checkNumericInput(id_no)) {
            System.out.println("Invalid input. Please try again.");
            EditMember(scanner);
        }
        Utility.clearTerminal();
        Person p = Search.findPerson(scanner, id_no);
        System.out.print(
                "Edit Menu:\n\n1. First Name\n2. Last Name\n3. Address\n4. Phone\n5. Email\n\nPlease enter the number of the option you would like to select:");
        String inputString = scanner.nextLine();
        int userInput = Utility.toInt(inputString);
        switch (userInput) {
            case 1:
                System.out.print("Please enter the new first name:");
                p.fname = scanner.nextLine();
                break;
            case 2:
                System.out.print("Please enter the new last name:");
                p.lname = scanner.nextLine();
                break;
            case 3:
                System.out.print("Please enter the new address:");
                p.address = scanner.nextLine();
                break;
            case 4:
                System.out.print("Please enter the new phone number:");
                p.phone = scanner.nextLine();
                break;
            case 5:
                System.out.print("Please enter the new email:");
                p.email = scanner.nextLine();
                break;
            default:
                System.out.println("Invalid input. Please try again.");
                EditMember(scanner);
                break;
        }
        if (SQL.EditPersonInDB(p)) {
            System.out.println("Member updated successfully!");
            System.out.print("Result: " + p.toString());
        } else {
            System.out.println("Error updating member.");
        }
    }

}
