package Loops;
// Írj egy programot, ami egy számot kér a standard input-ból és egy
// ilyen piramist rajzol:
//
//
//    *
//   ***
//  *****
// *******
//
// A piramisnak annyi sora legyen,
// mint amennyi az inputból kiolvasott szám értéke

import java.util.Scanner;

public class DrawPyramid {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        int userInput = scanner.nextInt();



        for (int i = 0; i < userInput; i++) {
            for (int j = (userInput - 1) - i; j > 0; j--) {
                System.out.print(" ");
            }
            for (int k = 0; k <= i; k++) {
                System.out.print("*");
            }
            for (int y = 1; y <= i; y++) {
                System.out.print("*");
            }

            System.out.print("\n");
        }





        }


    }


