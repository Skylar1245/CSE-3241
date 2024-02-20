import java.util.Scanner;

import db.Person;

/**
 * This class contains the menu for adding a new entry to the database
 * 
 */
public class AddNewEntry {
    /**
     * Displays the menu for adding a new entry to the database
     * 
     * @param scanner
     */
    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "New Entry Menu\n1. Member\n2. Drone\n3. Equipment\n4. Order\n5. Asset Repair\n6. Review\n7. Review\n8. Employee\n\nPlease enter the number of the option you would like to select:");
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
        String id = scanner.nextLine();
        Utility.clearTerminal();
        System.out.println("Please review the following information:");
        System.out.println("First Name: " + fname + "\nLast Name: " + lname + "\nAddress: " + address + "\nPhone: "
                + phone
                + "\nEmail: " + email + "\nid Number: " + id);
        System.out.print("Is this information correct? (Y/N): ");
        String userInput = scanner.nextLine();
        if (userInput.equalsIgnoreCase("Y")) {
            Person member = new Person();
            member.fname = fname;
            member.lname = lname;
            member.address = address;
            member.phone = Utility.toInt(phone);
            member.email = email;
            member.id_no = Utility.toInt(id);
            Main.People.add(member);
            Utility.clearTerminal();
            System.out.println("Member added successfully!");
        } else {
            AddMember(scanner);
        }
    }
}
