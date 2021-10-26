package Functions;

import java.util.Scanner;

public class Factorio {
    public static void main(String[] args) {

        System.out.println("Kérek egy egész számot:");
        Scanner scanner = new Scanner(System.in);
        int userNumber = scanner.nextInt();

        if (userNumber <= 0) {
            System.out.println("Nullánál nagyobb számot kérek !");
        }

    }

    public static int factorio(int input) {
        int factor = 1;
        for (int i = 1; i <= input; i++) {
            factor *= i;
        }
        return factor;
    }
}


// - Hozz létre egy class-t `Factorio` névvel és benne a main függvényt.

// - Készíts egy függvényt `factorio` névvel,
//   mely visszaadja a bemeneti paraméter faktoriális értékét.
