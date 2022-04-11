package Loops;

import java.util.Scanner;

public class DrawDiamond {
    public static void main(String[] args) {

        System.out.println("Kérek egy számot: ");

        Scanner sc=new Scanner(System.in);
        int userInput =sc.nextInt();

        for(int i=1;i<=userInput;i++) {
            for(int j=1;j<=userInput-i;j++){
                System.out.print(" ");
            }
            for(int j=1;j<=i*2-1;j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        for(int i=userInput-1;i>0;i--) {
            for(int j=1;j<=userInput-i;j++) {
                System.out.print(" ");
            }
            for(int j=1;j<=i*2-1;j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}


