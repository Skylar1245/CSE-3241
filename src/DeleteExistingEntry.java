import java.util.Scanner;

public class DeleteExistingEntry {

    public DeleteExistingEntry() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Delete Entry Menu\n1. Member\n2. Drone\n3. Equipment\n4. Order\n5. Asset Repair\n6. Review\n7. Review\n8. Employee\n\nPlease enter the number of the option you would like to select:");
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

    private static void DeleteMember(Scanner scanner) {
        System.out.println("Please enter the member's ID:");
        String personID = scanner.nextLine();
        System.out.print("Are you sure you want to delete member with ID: " + personID + "? (Y/N): ");
        String confirm = scanner.nextLine();
        if (confirm.equalsIgnoreCase("Y")) {
            boolean r = Main.People.removeIf(person -> person.id_no == Utility.toInt(personID));
            if (r) {
                System.out.println("Member with ID: " + personID + " has been deleted.");
            } else {
                System.out.println("Member with ID: " + personID + " not found.");
            }
        } else {
            System.out.println("Aborted.");
        }
    }
}
