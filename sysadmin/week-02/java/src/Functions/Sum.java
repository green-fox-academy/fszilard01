package Functions;

import java.util.Scanner;

public class Sum {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Kérek egy számot :");
        int number = scanner.nextInt();
        System.out.println(sum(number));

    }
    public static int sum(int numbers){
        int sum = 0;
        for (int i = 0; i <= numbers; i++) {
            sum = sum + i;
        }
        return sum;
    }

}
