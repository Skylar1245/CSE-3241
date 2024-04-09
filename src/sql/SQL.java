package sql;

import java.sql.*;
import java.util.Random;

import db.Person;

public class SQL {

    public static Connection conn = null;

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
        Person p = new Person(0, "", "", "", "", "", false, false);
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

    // Rentals allow for 30 days of rental time
    final static int RENTAL_DURATION = 30;

    // TODO this should be a transaction
    public static boolean AddRental(int equipmentID, int quantity, int userID) {
        try {
            Random rand = new Random();
            int rental_no = rand.nextInt(9999);
            String sql = "INSERT INTO Rental(rental_no, member, drone, item, quantity, checkout, duration) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rental_no);
            ps.setInt(2, userID);
            ps.setInt(3, GetDrone());
            ps.setInt(4, equipmentID);
            ps.setInt(5, quantity);
            ps.setDate(6, new Date(System.currentTimeMillis()));
            ps.setInt(7, RENTAL_DURATION);
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
            ps.setInt(1, InUse);
            ps.setInt(2, GetDrone());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

    // TODO this should be a transaction
    public static boolean ReturnEquipment(int rentalID) {
        String sql = "SELECT * FROM Rental WHERE rental_no = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rentalID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int equipmentID = rs.getInt("item");
                int quantity = rs.getInt("quantity");
                // Update the quantity of the equipment
                sql = "UPDATE Equipment SET quantity = quantity + ? WHERE serial_no = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, quantity);
                ps.setInt(2, equipmentID);
                ps.executeUpdate();
                // tell drone it is free
                sql = "UPDATE Drone SET status = ? WHERE serial_no = ?";
                ps = conn.prepareStatement(sql);
                ps.setInt(1, Available);
                ps.setInt(2, GetDrone());
                ps.executeUpdate();
            }
            sql = "DELETE FROM Rental WHERE rental_no = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, rentalID);
            ps.executeUpdate();
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
                if (rs.getInt("status") == Available) {
                    return rs.getInt("serial_no");
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return -1;
    }

    public final static int Delivery = 0;
    public final static int Pickup = 1;
    public final static int Available = 0;
    public final static int InUse = 1;

    public static boolean AddTransport(int rentalID, int type) {
        String sql = "INSERT INTO Transport(rental_no, departure_date, est_arrival, type) VALUES(?,?,?,?)";
        try {
            String time = Long.toString(System.currentTimeMillis());
            String estTime = Long.toString(System.currentTimeMillis() * 2);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, rentalID);
            ps.setString(2, time);
            ps.setString(3, estTime);
            ps.setInt(4, type);
            ps.executeUpdate();
            // tell drone it is busy now
            sql = "UPDATE Drone SET status = ? WHERE serial_no = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, InUse);
            ps.setInt(2, GetDrone());
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }
}
