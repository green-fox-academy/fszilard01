
# Workshop


 ### Nézzünk utána mi a különbség az ADSL és a bérelt vonal között? Melyiket használják enterprise környezetben és miért?

Technikailag a bérelt vonal egy szimmetrikus adatkapcsolatot jelent, amelynek fix sávszélessége van.
Az ADSL vagyis az aszimmetrikus digitális előfizetői vonal valójában egy kommunikációs technológia, amely egy csavart rézérpárú telefonkábelen keresztül juttat el adatot A pontból B pontba.

A bérelt vonal legfontosabb előnyei:

 - nagyobb sebesség
 - megbizhatóság
 - biztonság
 - távoli munkavégzés

### Kérdezzük le az otthoni gépünk IP beállításait. Milyen osztályú IP címmel rendelkezünk?

 - "C" osztály

### Milyen parancsokkal tudjuk felszabadítni, majd új IP címet igényelni a gépünk számára? 
 - Windows rendszeren:
Az ipconfig /release paranccsal visszaadhatjuk a korábban kapott IP-címet (ezzel tulajdonképpen kikapcsoljuk a TCP/IP kapcsolatot adott hálózati kártyánkon),
míg az ipconfig /renew kiadásával újat kérhetünk, vagy megújíthatjuk a korábbit.
 ### Kérdezzük le az otthoni gépünk ARP tábláját

arp   : az ARP táblázat lekérdezése/módosítása

arp -a : tábla lekérdezése

### Mit mutat az MX rekord és hogyan tudjuk lekérdezni? 

 - Az MX rekord segítségével adhatjuk meg egy domain név esetében azt, hogy a levelezést melyik szerver kezeli.
 Egy domain névhez több MX rekordot is be lehet állítani, amivel növelhető annak az esélye, hogy a levél biztosan kézbesítésre kerül,
így biztosítható a redundancia.
 - Az MX rekord a Mail eXcahnge rövidítése.
 

 - Ehhez az nslookup parancs szükséges minden egyéb paraméter nélkül.
Utána sorban, mindegyik sor végén enter -t ütve:
server névszervernévvagyipcím
set q=MX
domainnév

### Milyen paranccsal kérdeznéd le, hogy a géped milyen TCP/UDP portokon figyel éppen (aktív kapcsolatok)? 


Netstat parancs

 - Netstat -a : Megjeleníti az összes kapcsolatot és hallgatási portot
 
### Milyen parancsot használnál, ha csak! a géped MAC címét szeretnéd kiiratni (Windows parancsosrban)

getmac 

 - A getmac paranccsal csak a Windows operációs rendszert futtató gépek mac címét tudjuk lekérni.

### Mire szolgál a tracert parancs? Mikor és mire használnád? 

 - A TRACERT segédprogrammal megállapíthatja, hogy a csomag hol akadt el a hálózatban.
A tracert futtatására akkor van szükség, ha két számítógép vagy hálózati eszköz kommunikációjában hiba van. 
Ezek lefuttatása segít abban, hogy a hibát lokalizálni lehessen.

### Hálózatunkon nincs engedélyezve a 3389-es port. Milyen szolgáltás nem fog működni? 

 - Távoli asztali kapcsolat a 3389-es port 

A távoli asztali hozzáférés nagyon praktikus eszköz, amikor kezelési és támogatási feladatokat kell végrehajtanunk. 
Az ilyen típusú távoli kapcsolatoknak köszönhetően hozzáférhetünk bármilyen engedélyezett berendezéshez, és így vezérelhetjük a monitort, valamint a programokat és az adatokat.
 


