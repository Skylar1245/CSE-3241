package sql;

import java.sql.*;

public class UsefulReports {
    private static Connection conn = null;

    public static void init(Connection newConn) {
        conn = newConn;
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

    }

    /**
     * Find the most frequent equipment manufacturer in the database (i.e. the one
     * who has had the most rented units) (see query from Checkpoint #4)
     */
    public static void FindPopularManufacturer() {

    }

    /**
     * Find the most used drone in the database (use the flying distance of the
     * drone -member distance- and number of deliveries the drone has been traveled
     * to calculate) (see similar query from Checkpoint #4)
     */
    public static void PopularDrone() {

    }

    /**
     * Find the member who has rented out the most items and the total number of
     * items they have rented out. (see query from Checkpoint #3).
     * 
     */
    public static void FindMostActiveMember() {

    }

    /**
     * Find the description (name) of equipment by type released before YEAR. (see
     * query from Checkpoint #3).
     */
    public static void ViewEquipmentByType() {

    }
}
