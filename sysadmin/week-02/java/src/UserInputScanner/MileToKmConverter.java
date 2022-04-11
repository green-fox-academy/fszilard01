package UserInputScanner;

import java.util.Scanner;

public class MileToKmConverter {
    public static void main(String[] args) {
        // Írj egy olyan programot, ami egy számot (használj double-t) kér
        // felhasználói inputként és az a szám a távolságot jelenti mérföldben,
        // majd ezt átszámítja és kiírja a távolságot kilométerben

        Scanner scanner = new Scanner(System.in);
        System.out.println("Kérem a távolságot mérföldben : ");
        double mile = scanner.nextInt();
        double km = mile * 1.609;
        System.out.println("Az adott távolság kilométerben : " + km);
    }
}

