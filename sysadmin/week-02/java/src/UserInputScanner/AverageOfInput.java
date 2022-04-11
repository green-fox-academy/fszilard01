package UserInputScanner;

import java.util.Scanner;

public class AverageOfInput {
    public static void main(String[] args) {

        System.out.println("Kérek öt egész számot:");
        Scanner scanner = new Scanner(System.in);
        int userNumberOne = scanner.nextInt();
        int userNumberTwo = scanner.nextInt();
        int userNumberThree = scanner.nextInt();
        int userNumberFor = scanner.nextInt();
        int userNumberFive = scanner.nextInt();

        int allNumber = userNumberOne + userNumberTwo + userNumberThree + userNumberFor + userNumberFive;
        System.out.println("Összeg: " + allNumber);
        System.out.println("Átlag: " + allNumber / 5.);
    }
}

