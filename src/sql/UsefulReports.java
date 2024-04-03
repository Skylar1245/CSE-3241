package sql;

import java.sql.*;

/**
 * SELECT D.drone_name as name, D.serial_no as serialNumber
 * FROM Inventory as I, Drone as D, Manufacturer as M
 * WHERE I.serial_no = D.serial_no
 * AND I.manufacturer = M.cname
 * AND M.cname = "Lorem Luctus Ut Foundation"
 * AND I.year = 2000;
 * SELECT E.equipment_type, R.checkout
 * FROM Equipment as E, Rental as R, Community_Member as M
 * WHERE E.serial_no = R.item
 * AND R.member = M.user_id
 * AND M.user_id = 2164;
 * SELECT E.serial_no, E.equipment_type, E.equipment_description
 * FROM Equipment as E, Warehouse as W, Inventory as I
 * WHERE I.inventory_location = W.warehouse_address
 * AND E.serial_no = I.serial_no
 * AND E.quantity <= 2
 * AND W.warehouse_address = "Ap #354-9665 Neque. Road";
 * 
 * SELECT P.fname, P.lname, E.equipment_type
 * FROM Person as P, Community_Member as C, Equipment as E, Drone as D, Rental
 * as R
 * WHERE P.id_no=C.user_id
 * AND R.drone=D.serial_no
 * AND R.member=C.user_id
 * AND R.item=E.serial_no
 * AND C.distance<10
 * AND D.drone_name="Nimbus";
 * 
 * SELECT P.fname, COUNT(DISTINCT D.serial_no) as NumDrones
 * FROM Person as P, Community_Member as C, Drone as D, Rental as R
 * WHERE P.id_no=C.user_id
 * AND R.member=C.user_id
 * AND R.drone=D.serial_no
 * AND C.user_id=2505;
 * SELECT name, MAX(numItems) as numItems
 * FROM (SELECT P.fname as name, COUNT(*) as numItems
 * FROM Person as P, Community_Member as C, Rental as R
 * WHERE P.id_no=C.user_id
 * AND R.member=C.user_id
 * GROUP BY C.user_id);
 */
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
        String sql = "SELECT P.fname, COUNT(DISTINCT D.serial_no) as NumDrones\r\n" + //
                "FROM Person as P, Community_Member as C, Drone as D, Rental as R\r\n" + //
                "WHERE P.id_no=C.user_id\r\n" + //
                "AND R.member=C.user_id\r\n" + //
                "AND R.drone=D.serial_no\r\n" + //
                "AND C.user_id=2505;";
    }

    /**
     * Find the member who has rented out the most items and the total number of
     * items they have rented out. (see query from Checkpoint #3).
     * 
     */
    public static void FindMostActiveMember() {
        String sql = "SELECT name, MAX(numItems) as numItemsFROM (SELECT P.fname as name, COUNT(*) as numItems FROM Person as P, Community_Member as C, Rental as R WHERE P.id_no=C.user_id AND R.member=C.user_id GROUP BY C.user_id);";
    }

    /**
     * Find the description (name) of equipment by type released before YEAR. (see
     * query from Checkpoint #3).
     */
    public static void ViewEquipmentByType() {

    }
}
