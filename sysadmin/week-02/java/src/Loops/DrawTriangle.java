package Loops;

import java.util.Scanner;

public class DrawTriangle {
    public static void main(String[] args) {

        System.out.println("Kérek egy számot: ");
        Scanner scanner = new Scanner(System.in);
        int lineCount = scanner.nextInt();
        String stars = "";

        for (int i = 1; i <= lineCount; i++){
            stars += "*";
            System.out.println(stars);

        }

    }
}
