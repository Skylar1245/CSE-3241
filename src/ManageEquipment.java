import java.util.Scanner;

public class ManageEquipment {

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "Manage Equipment Menu:\n\n1. Rent Equipment\n2. Return Equipment\n3. Schedule Delivery\n4. Schedule Pickup\n\nPlease enter the number of the option you would like to select:");
        int userChoice = Utility.toInt(scanner.nextLine());
        Utility.clearTerminal();
        if (userChoice == 1) {
            RentEquipment(scanner);
        } else if (userChoice == 2) {
            ReturnEquipment(scanner);
        } else if (userChoice == 3) {
            DeliverEquipment(scanner);
        } else if (userChoice == 4) {
            ScheduleEquipment(scanner);
        } else if (userChoice == 5) {
            System.out.println("Exiting...");
        } else {
            System.out.println("Invalid input. Please try again.");
        }
    }

    private static void RentEquipment(Scanner scanner) {
        System.out.println("Rent Equipment:");
        System.out.print("Please enter the Serial Number:");
        int equipmentID = Utility.toInt(scanner.nextLine());
        System.out.print("How many would you like to rent?: ");
        int quantity = Utility.toInt(scanner.nextLine());
        // ! Check if equipment is available
        System.out.print("Please enter the User ID of the person renting the equipment:");
        int userID = Utility.toInt(scanner.nextLine());
        // ! Check if user exists
        // ! Check if there are any available in-range drones based on user location
        // ! If no errors then rent equipment and generate Rental_no and checkout info
        Utility.clearTerminal();
        System.out.print("Equipment Serial Number: " + equipmentID + "\nQuantity: " + quantity
                + "\nUser ID: " + userID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            System.out.println("Equipment rented successfully!");
        } else {
            System.out.println("Rental cancelled.");
        }
    }

    private static void ReturnEquipment(Scanner scanner) {
        System.out.println("Return Equipment:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        // ! Check if rental exists
        Utility.clearTerminal();
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            // ! Update rental status, equipment quantity, and drone availability
            System.out.println("Equipment returned successfully!");
        } else {
            System.out.println("Return cancelled.");
        }
    }

    private static void DeliverEquipment(Scanner scanner) {
        System.out.println("Schedule Delivery:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        // ! Check if rental exists
        Utility.clearTerminal();
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            // ! Update rental status and schedule delivery based on user location
            System.out.println("Delivery scheduled successfully!");
        } else {
            System.out.println("Delivery cancelled.");
        }
    }

    private static void ScheduleEquipment(Scanner scanner) {
        System.out.println("Schedule Pickup:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        // ! Check if rental exists
        Utility.clearTerminal();
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            // ! Update rental status and schedule pickup based on user location
            System.out.println("Pickup scheduled successfully!");
        } else {
            System.out.println("Pickup cancelled.");
        }
    }
}
