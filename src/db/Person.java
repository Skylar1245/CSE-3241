package db;

/**
 * Represents a person
 */
public class Person {
    public int id_no;
    public int phone;
    public String fname;
    public String lname;
    public String address;
    public String email;
    public boolean isEmployee;
    public Employee employeeInfo;
    public boolean isCommunityMember;
    public CommunityMember communityMemberInfo;

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
    public Person(int id_no, int phone, String fname, String lname, String address, String email, boolean isEmployee,
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
     * Constructor for a person that is an employee
     * 
     * @param id_no
     * @param phone
     * @param fname
     * @param lname
     * @param address
     * @param email
     * @param isEmployee
     * @param employeeData
     * @param isCommunityMember
     */
    public Person(int id_no, int phone, String fname, String lname, String address, String email, boolean isEmployee,
            Employee employeeData, boolean isCommunityMember) {
        this.id_no = id_no;
        this.phone = phone;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.email = email;
        this.isEmployee = isEmployee;
        this.employeeInfo = employeeData;
        this.isCommunityMember = isCommunityMember;
    }

    /**
     * Constructor for a person that is a community member
     * 
     * @param id_no
     * @param phone
     * @param fname
     * @param lname
     * @param address
     * @param email
     * @param isEmployee
     * @param isCommunityMember
     * @param communityMemberData
     */
    public Person(int id_no, int phone, String fname, String lname, String address, String email, boolean isEmployee,
            boolean isCommunityMember, CommunityMember communityMemberData) {
        this.id_no = id_no;
        this.phone = phone;
        this.fname = fname;
        this.lname = lname;
        this.address = address;
        this.email = email;
        this.isEmployee = isEmployee;
        this.isCommunityMember = isCommunityMember;
        this.communityMemberInfo = communityMemberData;
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
        if (isEmployee)
            str += "\nEmployee Info: " + employeeInfo.toString();
        if (isCommunityMember)
            str += "\nCommunity Member Info: " + communityMemberInfo.toString();
        return str;
    }
}
