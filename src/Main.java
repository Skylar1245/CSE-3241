import java.util.ArrayList;
import java.util.Scanner;
import db.DataManager;
import db.Person;
import java.util.List;
import java.util.function.Consumer;
/**
 * CSE-3241 Database Project
 * @authors Skylar Stephens, Kate Goertz, Haley Bonidie, Gwyn Barnholtz
 */
public class Main {
    public static ArrayList<Person> People;

    /**
     * Prints the main menu
     */
    private static void PrintMainMenu() {
        System.out.print(
                "Main Menu:\n\n1. Search\n2. Check Inventory\n3. View Rented Items\n4. Return Equipment\n5. Edit Existing Entry\n6. Add New Entry\n7. Delete Existing Entry\n8. Exit\nPlease enter the number of the option you would like to select:");
    }

    /**
     * List of menu options as Consumers that must take in a Scanner and return
     * nothing
     */
    private static List<Consumer<Scanner>> MenuOptions = List.of(Search::Menu, CheckInventory::Menu,
            ViewRentedItems::Menu, RegisterItemReturn::Menu, EditExistingEntry::Menu, AddNewEntry::Menu,
            DeleteExistingEntry::Menu);

    /**
     * Main method loop
     * 
     * @param args
     */
    public static void main(String[] args) {
        // Read from existing files
        People = DataManager.ReadFromFiles();
        Scanner scanner = new Scanner(System.in);
        // Loop until user exits
        int userChoice = 0;
        while (userChoice != 8) {
            PrintMainMenu();
            // Get user input with invalid input handling
            userChoice = Utility.toInt(scanner.nextLine());
            Utility.clearTerminal();
            if (userChoice > 0 && userChoice < 8) {
                MenuOptions.get(userChoice - 1).accept(scanner);
            } else if (userChoice == 8) {
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
