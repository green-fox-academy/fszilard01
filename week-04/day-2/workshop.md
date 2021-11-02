# Workshop :

- Keress utána, hogy milyen gépterem besorolási szintek vannak! Készíts összehasonlító táblázatot!

|   |  Tier 1. | Tier2. | Tier 3. | Tier 4. |
|---|---|---|---|---|
| Aktív kiszolgáló egyszégek az ICT eszközök ellátására  | N  | N+1  | N+1  | Bármely elem hibája után is ‚N‘  |
| Ellátási útvonal  | 1  | 1  | 1 aktiv, 1 tartalék   | 2 egyidejűleg aktiv|
| Szolgáltatás-kiesés nélkül karbantartható  | Nem   |Nem   |Igen   |Igen   |
| Hibatűrő  |Nem   |Nem   |Nem   |Igen   |
| Független ellátási útvonalak  |Nem   |Nem   |Nem   |Nem   |
| Folyamatos hűtés  | Terhelésfüggő  | Terhelésfüggő  | Terhelésfüggő  |Biztositott |
| Rendelkezésre állás  | 99.67%  |99.75%   |99.98%  |99.99%   |
| Éves tervezett leaállás és kiesett idő  | 28.8 óra   | 22 óra   | 1.6 óra   | 0.8 óra   |

- Mi a különbség egy Tier 3 és Tier 4 besorolású gépterem között?

TIER IV: Eléri és meghaladja a harmadik szint követelményeit.
Minden hűtőberendezés két független áramforrásról működik, beleértve a hűtőberendezéseket, a ventilátorokat és a légkondicionálást.
Hibatűrő infrastruktúra 99,995% várható rendelkezésre állással.
A TIER  IV.  követelményeit  kiemelt  fontosságú  létesítmények  esetén
alkalmazzák  (pl.  bank,  online  kereskedés,  egyes  állami  intézmények).

- Keress Tier 3 és Tier 4 géptermeket Budapesten!

Invitech Solutions Kozma utcai létesítménye kapott TIER III-as nemzetközi minősítést.
Magyarországon kizárólag ebben a létesítményben találhatóak TIER III-as minősítésű géptermek is,
azaz a nemzetközileg elfogadott követelményrendszer szerint ma hazánkban ebben az adatközpontban
garantálható a legmagasabb szintű minősített biztonság. Ilyen szintű elvárásokat leginkább a pénzintézetek támasztanak,
közülük a Budapest Bank az Invitech egyik legnagyobb bérlője.

- Lehet-e gépteremben vízzel oltani? Indokold!

Nem! Az áramütés veszélye miatt elektromos berendezést vízzel oltani TILOS!

- Milyen oltórendszerek/készülékek használhatók gépteremben?

Szervertermek, transzformátorhelyiségek, telefonközpontok oltását gázzal célszerű végezni.
A gázzal oltás előnye, hogy a berendezések az oltás következtében nem károsodnak,
nem áznak el, nem telnek meg porral.

Az oltóanyagnak választhatunk:
Természetes gázt: a légkörben megtalálható gáz, pl. nitrogén, szén-dioxid, argon.
Kémiai gázt: a légkörben nem megtalálható gázok pl.:FM200® (a halon helyettesítésére fejlesztették)

- Mi a különbség egy „rack mounted” és egy „blade” szerver között?

Főbb különbség:

A Rack szerverek lényegében önálló számítógépek,
amelyet úgy terveztek, hogy egy négyszögletes szerkezetben helyezkedjen el,
kialakításuk lehetővé teszi a technikusok és a kezelők számára a rack-szerverek
egyszerű becsúsztatását.


A blade szerver egy modulált kialakításon alapuló lecsupaszított számítógépes kiszolgáló.
Ez minimalizálja a fizikai tér használatát.

Előnyei:

Kisebb teljesítményigény ,
alacsonyabb hely- és hűtési követelmények,
kevesebb a kábelezési követelmények,
lehetővé teszi a gyorsabb kiszolgáló-kiszolgáló közötti kommunikációt,
nagyobb rugalmasságot biztosítanak.


- Mi a különbség egy desktop gép és egy szerver között?

Elméletben egy nagyon erős PC akár hasonló teljesítményt tud nyújtani mint egy szerver.
Az árkülönbséget az adja, hogy a szervereket úgy tervezik, hogy éveket tudjanak non-stop menni.
Ez a felhasznált anyagok közti különbségből adódik. A szerver alaplapok jóval több memóriát tudnak kezelni.
Nagyon fontos alkatrész a RAID kártya, amit a legtöbb PC-n is megtalálhatunk az alaplapra integrálva.
Ugyanakkor az alaplapi verzió, nagyon buta, és megbízhatatlan. A szerver alaplapokra lényegesen jobbak kerülnek, de igazán jó szerverekbe csak hardveres RAID kártyát raknak,
ezek tehermentesítik a CPU-t, az adatokat sokkal gyorsabban tudják kezelni, ezen kívül kiegészíthetőek akkumulátorral,
így áramszünet esetén sem felejtik el az épp írás alatt lévő adatokat.
Hűtés: A PC-ket a lakásban használjuk és egy-két extrém felhasználótól eltekintve, ritkán terheljük őket 20-40% nál jobban.
Ezért a hűtést úgy tervezik meg, hogy a lehető leghalkabb legyen.
A szerverek viszont folyamatosan magas terheléssel üzemelnek, épp ezért, nagyon erős ventilátorokat használnak bennük.










