import java.util.Scanner;

public class Main {
    
    private static void PrintMainMenu() {
        System.out.print(
                "Main Menu:\n\n1. Search\n2. Check Inventory\n3. View Rented Items\n4. Delete Existing Entry\n5. Register Item Return\n6. Add New Entry\n7. Edit Existing Entry\n8. Exit\nPlease enter the number of the option you would like to select:");
    }

    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        int userChoice = 0;
        while (userChoice != 8) {
            PrintMainMenu();
            String userInput = scanner.nextLine();
            userChoice = Integer.parseInt(userInput);
            Utility.clearTerminal();
            switch (userChoice) {
                case 1:   
                    Search.SearchMenu(scanner);
                    break;
                default:
                    System.out.println("Invalid input. Please try again.");
                    break;
            }
        }
        scanner.close();
    }
}
