/**
 * Holds general utility methods
 */
public class Utility {
    /**
     * Clears the terminal only in VS Code, in eclipse it will not work
     * and prints square characters instead
     */
    public static void clearTerminal() {
        try {
            if (System.getProperty("os.name").contains("Windows")) {
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            } else {
                new ProcessBuilder("clear").inheritIO().start().waitFor();
            }
        } catch (Exception e) {
            // No need to act, it's just a utility method
        }
    }

    /**
     * Converts a string to an integer
     * 
     * @param x
     * @return -1 on failure
     */
    public static int toInt(String x) {
        try {
            return Integer.parseInt(x);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /**
     * checks if the input is a clean numeric input
     * 
     * @param input
     * @return
     */
    public static boolean checkNumericInput(String input) {
        if (input == null || input.isEmpty()) {
            return false;
        }
        if (!input.chars().allMatch(Character::isDigit)) {
            return false;
        }
        return true;
    }

    /**
     * checks if the input is a clean string input
     * 
     * @param input
     * @return
     */
    public static boolean checkStringInput(String input) {
        if (input == null || input.isEmpty()) {
            return false;
        }
        if (!input.chars().allMatch(Character::isLetter)) {
            return false;
        }
        return true;
    }
}
