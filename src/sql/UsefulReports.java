package sql;

import java.sql.*;
import java.util.Scanner;

public class UsefulReports {
    private static Connection conn = null;

    public static void init(Connection newConn) {
        conn = newConn;
    }

    public static void Menu(Scanner scanner) {
        System.out.print(
                "Useful Reports Menu\n\n1. See Rented Items by ID\n2. Find Popular Item\n3. Find Popular Manufacturer\n4. Popular Drone\n5. Find Most Active Member\n6. View Equipment by Type\n7. Exit\nPlease enter the number of the option you would like to select:");
        int option = -1;
        try {
            option = scanner.nextInt();
        } catch (Exception e) {
            System.out.println("Please enter a valid number.");
            Menu(scanner);
        }
        if (option == 1) {
            System.out.print("Enter the ID of the member: ");
            int id = -1;
            try {
                id = scanner.nextInt();
            } catch (Exception e) {
                System.out.println("Please enter a valid number.");
                Menu(scanner);
            }
            SeeRentedItemsByID(id);
        } else if (option == 2) {
            FindPopularItem();
        } else if (option == 3) {
            FindPopularManufacturer();
        } else if (option == 4) {
            PopularDrone();
        } else if (option == 5) {
            FindMostActiveMember();
        } else if (option == 6) {
            ViewEquipmentByType();
        } else if (option == 7) {
            return;
        } else {
            System.out.println("Please enter a valid number.");
            Menu(scanner);
        }
        System.out.println("Press enter to continue.");
        scanner.nextLine();
    }

    /**
     * Renting checkouts: Find the total number of equipment items rented by a
     * single member patron (user designates the member) (see query from Checkpoint
     * #3)
     * 
     * @param id
     */
    public static void SeeRentedItemsByID(int id) {
        String sql = "SELECT * FROM Rental WHERE member = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count++;
            }
            System.out.println("The member " + id + " has rented " + count + " items.");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Find the most popular item in the database (use the renting time of the item
     * and number of times the item has been rented out to calculate) (see query
     * from Checkpoint #4)
     */
    public static void FindPopularItem() {
        String sql = "SELECT Inventory.Serial_No, SUM(Rental.Duration) AS Total_duration, COUNT(Rental.Rental_no) FROM Inventory, Rental WHERE Inventory.Serial_No = Rental.Item OR Inventory.Serial_No = Rental.Drone GROUP BY Inventory.Serial_No ORDER BY Total_Duration";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(
                        "Serial No: " + rs.getInt("Serial_No") + " Total Duration: " + rs.getInt("Total_duration")
                                + " Number of Rentals: " + rs.getInt("COUNT(Rental.Rental_no)"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Find the most frequent equipment manufacturer in the database (i.e. the one
     * who has had the most rented units) (see query from Checkpoint #4)
     */
    public static void FindPopularManufacturer() {
        String sql = "SELECT Manufacturer.Cname, COUNT (Rental.Rental_no) AS Num_Rentals FROM Manufacturer Rental WHERE Manufacturer.Cname = Inventory.Serial_No AND Inventory.manufacturer = Manufacturer.Cname GROUP BY Manufacturer_Cname ORDER BY Num_Rentals DESC";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(
                        "Manufacturer: " + rs.getString("Cname") + " Number of Rentals: " + rs.getInt("Num_Rentals"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Find the most used drone in the database (use the flying distance of the
     * drone -member distance- and number of deliveries the drone has been traveled
     * to calculate) (see similar query from Checkpoint #4)
     */
    public static void PopularDrone() {
        String sql = "SELECT Drone.Serial_no, Drone.Name, SUM(Drone.dist_auto) AS Dist_Sum FROM Drone GROUP BY Drone.Serial_No, Drone.Name ORDER BY Dist_Sum DESC";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Serial No: " + rs.getInt("Serial_no") + " Name: " + rs.getString("Name")
                        + " Distance: " + rs.getInt("Dist_Sum"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Find the member who has rented out the most items and the total number of
     * items they have rented out. (see query from Checkpoint #3).
     * 
     */
    public static void FindMostActiveMember() {
        String sql = "SELECT name, MAX(numItems) as numItems FROM (SELECT P.fname as name, COUNT(*) as numItems FROM Person as P, Community_Member as C, Rental as R WHERE P.id_no=C.user_id AND R.member=C.user_id GROUP BY C.user_id);";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Name: " + rs.getString("name") + " Number of Items: " + rs.getInt("numItems"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Find the description (name) of equipment by type released before YEAR. (see
     * query from Checkpoint #3).
     */
    public static void ViewEquipmentByType() {
        String sql = "SELECT E.serial_no, E.equipment_type, E.equipment_description FROM Equipment as E, Warehouse as W, Inventory as I WHERE I.inventory_location = W.warehouse_address AND E.serial_no = I.serial_no AND E.quantity <= 2 AND W.warehouse_address = \"Ap #354-9665 Neque. Road\"";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Serial No: " + rs.getInt("serial_no") + " Type: " + rs.getString("equipment_type")
                        + " Description: " + rs.getString("equipment_description"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
