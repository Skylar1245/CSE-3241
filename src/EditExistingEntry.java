import java.util.Scanner;
import db.Person;

public class EditExistingEntry {

    public EditExistingEntry() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Edit Entry Menu\n1. Member\n2. Drone\n3. Equipment\n4. Order\n5. Asset Repair\n6. Review\n7. Review\n8. Employee\n\nPlease enter the number of the option you would like to select:");

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

    private static void EditMember(Scanner scanner) {
        System.out.print("Please enter the member's ID:");
        String id = scanner.nextLine();
        int id_no = Utility.toInt(id);
        Utility.clearTerminal();
        Person p = Search.findPerson(scanner, id_no);
        System.out.print("Edit Menu:\n\n1. First Name\n2. Last Name\n3. Address\n4. Phone\n5. Email\n\nPlease enter the number of the option you would like to select:");
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
                p.phone = Utility.toInt(scanner.nextLine());
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
        System.out.print("Result: " + p.toString());
    }
}
