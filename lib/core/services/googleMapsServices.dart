import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class GoogleMapsServices {
  // Future<String> getRouteCoordinates(LatLng l1, LatLng l2) async {
  //   String url =
  //       "https://maps.googleapis.com/maps/api/directions/json?origin=${l1.latitude},${l1.longitude}&destination=${l2.latitude},${l2.longitude}&key=$apiKey";
  //   http.Response response = await http.get(url);
  //   Map values = jsonDecode(response.body);
  //   return values["routes"][0]["overview_polyline"]["points"];
  // }

  static Future<dynamic> getRequest(String url) async {
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String jSonData = response.body;
        var decodeData = jsonDecode(jSonData);
        return decodeData;
      } else {
        return "Failed";
      }
    } catch (exp) {
      return "Failed";
    }
  
  }
}

