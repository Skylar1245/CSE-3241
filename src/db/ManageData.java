package db;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.ArrayList;
import java.io.PrintWriter;

public class ManageData {
    
    public static ArrayList<Person> ReadFromFiles() {
        File file = new File("src/data/people.txt");
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
            Person person = new Person();
            person.id_no = Integer.parseInt(data[0]);
            person.fname = data[1];
            person.lname = data[2];
            person.address = data[3];
            person.phone = Integer.parseInt(data[4]);
            person.email = data[5];
            people.add(person);
        }
        return people;
    }

    public static void WriteToFiles(ArrayList<Person> people) { 
        File file = new File("src/data/people.txt");
        try {
            PrintWriter output = new PrintWriter(file);
            for (Person person : people) {
                output.println(person.id_no + "," + person.fname + "," + person.lname + "," + person.address + "," + person.phone + "," + person.email);
            }
            output.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
