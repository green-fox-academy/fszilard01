package Conditionals;

import java.util.Scanner;

public class PrintBigger {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        int userOne = scanner.nextInt();
        int userTwo = scanner.nextInt();

        if (userOne > userTwo){
            System.out.println(userOne);
        } else if (userTwo > userOne) {
            System.out.println(userTwo);
        }

    }
}

