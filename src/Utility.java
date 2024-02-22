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
            e.printStackTrace();
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
}
