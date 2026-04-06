# Meeskonna kokkuvõte: Week 1 - Andmemaastiku analüüs (Data Landscape)
**Osakond:** UrbanStyle Marketing Data

## 1. Tabelite ülevaade ja tehniline seisund

### Sales (Tehingud)
*   **Maht:** 15 234 rida ja 12 veergu.
*   **Kriitilised leiud:**
    *   **Puuduvad andmed:** 1487 real puudub kliendi info (`customer_id` on NULL).
    *   **Anomaaliad:** Tuvastatud negatiivsed tehingusummad (min -1405.32 €), mis viitavad vigadele või süsteemsetele tagastustele.
    *   **Kanalite jaotus:** Unikaalseid kanaleid on 2 (online ja e-pood).
    *   **Asukohtade analüüs:** Kokku 3 füüsilist asukohta (Tallinn, Pärnu, Tartu) ning "NULL", mis tähistab veebimüüki.
    *   **Duplikaatide muster:** Tartus tuvastati 279 sularahamaksete duplikaati (unikaalseid arveid 557 vs tehinguid 836). Kogu tabelis on hinnanguliselt ~5000 duplikaati. 

### Customers (Kliendid)
*   **Maht:** 3150 rida ja 9 veergu.
*   **Andmekvaliteedi probleemid:**
    *   **Erinev vorming:** Linnade nimetused on erineva vorminguga, mis tekitab dubleerivaid koondtulemusi ja takistab täpset filtreerimist.
    *   **Puuduvad kontaktid:** 380 kliendil puudub e-mail.
    *   **Duplikaadid:** Tuvastatud 510 duplikaatset e-maili aadressi.

### Products (Tooted)
*   **Maht:** 362 rida ja 9 veergu.
*   **Seisund:** Andmed on komplektsed, puuduvaid väärtusi ei esine.
*   **Hinnad:** Hankehinnad (cost) vahemikus 10–346 €; jaemüügihinnad (retail) 13–434 €.

## 2. Süsteemsed ebakõlad
*   **Dokumentatsiooni konflikt:** `CORE_R1_urbanstyle_company-rag.md` failis on puudu `payment_method` ja `id` veergude kirjeldused, mis on aga tegelikus `sales` tabelis olemas. See on tehnilise dokumentatsiooni ebakõla.


## 3. Peamised järeldused

*   **Suurim üllatus:** NULL-väärtus ei pruugi alati tähendada viga, vaid võib kanda sisulist infot (nt `store_location` NULL tähendab online-kanalit).
*   **Andmekaos:** Hetkel on UrbanStyle'i andmed ebausaldusväärsed ja vajavad puhastamist.

## 4. Otsused ja soovitused Toomasele

1.  **Andmesisestuse piirangud:** Rakendada kriitilistele veergudele `NOT NULL` piirangud, et vältida tühje kirjeid tulevikus.
2.  **Standardiseerimine:** Ühtlustada tekstivormingud (eriti linnade nimed) ja integreerida andmeallikad ühtsesse süsteemi.
3.  **Tehniline lahendus duplikaatidele:** Kasutada unikaalseid indekseid uute andmete lisamisel:
    `CREATE UNIQUE INDEX sale_id_unique_index ON sales (sale_id);`.
4.  **Andmepuhastus:** Algatada kohene duplikaatide eemaldamise protsess, et tagada raportite tõesus.

