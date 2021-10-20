package Types;

import sun.awt.geom.AreaOp;

public class CodingHours {
    public static void main(String[] args) {
        // Egy átlagos Green Fox hallgató 6 órát kódol naponta
        // Egy félév hosszúsága 17 hét
        //
        // Írd ki, hány órát tölt kódolással egy hallgató egy félév során,
        // ha a hallgató csak hétköznap kódol
        //
        // Írd ki, hogy a félév hány százalékát tölti a hallgató kódolással
        // ha az átlagos heti munkaidő 52 óra

        System.out.println("Egy hallgató átlag ennyi időt tölt kodolással félév alatt : " + 6 * 5 * 17 + " óra");
        System.out.println("A félév ennyi százalékát tölti kodolással: " + 6 * 5 * 17 / 52 * 17 % 100 + "%");


    }
}

