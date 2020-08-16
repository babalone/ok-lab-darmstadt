/*
Idea:
-user overpass API to get the LSAs (type=traffic_signals_set) and calculate their position (average of the members of that relation, or something similar)
-save them in the data-folder for use in the app
-run this tool manually some times to not stress OSM with queries of rare changing data
 */
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:xml/xml.dart';
import 'package:xml/xml_events.dart';

class Properties {
  static const overpassUrl = 'https://lz4.overpass-api.de/api/interpreter';
  static const overpassQuery = '''
  relation
    [type=traffic_signals_set]
    (49.78, 8.52, 49.97, 8.77);
    (._;>>;);
    out meta;
  ''';
}

void main() async {
  await queryOverpass(
          Properties.overpassUrl, Properties.overpassQuery) //.asStream()
      .then((overpassResponse) {
    final response = overpassResponse
        .transform(utf8.decoder)
        .transform(const XmlEventDecoder())
        .transform(const XmlNormalizer())
        .transform(const XmlNodeDecoder())
        .expand((element) => element)
        .where((event) => event.children.isNotEmpty)
        .expand((element) => element.children)
//    .map((event) => event.nodeType)
//        .map((event) => '-> ' + cut(event.toString(), 500))
        .map((event) => '-> ' + cut(event.toString(), 500))
        .forEach(print);
//    response.listen((responseBody) {
    //print('response: ' + responseBody.substring(0, 300) + '... (rest is cut off)');
//      print('response: ' + responseBody.toString());
//            try {
//              final osmXml = XmlDocument.parse(responseBody);
//              print('xml: ' + osmXml.firstChild.toString());
//            } on XmlParserException catch (e) {
//              print('Exception caught: ' + e.message);
//            }
//    });
  });
}

String cut(String s, int n) {
  return s.substring(0, min(s.length, n));
}

Future<HttpClientResponse> queryOverpass(
    String overpassUrl, String overpassQuery) async {
  var request = await HttpClient().postUrl(Uri.parse(overpassUrl))
    ..write(overpassQuery);
  return await request.close();
}
