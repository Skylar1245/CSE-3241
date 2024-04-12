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
        System.out.print("Please enter the User ID of the person renting the equipment:");
        int userID = Utility.toInt(scanner.nextLine());
        // Clean input
        if (!Utility.checkNumericInput(equipmentID) || !Utility.checkNumericInput(quantity)
                || !Utility.checkNumericInput(userID)) {
            System.out.println("Invalid input. Please try again.");
            return;
        }
        Utility.clearTerminal();
        System.out.print("Equipment Serial Number: " + equipmentID + "\nQuantity: " + quantity
                + "\nUser ID: " + userID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            if (SQL.AddRental(equipmentID, quantity, userID)) {
                System.out.println("Equipment rented successfully!");
                return;
            }
        }
        System.out.println("Rental cancelled.");
    }

    private static void ReturnEquipment(Scanner scanner) {
        System.out.println("Return Equipment:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        Utility.clearTerminal();
        // Clean input
        if (!Utility.checkNumericInput(rentalID)) {
            System.out.println("Invalid input. Please try again.");
            return;
        }
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            SQL.ReturnEquipment(rentalID);
            System.out.println("Equipment returned successfully!");
        } else {
            System.out.println("Return cancelled.");
        }
    }

    private static void DeliverEquipment(Scanner scanner) {
        System.out.println("Schedule Delivery:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        // Clean input
        if (!Utility.checkNumericInput(rentalID)) {
            System.out.println("Invalid input. Please try again.");
            return;
        }
        Utility.clearTerminal();
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            if (SQL.PopulateDeliveryDrone(rentalID)) {
                System.out.println("Delivery scheduled successfully!");
            }
        } else {
            System.out.println("Delivery cancelled.");
        }
    }

    private static void ScheduleEquipment(Scanner scanner) {
        System.out.println("Schedule Pickup:");
        System.out.print("Please enter the Rental Number:");
        int rentalID = Utility.toInt(scanner.nextLine());
        // Clean input
        if (!Utility.checkNumericInput(rentalID)) {
            System.out.println("Invalid input. Please try again.");
            return;
        }
        Utility.clearTerminal();
        System.out.print("Rental Number: " + rentalID + "\n\nIs the above information correct? (Y/N): ");
        String confirmation = scanner.nextLine();
        Utility.clearTerminal();
        if (confirmation.equalsIgnoreCase("Y")) {
            if (SQL.PopulatePickupDrone(rentalID)) {
                System.out.println("Pickup scheduled successfully!");
            }
        } else {
            System.out.println("Pickup cancelled.");
        }
    }
}
