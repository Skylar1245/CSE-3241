package db;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.ArrayList;
import java.io.PrintWriter;

/**
 * Manages the data
 */
public class DataManager {
    /**
     * Used for read/write to the file
     */
    private static String filename = "src/data/people.txt";
    /**
     * Reads from the files
     * 
     * @return ArrayList<Person>
     * @throws FileNotFoundException
     */
    public static ArrayList<Person> ReadFromFiles() {
        File file = new File(filename);
        Scanner scanner = null;
        ArrayList<Person> people = new ArrayList<Person>();
        try {
            scanner = new Scanner(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        while (scanner != null && scanner.hasNextLine()) {
            String line = scanner.nextLine();
            String[] data = line.split(",");
            int id_no = Integer.parseInt(data[0]);
            String fname = data[1];
            String lname = data[2];
            String address = data[3];
            int phone = Integer.parseInt(data[4]);
            String email = data[5];
            Person person = new Person(id_no, phone, fname, lname, address, email, false, false);
            people.add(person);
        }
        return people;
    }

    /**
     * Writes to the file
     * 
     * @param people
     * @throws FileNotFoundException
     */
    public static void WriteToFiles(ArrayList<Person> people) {
        File file = new File(filename);
        try {
            PrintWriter output = new PrintWriter(file);
            for (Person person : people) {
                output.println(person.id_no + "," + person.fname + "," + person.lname + "," + person.address + ","
                        + person.phone + "," + person.email);
            }
            output.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
