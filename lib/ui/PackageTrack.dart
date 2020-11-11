import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logistics/core/provider/AppData.dart';
import 'package:logistics/core/services/methods.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:logistics/utilities/assets.dart';
import 'package:hexcolor/hexcolor.dart';

class PackageTrack extends StatefulWidget {
  @override
  _PackageTrackState createState() => _PackageTrackState();
}

class _PackageTrackState extends State<PackageTrack> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  double bottomPaddingOfMap = 0;

  GoogleMapController newGoogleMapController;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Position currentPosition;
  var geolocator = Geolocator();

  void locatePosition() async {
    Position position = await geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        CameraPosition(target: latLatPosition, zoom: 15);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    String address = await Methods.searchCoordinateAddress(position, context);
    print("This is your address::" + address);
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(30.0),
      topRight: Radius.circular(30.0),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SlidingUpPanel(
          panel: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                            ),
                            SvgPicture.asset(
                              Assets.clockSvg,
                              width: 40,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              "Arriving in 20 mins.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 27),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              border: Border.all(color: HexColor("#E0E3FB")),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    color: Colors.black.withOpacity(0.25)),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Status:",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: HexColor("#959595")),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Picked Up , Now in Transit",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: HexColor("#2094E9")),
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Row(
                          children: [
                            Image.asset(
                              Assets.photo,
                              scale: 0.8,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Column(
                              children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      "Oladapo Micheal",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 21),
                                    )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.007,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      "081123478521",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.007,
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      "Azote Logistics",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: HexColor("#4A5CE2")),
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.phoneSvg,
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                Image.asset(
                                  Assets.comment,
                                  scale: 0.8,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "View Package Summary",
                            style: TextStyle(
                                fontSize: 21, color: HexColor("#2094E9")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          collapsed: Container(
            decoration:
                BoxDecoration(color: Colors.white, borderRadius: radius),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                  ),
                  SvgPicture.asset(
                    Assets.clockSvg,
                    width: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Text(
                    "Arriving in 20 mins.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 27),
                  ),
                ],
              ),
            ),
          ),
          borderRadius: radius,
          body: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: true,

                initialCameraPosition: _kGooglePlex,
                zoomGesturesEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapController = controller;
                  setState(() {
                    bottomPaddingOfMap = 300.0;
                  });
                  locatePosition();
                },
                //  markers: Set<Marker>.of(markers),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: null),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
