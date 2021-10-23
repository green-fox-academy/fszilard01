package Arrays;

import java.util.Scanner;

public class DiagonalMatrix {
    public static void main(String[] args) {

        System.out.println("Kérek egy számot: ");
        Scanner scanner = new Scanner(System.in);
        int number = scanner.nextInt();
        int [][] matrix = new int[number][number];

        for (int i = 0; i < number ; i++) {
            for (int j = 0; j < number ; j++) {
                if (i == j) {
                    matrix[i][j] = 1;
                } else {
                    matrix[i][j] = 0 ;
                }
            }
        }
        for (int k = 0; k < matrix.length ; k++) {
            for (int l = 0; l < matrix.length ; l++) {
                System.out.print(matrix[k][l]);
            }
            System.out.println();
        }
    }
}
