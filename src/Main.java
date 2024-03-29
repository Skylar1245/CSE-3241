import java.util.ArrayList;
import java.util.Scanner;
import db.DataManager;
import db.Person;
import java.util.List;
import java.util.function.Consumer;

/**
 * CSE-3241 Database Project
 * 
 * @authors Skylar Stephens, Kate Goertz, Haley Bonidie, Gwyn Barnholtz
 * 
 * https://generatedata.com/generator
 */
public class Main {
    public static ArrayList<Person> People;

    /**
     * Prints the main menu
     */
    private static void PrintMainMenu() {
        System.out.print(
                "Main Menu:\n\n1. Search\n2. Check Inventory UNIMPLEMENTED\n3. Manage Equipment\n4. Manage Database\n5. Exit\nNOTE: Only member options are functional\nPlease enter the number of the option you would like to select:");
    }

    /**
     * List of menu options as Consumers that must take in a Scanner and return
     * nothing
     */
    private static List<Consumer<Scanner>> MenuOptions = List.of(Search::Menu, CheckInventory::Menu,
            ManageEquipment::Menu, ManageDatabase::Menu);

    /**
     * Main method loop
     * 
     * @param args
     */
    public static void main(String[] args) {
        Utility.clearTerminal();
        // Read from existing files
        People = DataManager.ReadFromFiles();
        Scanner scanner = new Scanner(System.in);
        // The exit input will always be the last option
        int exitInput = MenuOptions.size() + 1;
        // Loop until user exits
        int userChoice = 0;
        while (userChoice != 8) {
            PrintMainMenu();
            // Get user input with invalid input handling
            userChoice = Utility.toInt(scanner.nextLine());
            Utility.clearTerminal();
            if (userChoice > 0 && userChoice < exitInput) {
                MenuOptions.get(userChoice - 1).accept(scanner);
            } else if (userChoice == exitInput) {
                System.out.println("Exiting...");
                break;
            } else {
                System.out.println("Invalid input. Please try again.");
            }
        }
        // Save any changes to files
        DataManager.WriteToFiles(People);
        scanner.close();
    }
}
