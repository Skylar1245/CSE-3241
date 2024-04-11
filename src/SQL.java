
import java.sql.*;

import java.util.Random;

public class SQL {

    public static Connection conn = null;

    public final static String Active = "active";
    public final static String Inactive = "inactive";

    public static void init(Connection newConn) {
        conn = newConn;
    }

    public static void ViewAllPersons() {
        String sql = "SELECT * FROM Person";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                System.out.println(rs.getInt("id_no") + "\t" + rs.getString("phone") + "\t" + rs.getString("fname")
                        + "\t"
                        + rs.getString("lname") + "\t" + rs.getString("person_address") + "\t" + rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static boolean AddPersonToDB(Person person) {
        String sql = "INSERT INTO Person(id_no, phone, fname, lname, person_address, email) VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, person.id_no);
            ps.setString(2, person.phone);
            ps.setString(3, person.fname);
            ps.setString(4, person.lname);
            ps.setString(5, person.address);
            ps.setString(6, person.email);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static boolean RemovePersonFromDB(int id_no) {
        String sql = "DELETE FROM Person WHERE id_no = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_no);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static boolean EditPersonInDB(Person person) {
        String sql = "UPDATE Person SET phone = ?, fname = ?, lname = ?, person_address = ?, email = ? WHERE id_no = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, person.phone);
            ps.setString(2, person.fname);
            ps.setString(3, person.lname);
            ps.setString(4, person.address);
            ps.setString(5, person.email);
            ps.setInt(6, person.id_no);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static Person SearchPersonInDB(int id_no) {
        String sql = "SELECT * FROM Person WHERE id_no = ?";
        Person p = new Person(-1, "", "", "", "", "", false, false);
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_no);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                p = new Person(rs.getInt("id_no"), rs.getString("phone"), rs.getString("fname"), rs.getString("lname"),
                        rs.getString("person_address"), rs.getString("email"), false, false);

            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return p;
    }

    public static boolean AddRental(int equipmentID, int quantity, int userID) {
        try {
            Random rand = new Random();
            int rental_no = rand.nextInt(9999);
            String sql = "INSERT INTO Rental(rental_no, member, pdrone,ddrone, quantity, checkout, dep_date, est_arr) VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rental_no);
            ps.setInt(2, userID);
            ps.setNull(3, Types.INTEGER);
            ps.setNull(4, Types.INTEGER);
            ps.setInt(5, quantity);
            ps.setString(6, Utility.GetTodaysDate());
            ps.setNull(7, Types.CHAR);
            // Make sure to update the equipment quantity and drone availability
            if (GetQuantity(equipmentID) < quantity) {
                System.out.println("Not enough equipment available.");
                return false;
            }
            ps.executeUpdate();
            // Update the quantity of the equipment
            sql = "UPDATE Equipment SET quantity = quantity - ? WHERE serial_no = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, equipmentID);
            ps.executeUpdate();
            // tell drone it is busy
            sql = "UPDATE Drone SET status = ? WHERE serial_no = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, Active);
            ps.setInt(2, GetDrone());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static boolean ReturnEquipment(int rentalID) {
        String sql = "SELECT * FROM Rental WHERE rental_no = ?";
        int equipmentID = -1;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rentalID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ddrone = rs.getInt("ddrone");
                int pdrone = rs.getInt("pdrone");
                // tell drones they are free
                sql = "UPDATE Drone SET status = ? WHERE serial_no = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, Active);
                ps.setInt(2, ddrone);
                ps.executeUpdate();
                ps.setInt(2, pdrone);
                ps.executeUpdate();
                // get equipment id
                sql = "SELECT item FROM RentedItems WHERE rental_no = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, rentalID);
                ResultSet rs2 = ps.executeQuery();
                while (rs2.next()) {
                    equipmentID = rs2.getInt("item");
                }
                // Update the quantity of the equipment
                sql = "SELECT * FROM Equipment WHERE serial_no = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, equipmentID);
                ResultSet rs3 = ps.executeQuery();
                while (rs3.next()) {
                    int quantity = rs3.getInt("quantity");
                    sql = "UPDATE Equipment SET quantity = quantity + ? WHERE serial_no = ?";
                    ps = conn.prepareStatement(sql);
                    ps.setInt(1, quantity);
                    ps.setInt(2, equipmentID);
                    ps.executeUpdate();
                }
            }
            sql = "DELETE FROM Rental WHERE rental_no = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, rentalID);
            ps.executeUpdate();
            AddRentedItems(rentalID, equipmentID);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static int GetQuantity(int id) {
        String sql = "SELECT quantity FROM Equipment WHERE serial_no = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("quantity");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return -1;
    }

    public static int GetDrone() {
        String sql = "SELECT * FROM Drone";

        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                if (rs.getString("status") == Active) {
                    return rs.getInt("serial_no");
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return -1;
    }

    public static boolean AddRentedItems(int rental_no, int item) {
        String sql = "INSERT into RentedItems(rental_no, item) VALUES(?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rental_no);
            ps.setInt(2, item);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static boolean PopulatePickupDrone(int rentalID) {
        String sql = "UPDATE Rental SET pdrone = ? WHERE rental_no = ?";
        int PickupDroneID = GetDrone();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, PickupDroneID);
            ps.setInt(2, rentalID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    public static boolean PopulateDeliveryDrone(int rentalID) {
        String sql = "UPDATE Rental SET ddrone = ?, est_arr = ? WHERE rental_no = ?";
        int DeliveryDroneID = GetDrone();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, DeliveryDroneID);
            ps.setString(2, Utility.GetEstDate());
            ps.setInt(3, rentalID);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }
}
