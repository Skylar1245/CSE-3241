import java.util.Scanner;

public class Search {

    public Search() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Search Menu:\n\n1. All\n2. Members\n3. Drones\n4. Equipment\n5. Rental\n6. History\n7. Manufacturer\n8. Ratings\n9. Expiration Dates\n10. Employee\n11. Asset Repair\n\nPlease enter the number of the option you would like to select:");

        String userInput = scanner.nextLine();
        int userChoice = Integer.parseInt(userInput);
        if (userChoice == 1) {
            System.out.println("You chose: All");
        } else if (userChoice == 2) {
            System.out.println("You chose: Members");
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
}
