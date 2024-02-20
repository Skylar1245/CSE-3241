package db;

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

    public String toString() {
        return "Name: " + fname + " " + lname + "\nAddress: " + address + "\nPhone: " + phone + "\nEmail: " + email
                + "\nID: " + id_no;
    }
}
