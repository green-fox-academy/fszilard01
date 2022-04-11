package Variables;

public class Cuboid {
    public static void main(String[] args) {
        // Írj egy programot, ami egy téglatest 3 oldalát tartalmazza változókban (doubles)
        // A program írja ki a felületét és térfogatát a testnek ilyen formátumban:
        //
        // Felület: 600
        // Térfogat: 1000
        double a = 102;
        double b = 65;
        double c = 78;

        double volume = a * b * c;
        double surface = 2 * ((a * b) + (a * c) + (b * c));

        System.out.printf("A téglatest térfogata: " + "%.0f\n", volume);
        System.out.printf("A téglatest felülete: " + "%.0f\n", surface);
    }
}

