package Conditionals;

import java.util.Scanner;

public class OneTwoALot {
    public static void main(String[] args) {
        // Írj egy programot ami beolvas egy számot a standard input-ból (scanner),
        // Ha a szám kisebb vagy egyenlő 0-val, írja ki, hogy: "Nem elég"
        // Ha a szám egyenlő 1-gyel, írja ki, hogy: "Egy"
        // Ha a szám egyenlő 2-vel, írja ki, hogy: "Kettő"
        // Ha a szám nagyobb, mint 2, írja ki, hogy: "Sok"

        System.out.println("Kérem a számot :");
        Scanner scanner = new Scanner(System.in);
        int userInput = scanner.nextInt();

        if (userInput <= 0) {
            System.out.println("Nem elég");
        } else if (userInput == 1) {
            System.out.println("Egy");
        } else if (userInput == 2) {
            System.out.println("Kettö");
        } else {
            System.out.println("Sok");
        }

    }
}


