import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public class Member {
        public String fname;
        public String lname;
        public String address;
        public String phone;
        public String email;
        public String startDate;
        public String warehouseDistance;
    }

    public static List<Member> members;

    private static void PrintMainMenu() {
        System.out.print(
                "Main Menu:\n\n1. Search\n2. Check Inventory\n3. View Rented Items\n4. Delete Existing Entry\n5. Register Item Return\n6. Add New Entry\n7. Edit Existing Entry\n8. Exit\nPlease enter the number of the option you would like to select:");
    }

    public static void main(String[] args) {
        members = new ArrayList<Member>();
        Scanner scanner = new Scanner(System.in);
        int userChoice = 0;
        while (userChoice != 8) {
            PrintMainMenu();
            String userInput = scanner.nextLine();
            userChoice = Integer.parseInt(userInput);
            Utility.clearTerminal();
            switch (userChoice) {
                case 1:
                    Search.Menu(scanner);
                    break;
                case 2:
                    CheckInventory.Menu(scanner);
                    break;
                case 3:
                    ViewRentedItems.Menu(scanner);
                    break;
                case 4:
                    DeleteExistingEntry.Menu(scanner);
                    break;
                case 5:
                    RegisterItemReturn.Menu(scanner);
                    break;
                case 6:
                    AddNewEntry.Menu(scanner);
                    break;
                case 7:
                    EditExistingEntry.Menu(scanner);
                    break;
                case 8:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid input. Please try again.");
                    break;
            }
        }
        scanner.close();
    }
}
