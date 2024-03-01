import java.util.Scanner;
import db.Person;

/**
 * Handles searching
 */
public class Search {

    /**
     * Prints the search menu
     * 
     * @param scanner
     */
    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Search Menu:\n\n1. All\n2. Members\n3. Drones\n4. Equipment\n5. Rental\n6. History\n7. Manufacturer\n8. Ratings\n9. Expiration Dates\n10. Employee\n11. Asset Repair\n\nPlease enter the number of the option you would like to select:");

        int userChoice = Utility.toInt(scanner.nextLine());
        if (userChoice == 1) {
            System.out.println("You chose: All");
        } else if (userChoice == 2) {
            SearchPeople(scanner);
        } else if (userChoice == 3) {
            System.out.println("You chose: Drones");
        } else if (userChoice == 4) {
            System.out.println("You chose: Equipment");
        } else if (userChoice == 5) {
            System.out.println("You chose: Rental");
        } else if (userChoice == 6) {
            System.out.println("You chose: History");
        } else if (userChoice == 7) {
            System.out.println("You chose: Manufacturer");
        } else if (userChoice == 8) {
            System.out.println("You chose: Ratings");
        } else if (userChoice == 9) {
            System.out.println("You chose: Expiration Dates");
        } else if (userChoice == 10) {
            System.out.println("You chose: Employee");
        } else if (userChoice == 11) {
            System.out.println("You chose: Asset Repair");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    /**
     * Searches for a person by ID
     * 
     * @param scanner
     */
    private static void SearchPeople(Scanner scanner) {
        System.out.print("Please enter the member's ID:");
        String id = scanner.nextLine();
        int id_no = Integer.parseInt(id);
        Person p = findPerson(scanner, id_no);
        p.toString();
        System.out.print("Press enter to continue...");
        scanner.nextLine();
        Utility.clearTerminal();
    }

    /**
     * Finds a person by ID
     * 
     * @param scanner
     * @param id_no
     * @return
     */
    public static Person findPerson(Scanner scanner, int id_no) {
        Utility.clearTerminal();
        for (Person person : Main.People) {
            if (person.id_no == id_no) {
                System.out.println("Name: " + person.fname + " " + person.lname + "\nAddress: " + person.address
                        + "\nPhone: " + person.phone + "\nEmail: " + person.email + "\nID: " + person.id_no);
                return person;
            }
        }
        System.out.println("No member found with that ID.");
        return new Person(0, "", "", "", "", "", false, false);
    }
}
