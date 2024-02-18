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
        System.out.println("You chose: " + userChoice);
    }
}
