import java.util.Scanner;

/**
 * Handles the registering of an item return
 */
public class RegisterItemReturn {
    /**
     * Prints the menu for registering an item return
     * 
     * @param scanner
     */
    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "\n\nPlease enter the number of the option you would like to select:");
        int userChoice = Utility.toInt(scanner.nextLine());
        System.out.println("You chose: " + userChoice);
    }
}
