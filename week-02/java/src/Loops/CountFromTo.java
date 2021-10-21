package Loops;

import java.util.Scanner;

public class CountFromTo {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Kérek egy számot :");
        int numberOne = scanner.nextInt();
        System.out.println("Kérek még egy számot");
        int numberTwo = scanner.nextInt();


        if (numberOne > numberTwo) {
            System.out.println( "A második számnak nagyobbnak kellene lennie!");
        } else { for (int i = numberOne; i < numberTwo; i++)
            System.out.println(i);
        }


    }


}

