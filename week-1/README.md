# Nädal 1: SQL Basics -- UrbanStyle'i andmete uurimine

## Mida ma tegin
- Uurisin kliendiandmete (customers) tabelit SQL päringutega.
- Leidsin, et seal on 3150 rida ja 9 veergu. UrbanStyle'is on kokku 3150 klienti. Andmeid analüüsides märkasin üsna palju probleeme. Esmalt linnade nimetused on tabelis erinevate vormingutega ehk tekkisid kordused ja ma ei saanud päringu abil esindatud linnade arvu. Näiteks on sisestatud Tartu linn nii läbivalt väikeste ja suurte tähtedega, kui ka suure algustähega või hoopis enne Tartut on tühikud. See tekitab probleeme nii kindla linna klientide filtreerimisega kui ka klientide loendamisel linnade alusel.
Samuti on kliendiandmetes puudu 380 kliendi e-mail ja kokku on 510 dublikaatset e-maili.
- Osalesin meeskonna andmemaastiku koostamisel.

## Peamised õppetunnid
- Andmekvaliteedil on väga suur roll analüüsis. SQL-päringutega ütlen andmebaasile, mida ma tahan näha, kuid tulemuste usaldusväärsus sõltub otseselt alusandmete puhtusest. Kui andmed on ebatäpsed, sisaldavad duplikaate või NULL-väärtusi, annavad ka tehniliselt korrektsed päringud äriliselt valesid vastuseid.
- Oluline on süsteemne dokumenteerimine ja õige töövoog. Tegevustest peab maha jääma logi, et hiljem vajadusel saaks seda vaadata.

## Failid
- `week_1_customers_exploration.sql` -- minu SQL päringud
- `week_1_results_screenshot_nr_1.png` -- linnade jaotuse tulemuse pilt
- `week_1_results_screenshot_nr_2.png` -- kindla linna klientide filtreerimise tulemuse pilt
- `week_1_results_screenshot_nr_3.png` -- puudulike e-mailide tulemuse pilt
- `week_1_results_screenshot_nr_4.png` -- dublikaatsete e-mailide tulemuse pilt
- `week_1_results_screenshot_nr_5.png` -- linnade alusel klientide loenduse tulemuse pilt

## Meeskonna töö
- https://docs.google.com/document/d/1KF1IGFOY9RUol8cVMe5yTnogB1FGSfCGG2i4NwDDIE8/edit?tab=t.0
