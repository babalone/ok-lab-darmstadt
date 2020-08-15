# OK-Lab Darmstadt
Sachen, die im Zusammenhang mit dem OK-Lab Darmstadt stehen könnten.

Ein erster Teil wird wohl erstmal eine Bestandsaufnahme der existierenden und geplanten Projekte sein.

## Aktuelle Projekte
* Es gibt einen ersten Prototypen für einen mobilen [Stadtatlas Darmstadt](https://stadtatlas.darmstadt.de/). Aktuell für Android, aber theoritsch leicht portierbar, da in [Dart](https://dart.dev/)/[Flutter](https://flutter.dev/) geschrieben.

## Was gibt es in Darmstadt?
### Karten
[Hier eine erste Übersicht](https://der-spielmann.eu/index.php/12-karten-von-darmstadt-und-hessen)

### Datenplattform
Im Rahmen der Digitalstadt Darmstadt soll Darmstadt eine Datenplattform bekommen. Ausschreibung sollte Ende 2019 Enden und in 2020 sollen erste Daten darüber verfügbar sein.
[update 30.7.2020] Das ist keine Open Data Plattform, Zugriff auf Daten kann man auf Anfrage bekommen, ende 2021 wird vorraussichtich ein Dashboard öffentlich verfügbar sein.

## Datenquellen
Wo bekommt man Daten her? Welche Lizenz haben die? (Wie) Kommt man an die maschinenlesbaren Daten?

#### Darmstadt
Was gibt es in Darmstadt schon für offene Daten? Nur die Daten, oder auch Visualisierung?
* Lärmdaten von DaSense?
* Datenplattform der Digitalstadt
* Telekom Messstationen
* [Verkehrsdaten (Visualisierung)](https://darmstadt.ui-traffic.de/)
 * [Verkehrsdaten (Rohdaten)](https://datenplattform.darmstadt.de/verkehr/apps/opendata/#/)
 * Die LSAs (Ampeln) finden sich auch in OpenStreetMap [hier](https://overpass-turbo.eu/s/X50) mit Overpass-QL abgefragt werden. (Query: `relation[type=traffic_signals_set](49.78, 8.52, 49.97, 8.77);(._;>>;);out meta;`)
* [Stadtatlas Darmstadt](https://stadtatlas.darmstadt.de/)
* [Stadtlexikon](https://www.darmstadt-stadtlexikon.de/stadtlexikon-darmstadt.html)
* [Ratsinformationssystem](https://ris.darmstadt.de)
* [interaktiver Haushalt Darmstadt](https://primary.ikvs.de/sj/Produkthaushalt.xhtml?jahr=2020&kid=185b19c518xv18cg18cg185b185b185b185b185b185b185b185b185b185b18ce18ce18xn19bt185b&typ=18qm194y194s18qo&dswid=1092)
* OpenData vom RMV https://opendata.rmv.de/site/start.html
 * RMV kennt "Livedaten" selbst nur mit 20 bis 50 Sekunden Verzögerung
 * Hier [ein Projekt](https://www.darmst.art/) unter [AGPL](https://www.gnu.org/licenses/agpl-3.0)-Lizenz vom [Chaos Darmstadt](https://www.chaos-darmstadt.de), dass die Daten nutzt. Quellcode findet man [hier](https://git.darmstadt.ccc.de/cda/publictransport/).
#### Hessen
Was gibt es in Hessen für interessante Daten? Gibts schon ne Übersicht? (z.B. Luftmessdaten, Daten vom Umweltministerium, Bevölkerungsentwicklung, Nahverkehrsplan)
* [Lärmkarte](http://laerm.hessen.de/) des [Hessisches Landesamt für Naturschutz, Umwelt und Geologie](https://www.hlnug.de/)
* [Karte des Hessisches Naturschutzinformationssystem](http://natureg.hessen.de) des [Hessisches Landesamt für Naturschutz, Umwelt und Geologie](https://www.hlnug.de/)

#### Bund
Was gibt es Bundesweit für interessante Daten? Gibts schon ne Übersicht?
* [Luftdaten.info](https://luftdaten.info/): Daten von privaten selbstgebauten Luftmessstationen
* [Open Data ÖPNV](https://www.opendata-oepnv.de/ht/de/organisation/verkehrsverbuende/rmv/startseite)
* [Transit Bay](https://transitbay.org/) Graswurzelplattform zum Bereitstellen von ÖPNV-Daten
* [Unfallatlas](https://unfallatlas.statistikportal.de/) Geolokalisierte Übersicht von Unfällen im gesamten Bundesgebiet
* [Statistikportal](http://www.statistikportal.de/de)

#### Europa
Was gibt es Europaweit für interessante Daten? Gibts schon ne Übersicht?

#### Weltweit
Was gibt es Weltweit für interessante Daten? Gibts schon ne Übersicht?
* (OpenStreetMap)[https://www.openstreetmap.org/#map=12/49.8614/8.6837] ist eine Plattform für freie Geodaten und die Karten nur eine Dienstform, die darauf aufbauen. Interessant ist da auch die [Overpass API](https://wiki.openstreetmap.org/wiki/Overpass_API), mit der man Geodaten abfragen kann.
* Satellitenbilder

## Andere Interessante Projekte
Was gibt es schon in anderen Städten, was auch für Darmstadt interessant und adaptierbar wäre? (z.B. Software, Plattform, Öffentlichkeitsareit, Bürgerbeteiligung)
* Visualisierung der Beteiligungen der HEAG gibt es [hier](https://shells.darmstadt.ccc.de/~fluxx/heagmap/). Datengrundlage ist der Beteiligungsbericht aus 2017.

## Offene Fragen
Welche sinnvollen Fragen können vom Öffnen neuer Datenquellen oder der Visualisierung profitieren?
* Wie ist die aktuelle Luftqualität in Darmstadt und wie entwickelt Sie sich? (mögliche Datenquellen: Messstationen vom Land Hessen, Telekom, [Luftdaten.info](https://luftdaten.info/))
* Wie ist der aktuelle Grundwasserstand und wie entwickelt er sich?
* Wie können Daten dort angezeigt werden, wo sie von Interesse sind? (z.B. LoRa-Displays, LEDs)
