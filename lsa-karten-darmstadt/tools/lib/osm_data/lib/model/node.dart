/*
From the OSM-Wiki (https://wiki.openstreetmap.org/wiki/Elements, Main article: https://wiki.openstreetmap.org/wiki/Node):
A node represents a specific point on the earth's surface defined by its latitude and longitude. Each node comprises at least an id number and a pair of coordinates.

Nodes can be used to define standalone point features. For example, a node could represent a park bench or a water well.

Nodes are also used to define the shape of a way. When used as points along ways, nodes usually have no tags, though some of them could. For example, highway=traffic_signals marks traffic signals on a road, and power=tower represents a pylon along an electric power line.

A node can be included as member of relation. The relation also may indicate the member's role: that is, the node's function in this particular set of related data elements.
 */
import 'element.dart';
import 'package:utm/utm.dart';
//import 'package:utm/utm.dart';

class Node extends Element {
  int id;
  UtmCoordinate coordinate;

  Node(this.id, double lat, double lon, Map<String, String> tags)
      : super(tags) {
    coordinate =
        UTM.fromLatLon(lat: lat, lon: lon, type: GeodeticSystemType.wgs84);
  }
}
