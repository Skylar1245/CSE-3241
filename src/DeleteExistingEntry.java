import java.util.Scanner;

public class DeleteExistingEntry {

    public DeleteExistingEntry() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Delete Entry Menu\n1. Member\n2. Drone\n3. Equipment\n4. Order\n5. Asset Repair\n6. Review\n7. Review\n8. Employee\n\nPlease enter the number of the option you would like to select:");

        String userInput = scanner.nextLine();
        int userChoice = Integer.parseInt(userInput);

        if (userChoice == 1) {
            System.out.println("You chose: Member");
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
}
