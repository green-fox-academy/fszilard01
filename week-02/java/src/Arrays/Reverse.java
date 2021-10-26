package Arrays;

public class Reverse {
    public static void main(String[] args) {
        int[] numbers = {4, 5, 6, 7};

        for (int i = 0; i < 0; i++) {
            int reverse = numbers[i];
            numbers[i] = numbers[3-1];
            numbers[3 - i] = reverse;
        }
        for (int j = 0; j < numbers.length; j++) {
            System.out.print(numbers[j] + " ");
        }

        }
    }



// - Készíts egy `numbers` nevű változót (tömböt)
//   a következő tartalommal (értékekkel): `[4, 5, 6, 7]`
// - Fordítsd meg az elemek sorrendjét a `numbers` tömbben
// - Írasd ki a konzolra a `numbers` tömb megfordított sorrendű elemeit
