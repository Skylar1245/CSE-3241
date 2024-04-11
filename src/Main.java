import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.List;
import java.util.function.Consumer;

/**
 * CSE-3241 Database Project
 * 
 * @authors Skylar Stephens, Kate Goertz, Haley Bonidie, Gwyn Barnholtz
 * 
 *          https://generatedata.com/generator
 */

public class Main {
    // JDBC strings
    private static String DATABASE = "databaseV4.db";

    public static Connection conn = null;

    /**
     * Prints the main menu
     */
    private static void PrintMainMenu() {
        System.out.print(
                "Main Menu: \n(NOTE: Only Member Entity is ready for add/modify/remove/retrieve)\n\n1. Search\n2. Manage Equipment\n3. Manage Database\n4. Useful Reports\n5. Exit\n\nPlease enter the number of the option you would like to select:");
    }

    /**
     * List of menu options as Consumers that must take in a Scanner and return
     * nothing
     */
    private static List<Consumer<Scanner>> MenuOptions = List.of(Search::Menu,
            ManageEquipment::Menu, ManageDatabase::Menu, UsefulReports::Menu);

    /**
     * Connects to the database if it exists, creates it if it does not, and returns
     * the connection object.
     * 
     * @param databaseFileName the database file name
     * @return a connection object to the designated database
     */
    public static Connection initializeDB(String databaseFileName) {
        String url = "jdbc:sqlite:" + databaseFileName;
        Connection conn = null; // If you create this variable inside the Try block it will be out of scope
        try {
            conn = DriverManager.getConnection(url);
            if (conn != null) {
                // Provides some positive assurance the connection and/or creation was
                // successful.
                DatabaseMetaData meta = conn.getMetaData();
                System.out.println("The driver name is " + meta.getDriverName());
                System.out.println("The connection to the database was successful.");
            } else {
                // Provides some feedback in case the connection failed but did not throw an
                // exception.
                System.out.println("Null Connection");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("There was a problem connecting to the database.");
        }
        SQL.init(conn);
        UsefulReports.init(conn);
        return conn;
    }

    /**
     * Main method loop
     * 
     * @param args
     */
    public static void main(String[] args) {
        Utility.clearTerminal();
        conn = initializeDB(DATABASE);
        // Read from existing files
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
        scanner.close();
        // Close db
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
