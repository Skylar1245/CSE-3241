import java.util.Scanner;

public class RegisterItemReturn {

    public RegisterItemReturn() {
        // Auto-generated constructor stub
    }

    public static void Menu(Scanner scanner) {
        Utility.clearTerminal();
        System.out.print(
                "\n\nPlease enter the number of the option you would like to select:");

        String userInput = scanner.nextLine();
        int userChoice = Integer.parseInt(userInput);
        System.out.println("You chose: " + userChoice);
    }
}
