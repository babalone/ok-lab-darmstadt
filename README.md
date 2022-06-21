# OK-Lab Darmstadt
Sachen, die im Zusammenhang mit dem OK-Lab Darmstadt stehen könnten.

Ein erster Teil wird wohl erstmal eine Bestandsaufnahme der existierenden und geplanten Projekte sein.

## Aktuelle Projekte
* Es gibt einen ersten Prototypen für einen mobilen [Stadtatlas Darmstadt](https://stadtatlas.darmstadt.de/). Aktuell für Android, aber theoretisch leicht portierbar, da in [Dart](https://dart.dev/)/[Flutter](https://flutter.dev/) geschrieben.

## Beschlüsse/Aktivitäten der Stadt Darmstadt
### Open Data
- 16.06.2021: [Magistratsvorlage - Aufbau einer einheitlichen Geodateninfrastruktur in Darmstadt](https://darmstadt.more-rubin1.de/meeting.php?id=ni_2021-Mag-677&agenda_item=ni_2021-Mag-677%7C202121606100176%7C1&suchbegriffe=open+data&select_koerperschaft=&select_gremium=&datum_von=2006-01-11&datum_bis=2022-12-13&richtung=ASC&entry=&kriterium=be&x=17&y=13)
    - Der Magistrat nimmt zur Kenntnis, dass das Vermessungsamt in Kooperation mit dem Amt für Digitalisierung und IT, sowie den Ämtern und Verwaltungsstellen die Geodatenbestände aufbauen und aktuell halten, die Voraussetzungen zu Umsetzung der stadtweiten Geodateninfrastruktur schafft.
- 11.02.2021: [Beschluss der Stadtverordnetenversammlung - Open-Data-Strategie der Wissenschaftsstadt Darmstadt](https://darmstadt.more-rubin1.de/vorlagen_details.php?vid=202121812100005)
    - PDF ist schief eingescannt und nicht durchsuchbar. Guter Troll :D
    - Gute Zielrichtung: Vollständigkeit, Maschinenlesbarkeit, Zugänglichkeit (auch über APIs), Offene Standards, Kostenfreiheit
    - Wermutstropfen: Datenlizenz Deutschland Namensnennung 2.0 :/
    - Open Data Portal (CKAN) existiert laut Open-Data-Strategie bereits sein 2018 (aber kein Datenbestand)
    - Zustimmung von allen dekomkratischen Fraktionen
- 01.10.2020 [Beschluss der Stadtverordnetenversammlung - Einrichtung einer Datenplattform im Rahmen des Projektes Digitalstadt Darmstadt](https://darmstadt.more-rubin1.de/vorlagen_details.php?vid=20200508100233)
    - KEINE Open-Data-Plattform
    - siehe https://datenplattform.darmstadt.de/
- 27.09.2018 [Beschluss der Stadtverordnetenversammlung - Open Data Plattform](https://darmstadt.more-rubin1.de/vorlagen_details.php?vid=310407100203)
    - Einrichtung einer Open-Data-Plattform
    - Einrichtung AG Open Data

### Informationsfreiheitssatzung
- 18.11.2021: [Magistratsvorlage 2021/0363 -  Erlass einer Informationsfreiheitssatzung](https://darmstadt.more-rubin1.de/vorlagen_details.php?vid=202121811100364)
    - Im Büro der Bürgerbeauftragten wird über den Stellenplan 2022 eine Stelle für eine:n Informationsfreiheitsbeauftragte:n geschaffen.
    - Die Informationsfreiheitssatzung regelt, dass das Hess. IFG auch für die Stadt Darmstadt gilt (nach § 81 Abs. 1, Nr 7 HDSIG)
    - Inkrafttreten am 1. April 2022
- 10.11.2020: [Beschluss eines Prüfauftrags für einen Entwurf einer Informationsfreiheitssatzung bis Ende 2021](https://darmstadt.more-rubin1.de/beschluesse_details.php?vid=341111100065&nid=ni_2021-Stavo-154&status=1&suchbegriffe=informationsfreiheitssatzung&select_koerperschaft=&select_gremium=&datum_von=2006-01-11&datum_bis=2021-12-14&richtung=ASC&entry=&kriterium=be&x=9&y=19)
    - https://ddrm.de/jetzt-doch-eine-informationsfreiheitssatzung-fuer-darmstadt-auch-mit-den-stimmen-von-gruenen-und-cdu/

## Was gibt es in Darmstadt?
* Die Digitalstadt Darmstadt veranstaltet ein [Stadtlabor](https://www.digitalstadt-darmstadt.de/stadtlabor/) mit Bürger:innenbeteiligung.

### Karten
[Hier eine erste Übersicht](https://der-spielmann.eu/index.php/12-karten-von-darmstadt-und-hessen)

### Datenplattform
- Im Rahmen der Digitalstadt Darmstadt soll Darmstadt eine Datenplattform bekommen. Ausschreibung sollte Ende 2019 Enden und in 2020 sollen erste Daten darüber verfügbar sein.
- [Update 30.7.2020] Das ist keine Open Data Plattform, Zugriff auf Daten kann man auf Anfrage bekommen, Ende 2021 wird voraussichtlich ein Dashboard öffentlich verfügbar sein.
- Link zur [Datenplattform](https://datenplattform.darmstadt.de/)

## Datenquellen
Wo bekommt man Daten her? Welche Lizenz haben die? (Wie) Kommt man an die maschinenlesbaren Daten?

Seit 2018 betreibt die Stadt Darmstadt laut Open-Data-Strategie ein Open-Data-Portal. Bisher (Stand: Nov 2021) sind dort jedoch noch keine Daten veröffentlicht worden. Der Link zum Open-Data-Portal ist nicht bekannt.

### Darmstadt
Was gibt es in Darmstadt schon für offene Daten? Nur die Daten, oder auch Visualisierung?
* Lärmdaten von DaSense?
* Telekom Messstationen
* [Verkehrsdaten (Visualisierung)](https://darmstadt.ui-traffic.de/), auch [auf der Datenplattform](https://datenplattform.darmstadt.de/verkehr/apps/uitraffic)
  * [Verkehrsdaten (Rohdaten)](https://datenplattform.darmstadt.de/verkehr/apps/opendata/#/), vormals [hier](https://darmstadt.ui-traffic.de/faces/TrafficData.xhtml)
  * Die LSAs (Ampeln) finden sich auch in OpenStreetMap [hier](https://overpass-turbo.eu/s/X50) mit Overpass-QL abgefragt werden. (Query: `relation[type=traffic_signals_set](49.78, 8.52, 49.97, 8.77);(._;>>;);out meta;`)
* [Stadtatlas Darmstadt](https://www.darmstadt.de/darmstadt-erleben/stadtplan/) ([Direktlink](https://stadtatlas.darmstadt.de/))
  * [Beschlusslandkarte](https://stadtatlas.darmstadt.de/beschlusslandkarte.html)
  * [Straßenbenennung 2019](http://stadtatlas.darmstadt.de/Strassenbenennung_2019.pdf)
  * [API](stadtatlas-api.md)
* [Stadtlexikon](https://www.darmstadt-stadtlexikon.de/stadtlexikon-darmstadt.html)
* [Ratsinformationssystem](https://ris.darmstadt.de)
  * auch über [diesen Link](https://darmstadt.more-rubin1.de/) erreichbar
  * Scraper dazu: https://github.com/mdrenger/scrapeDA
* Haushaltsdaten
  * [interaktiver Haushalt Darmstadt (ab 2020)](https://primary.ikvs.de/sj/Produkthaushalt.xhtml?jahr=2020&kid=185b19c518xv18cg18cg185b185b185b185b185b185b185b185b185b185b18ce18ce18xn19bt185b&typ=18qm194y194s18qo&dswid=1092)
  * [Offener Haushalt 2015](https://da-bei.darmstadt.de/page/Offener_Haushalt_2015) - gibt es das auch für andere Jahre?
* [Katalog der Stadtbibliothek](http://open-stadtbibliothek.darmstadt.de/)
* [Daten des Statistikamtes als PDF :(](https://www.darmstadt.de/standort/statistik-und-stadtforschung)
* [Freifunk Dashboard (Grafana)](https://stats.darmstadt.freifunk.net/)
* [Daten zur Trinkwasserqualität der Entega](https://www.entega.ag/geschaeftsfelder/oeffentl-rechtl-betriebsfuehrung/trinkwasserversorgung/)

### Frankfurt
* [Baumkataster](https://geoinfo.frankfurt.de/karten/baumkataster.html)

### Hessen
Was gibt es in Hessen für interessante Daten? Gibts schon ne Übersicht? (z.B. Luftmessdaten, Daten vom Umweltministerium, Bevölkerungsentwicklung, Nahverkehrsplan)
* [Lärmkarte](http://laerm.hessen.de/) des [Hessisches Landesamt für Naturschutz, Umwelt und Geologie](https://www.hlnug.de/)
* [Karte des Hessisches Naturschutzinformationssystem](http://natureg.hessen.de) des [Hessisches Landesamt für Naturschutz, Umwelt und Geologie](https://www.hlnug.de/)
* [Open-Data-Portal des RMV](https://opendata.rmv.de/site/start.html)
  * RMV kennt "Livedaten" selbst nur mit 20 bis 50 Sekunden Verzögerung
  * Hier [ein Projekt](https://darmstart.de/) unter [AGPL](https://www.gnu.org/licenses/agpl-3.0)-Lizenz vom [Chaos Darmstadt](https://www.chaos-darmstadt.de), dass die Daten nutzt. Quellcode findet man [hier](https://git.darmstadt.ccc.de/cda/publictransport/).
* [Geoportal Hessen](https://www.geoportal.hessen.de/)

### Bundesweit
Was gibt es Bundesweit für interessante Daten? Gibts schon ne Übersicht?
* [Übersicht über Open-Data-Portale im Datenportal der Stadt Moers](https://www.offenesdatenportal.de/dataset/ubersicht-der-open-data-angebote-in-deutschland/resource/2a8fafd0-b87f-4342-82b6-6e56569d673d)
* [Luftdaten.info](https://luftdaten.info/): Daten von privaten selbstgebauten Luftmessstationen
* [Open Data ÖPNV](https://www.opendata-oepnv.de/ht/de/organisation/verkehrsverbuende/rmv/startseite)
* [Transit Bay](https://transitbay.org/) Graswurzelplattform zum Bereitstellen von ÖPNV-Daten
* [Unfallatlas](https://unfallatlas.statistikportal.de/) Geolokalisierte Übersicht von Unfällen im gesamten Bundesgebiet
* [Statistikportal](http://www.statistikportal.de/de)
* [Geoportal der GDI-DE](https://geoportal.de/)
* [Geodatenkatalog des Bundesamt für Kartographie und Geodäsie (BKG)](https://www.geodatenkatalog.de/)

### Europa
Was gibt es Europaweit für interessante Daten? Gibts schon ne Übersicht?

### Weltweit
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

## Weitere zivilgesellschaftliche Akteure
### Darmstadt:
* [Chaos Darmstadt e.V.](http://chaos-darmstadt.de/)
* [Freifunk Darmstadt](http://darmstadt.freifunk.net/)
* [Computerwerk Darmstadt e.V.](http://computerwerk.org/)
* [Digitale Darmstadt e.V.](http://digitale-darmstadt.de/)
* [Offenes Darmstadt](http://offenesdarmstadt.de/)
* [DaLUG](http://www.dalug.org/)
* [lab3](https://lab3.org/)
* [Makerspace Darmstadt](https://www.makerspace-darmstadt.de/)
* [Kultur einer Digitalstadt e.V.](http://www.kultur-digitalstadt.de/)

### Deuschlandweit
* [Open Knowledge Foundation Deutschland](https://okfn.de/)
* [Code for Germany](https://codefor.de/)
