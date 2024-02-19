import java.util.Scanner;

public class CheckInventory {

    public CheckInventory() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Inventory Menu:\n\n1. Check One Warehouse\n2. Check All Warehouses\n\nPlease enter the number of the option you would like to select:");

        String userInput = scanner.nextLine();
        int userChoice = Integer.parseInt(userInput);

        if (userChoice == 1) {
            System.out.println("You chose: Check One Warehouse");
        } else if (userChoice == 2) {
            System.out.println("You chose: Check All Warehouses");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }
}
