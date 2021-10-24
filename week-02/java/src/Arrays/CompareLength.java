package Arrays;

public class CompareLength {
    public static void main(String[] args) {

        int [] firstArrayOfNumbers = {1, 2, 3};
        int [] secondArrayOfNumbers = {4, 5};
        boolean longer = secondArrayOfNumbers.length > firstArrayOfNumbers.length;
        if (longer){
            System.out.println(" A secondArrayOfNumbers hosszabb");
        }
    }
}
