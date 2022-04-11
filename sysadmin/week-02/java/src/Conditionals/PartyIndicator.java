package Conditionals;

import java.util.Scanner;

public class PartyIndicator {
    public static void main(String[] args) {
        // Írj egy programot, ami két számot kér a standard input-ból
        // Az első szám a lányok száma, akik jönnek a buliba
        // A második szám a fiúk száma
        //
        // Ha több, mint 20 ember eljön és a lányok és fiúk száma egyenlő
        // Írja ki, hogy: Ez a buli kitűnő!
        //
        // Ha több, mint 20 ember eljön, de a lányok - fiúk arány nem egyenlő
        // Írja ki, hogy: Ez a buli egész jó!
        //
        // Ha kevesebb, mint 20 ember jön el
        // Írja ki, hogy: Átlagos buli...
        //
        // Ha egy lány sem jön el, függetlenül az emberek számától
        // Írja ki, hogy: Virsli party
        System.out.println("Kérem a lányok számát :");

        Scanner scanner = new Scanner(System.in);
        int girls = scanner.nextInt();

        System.out.println("Kérem a fiuk számát :");
        int boys = scanner.nextInt();

        if (boys + girls > 20 && boys == girls){
            System.out.println("Ez a buli kitűnő !");
        } else if (boys + girls > 20 && girls >0) {
            System.out.println("Ez a buli egész jó !");
        } else if (boys + girls < 20 && girls > 0){
            System.out.println("Átlagos buli ...");
        } else  {
            System.out.println("Virsli party");
        }

    }
}

