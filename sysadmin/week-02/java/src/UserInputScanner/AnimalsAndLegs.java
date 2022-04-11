package UserInputScanner;


import java.util.Scanner;

public class AnimalsAndLegs {
    public static void main(String[] args) {
        // Írj egy programot, ami két egész számot kér
        // Az első a farmer tyúkjainak számát reprezentálja
        // A második a farmer sertéseinek számát reprezentálja
        // Írja ki, hogy összesen hány darab lába van az állatoknak a farmon

        System.out.println("Kérem a tyúkok számát :");

        Scanner scanner = new Scanner(System.in);
        int hens = scanner.nextInt();

        System.out.println("Kérem a sertések számát :");
        int pigs = scanner.nextInt();

        int hensLegs = hens * 2;
        int pigsLegs = pigs * 4;

        System.out.println( hensLegs + pigsLegs);




    }
}
