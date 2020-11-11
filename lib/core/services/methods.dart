
import 'package:geolocator/geolocator.dart';
import 'package:logistics/core/models/address.dart';
import 'package:logistics/core/provider/AppData.dart';
import 'package:logistics/core/services/googleMapsServices.dart';
import 'package:provider/provider.dart';
import 'ConfigMaps.dart';

class Methods {
  static Future<String> searchCoordinateAddress(
      Position position, context) async {
    String placeAddress = "";
    String st1, st2, st3, st4;
    String url =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";
    var response = await GoogleMapsServices.getRequest(url);
    if (response != "failed") {
    
      // placeAddress = response['results'][0]["formatted_address"];
      st1 = response["results"][0]["address_components"][0]["long_name"];
      st2 = response["results"][0]["address_components"][1]["long_name"];
      st3 = response["results"][0]["address_components"][5]["long_name"];
      st4 = response["results"][0]["address_components"][6]["long_name"];
     
     placeAddress = st1 + "," + st2 + "," + st3 + "," + st4;
     
      Address userPickupAddress = new Address();
      userPickupAddress.longitude = position.longitude;
      userPickupAddress.latitude = position.latitude;
      userPickupAddress.placeName = placeAddress;
      Provider.of<AppData>(context, listen: false)
          .updatePickUpLocation(userPickupAddress);
    }
    return placeAddress;
  }
}
