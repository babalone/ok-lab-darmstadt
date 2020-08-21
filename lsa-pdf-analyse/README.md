# Analyse des darmstädter LSA-PDF
Analyse und Verarbeitung des LSA-PDF vom allgemeinen Übersichtsplan von https://datenplattform.darmstadt.de/verkehr/apps/opendata/#/

## Ziel
Herausfinden, ob irgendwelche Informationen im PDF sind, die automatisiertes verarbeiten zu Geolokationen ermöglichen.

## Ideen
Wie könnte man an die Daten kommen? (Alternativen, die von oben nach unten abgearbeitet werden könnten)
* Die LSA stehen als Rohdaten mit Geolokation im PDF. Daher einfach nur diese raus kopieren und inkl. Metadaten in ein JSON zur Weiterverarbeitung ausgeben.
* Die roten Punkte bekommt man immerhin aus den Daten und kann die dann Geolokation dann relativ zueinander ausrechnen, sobald man die einer LSA kennt (Projektion beachten)
* Bildanalyse, um die Relation der roten Punkte zueinander rauszubekommen und dann anhand eines Referenzpuntes den Rest rausfinden

### Weitere Verarbeitung der Daten
* LSA-Bezeichnung in OSM eintragen (als Punkte, als Bezeichnung zu LSAs hinzufügen, als Hinweis, für JOSM irgendwie bereit stellen)

## Logbuch
* `qpdf --check` beschwert sich, dass das PDF beschädigt ist (LSA\_Uebersichtsplan\_QM.pdf: unable to find trailer dictionary while recovering damaged file)
* `mutool info LSA\_Uebersichtsplan\_QM.pdf` spricht unter anderem von 198 JPX-/Flate-Teilen, was mit der Anzahl der LSAs übereinstimmen könnte. Werde mal schauen, was da dran ist (https://help.adobe.com/pdfl_sdk/18/PDFL_SDK_HTMLHelp/PDFL_SDK_HTMLHelp/API_References/PDFL_API_Reference/PDFEdit_Layer/JPX.html)
* `mutool convert -o out.svg LSA\_Uebersichtsplan\_QM.pdf` gibt eine SVG-Datei raus, wo die roten Punkte mit Farbe #ff1635 als eigenes Element auftauchen (mit Firefox dev-tools geschaut). Die sind also grundsätzlich als eigene Elemente im PDF oder zunindest vom Converter erkannt und dann im SVG
** Fehleinschätzung: die roten/blauen Punkte sind im SVG keine eigenen Elemente (zumindest nicht die Füllfarbe, sondern Zeilenweise jeweils kurze Pfade)
* Aus dem decomprimierten pdf (`mutool -d -a ...`)
** creator: AutoCAD 2019 - Deutsch \(German\) 2019 \(23.0s \(LMS Tech\)\)
** producer: pdfplot15.hdi 15.00.162.000
** These: der PDF-export von AutoCAD ist in Plotter-Anweisungen zum Ausdrucken (evtl. Linien oder wenn Pech nur Rastergrafik) => Kein Interesse an erhalt der Metadaten
** nicht mal der String "lsa" scheint vorzukommen (`grep -i lsa ...`)

* scheint nicht schön zu werden so. Da die Daten sich nicht oft ändern werden, werd ich das mit JOSM eintragen. Das PDF zum PNG umwandeln, als Hintergrund setzen und dann die Signale über `type=traffic_signal_set` und setzen des Namens einfügen. Metadaten auch, soweit vorhanden.
