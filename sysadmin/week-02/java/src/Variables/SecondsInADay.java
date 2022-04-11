package Variables;

public class SecondsInADay {
    public static void main(String[] args) {
        int currentHours = 14;
        int currentMinutes = 34;
        int currentSeconds = 42;

        // Írj egy programot, ami kiszámítja, hogy hány másodperc
        // van még hátra a napból úgy, hogy az aktuális időt a fenti változókkal
        // lehet beállítani (a végeredmény is legyen egész szám)

        int currentTimeSecond = (currentHours * 60 * 60) + (currentMinutes * 60) + (currentSeconds);
        int secondsPerDay = 24 * 60 * 60;
        int remainingSeconds = secondsPerDay - currentTimeSecond;

        System.out.println(remainingSeconds);



    }
}

