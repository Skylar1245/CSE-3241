package sql;

import java.sql.*;
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
}
