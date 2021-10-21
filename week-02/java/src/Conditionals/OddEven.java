package Conditionals;

import java.util.Scanner;

public class OddEven {
    public static void main(String[] args) {
        // Írj egy programot ami beolvas egy számot a standard input-ból (scanner),
        // majd kiírja, hogy "Páros", ha páros és
        // kiírja, hogy "Páratlan", ha páratlan.
        System.out.println("Kérem a számot :");
        Scanner scanner = new Scanner(System.in);
        int userInput = scanner.nextInt();

        if (userInput % 2 == 0) {
            System.out.println("Páros szám");
        } else {
            System.out.println("Páratlan szám");
        }


    }
}
