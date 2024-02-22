package db;

/**
 * Represents an employee
 */
public class Employee {
    public int emp_id;
    public String skill;
    public int salary;
    public String warehouse;

    public Employee(int emp_id, String skill, int salary, String warehouse) {
        this.emp_id = emp_id;
        this.skill = skill;
        this.salary = salary;
        this.warehouse = warehouse;
    }

    public String toString() {
        return "Employee ID: " + emp_id + "\nSkill: " + skill + "\nSalary: " + salary + "\nWarehouse: " + warehouse;
    }
}
