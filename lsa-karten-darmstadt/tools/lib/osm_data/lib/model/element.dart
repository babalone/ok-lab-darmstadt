/*
From the OSM-Wiki (https://wiki.openstreetmap.org/wiki/Elements):
Elements are the basic components of OpenStreetMap's conceptual data model of the physical world. They consist of

nodes (defining points in space),
ways (defining linear features and area boundaries), and
relations (which are sometimes used to explain how other elements work together).

All of the above can have one or more associated tags (which describe the meaning of a particular element).
*/
class Element {
  Map<String, String> tags = {};

  Element(this.tags);
}
