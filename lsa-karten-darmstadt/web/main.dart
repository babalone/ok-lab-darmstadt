import 'dart:html';
import 'properties.dart';
import 'package:dartleaf/dartleaf.dart';

void main() {
//  var output = querySelector('#output');
//  output.text = 'Your Dart app is running.';
//  output.children.addAll(thingsTodo().map(newLI));
  var mapElement = querySelector('#output');
  var options = TileLayerOptions();
  var urlTemplate = MapAppProperties.tilesTemplateUrl;
  var map = LeafletMap.fromElement(mapElement);
  TileLayer(urlTemplate, options).addTo(map);
  map.setView(LatLng(MapAppProperties.mapCenterLat, MapAppProperties.mapCenterLng), MapAppProperties.mapZoom);
}

//LIElement newLI(String itemText) => LIElement()..text = itemText;

//Iterable<String> thingsTodo() sync* {
//  for (var s in ['a', 'b', 'c']) yield s;
//  yield "blub";
//}
