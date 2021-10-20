package Variables;

public class VariableMutation {
    public static void main(String[] args) {
        int a = 3;
        // Növeld meg az "a" változó értékét 10-zel
        a += 10;
        System.out.println(a);

        int b = 100;
        // Csökkentsd a "b" változó értékeét 7-tel
        b -= 7;

        System.out.println(b);

        int c = 44;
        // A c értéke legyen dupla akkora
        c *= 2;

        System.out.println(c);

        int d = 125;
        // Oszd el a d-t 5-tel
        d /= 5;

        System.out.println(d);

        int e = 8;
        // Emeld köbre az e változó értékét
        e = e * e * e;

        System.out.println(e);

        int f1 = 123;
        int f2 = 345;
        // Logikai (boolean) értékként írasd ki hogy f1 nagyobb-e f2-nél

        boolean biggerNumber = f1 > f2;
        System.out.println(biggerNumber);

        int g1 = 350;
        int g2 = 200;
        // Mondja meg a program, hogy g2 duplája nagyobb-e g1-nél (boolean)

        boolean biggerDoubleg2 = g2 * 2 > g1;
        System.out.println(biggerDoubleg2);


        int h = 135798745;
        // Mondja meg a program, hogy osztható-e 11-el maradék nélkül?
        // Írasd is ki logikai (boolean) értékként

        boolean divisible = h % 11 == 0;
        System.out.println(divisible);


        int i1 = 10;
        int i2 = 3;
        // Mondja meg a program hogy i1 nagyobb-e i2 négyzeténél ÉS ugyanakkor kisebb-e i2 köbénél (boolean)

        int i3 = i2 * i2;
        int i4 = i3 * i2;
        boolean biggerThanI3 = i1 > i3;
        boolean smallerThanI4 = i1 < i4;

        System.out.println(biggerThanI3);
        System.out.println(smallerThanI4);


        int j = 1521;
        // Írasd ki, hogy j osztható-e 3-mal vagy 5-tel (boolean)

        boolean threeOrFour = (j % 3 == 0) || (j % 5 == 0);
        System.out.println(threeOrFour);



    }
}

