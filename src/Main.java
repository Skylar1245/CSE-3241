import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
 *          https://generatedata.com/generator
 */

public class Main {
    // JDBC strings
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:####/FIXME";
    static final String USER = "username";
    static final String PASS = "password";
    // Temporary list of people
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
     * Tests the database connection with a simple query
     */
    public static void TestDatabase() {
        // JDBC
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rSet = null;
        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "SELECT id, first, last FROM Employees";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 1235550987);
            rSet = stmt.executeQuery();
            while (rSet.next()) {
                int id = rSet.getInt("id");
                String first = rSet.getString("first");
                String last = rSet.getString("last");
                System.out.println("ID: " + id + ", First: " + first + ", Last: " + last);
            }
        } catch (SQLException sqlE) {
            sqlE.printStackTrace();
            return;
        } catch (ClassNotFoundException classE) {
            classE.printStackTrace();
            return;
        }
    }

    /**
     * Main method loop
     * 
     * @param args
     */
    public static void main(String[] args) {
        Utility.clearTerminal();
        // !
        TestDatabase();
        // !
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
