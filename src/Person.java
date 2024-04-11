
/**
 * Represents a person
 */
public class Person {
    public int id_no;
    public String phone;
    public String fname;
    public String lname;
    public String address;
    public String email;
    public boolean isEmployee;
    public boolean isCommunityMember;

    /**
     * Constructor for a person that is not an employee or community member
     * 
     * @param id_no
     * @param phone
     * @param fname
     * @param lname
     * @param address
     * @param email
     * @param isEmployee
     * @param isCommunityMember
     */
    public Person(int id_no, String phone, String fname, String lname, String address, String email, boolean isEmployee,
            boolean isCommunityMember) {
        this.id_no = id_no;
        this.phone = phone;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.email = email;
        this.isEmployee = isEmployee;
        this.isCommunityMember = isCommunityMember;
    }

    /**
     * returns this as a string
     * 
     * @return String
     */
    public String toString() {
        String str = "Name: " + fname + " " + lname + "\nAddress: " + address + "\nPhone: " + phone + "\nEmail: "
                + email
                + "\nID: " + id_no;
        return str;
    }
}
