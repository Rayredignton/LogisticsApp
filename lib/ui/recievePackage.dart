import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/core/provider/AppData.dart';
import 'package:logistics/core/services/ConfigMaps.dart';
import 'package:logistics/core/services/googleMapsServices.dart';
import 'package:logistics/ui/deliveryType.dart';
import 'package:logistics/utilities/assets.dart';
import 'package:provider/provider.dart';
import 'package:logistics/core/models/placePredictions.dart';

class ReceivePackage extends StatefulWidget {
  @override
  _ReceivePackageState createState() => _ReceivePackageState();
}

class _ReceivePackageState extends State<ReceivePackage> {
  TextEditingController pickUpTextController = TextEditingController();
  TextEditingController dropOffTextController = TextEditingController();
  List<PlacePredictions> placePredictionList = [];

  @override
  Widget build(BuildContext context) {
    String placeAddress =
        Provider.of<AppData>(context).pickUpLocation.placeName ?? "";
    pickUpTextController.text = placeAddress;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
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
                  Text(
                    "Recieve Package",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 27,
                        color: Colors.black),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: null)
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      Assets.pin,
                      scale: 0.8,
                    ),
                    Image.asset(Assets.pin2, scale: 0.8),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Image.asset(Assets.pin2, scale: 0.8),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Image.asset(Assets.pin2, scale: 0.8),
                    Image.asset(Assets.pin, scale: 0.8),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Pickup address",
                          style: TextStyle(
                              color: HexColor("#949494"), fontSize: 16),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                            controller: pickUpTextController,
                            onChanged: (val) {
                              findPlace(val);
                            },
                            decoration: InputDecoration(
                                hintText: "49 Ozone Road",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.black),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#C5C5C5")))))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Delivery address",
                          style: TextStyle(
                              color: HexColor("#949494"), fontSize: 16),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                            controller: dropOffTextController,
                            onChanged: (val) {
                              findPlace(val);
                            },
                            decoration: InputDecoration(
                                hintText: "445 Funsho williams , Surulere",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#C5C5C5")))))),
                    (placePredictionList.length > 0)
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return PredictionTile(
                                    placePredictions:
                                        placePredictionList[index],
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) => Divider(),
                                shrinkWrap: true,
                                itemCount: placePredictionList.length,
                                physics: ClampingScrollPhysics(),
                                
                                ),
                          )
                        : Container(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: HexColor("#EEEEEE"),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0, left: 15),
                        child: Text(
                          "Notes/ Instructions",
                          style: TextStyle(color: HexColor("808080")),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Sender Name",
                          style: TextStyle(
                              color: HexColor("#949494"), fontSize: 16),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                            //controller: firstnameCtrl,
                            decoration: InputDecoration(
                                hintText: "Tochukwu",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#C5C5C5")))))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Sender Number (optional)",
                          style: TextStyle(
                              color: HexColor("#949494"), fontSize: 16),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                            //controller: firstnameCtrl,
                            decoration: InputDecoration(
                                hintText: "08024477752",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor("#C5C5C5")))))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
                          child: Text(
                            "Receive bulk packages , Add multiple adresses",
                            style: TextStyle(color: HexColor("#2945FF")),
                          ),
                        ),
                        Image.asset(
                          Assets.add,
                          scale: 0.7,
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Not Sending today?",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: HexColor("#EEEEEE"),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, left: 15),
                            child: Text(
                              "Schedule a date",
                              style: TextStyle(color: HexColor("808080")),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, right: 15),
                            child: Image.asset(Assets.down),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: HexColor("#2094E9"),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeliveryType(),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  void findPlace(String placeName) async {
    if (placeName.length > 1) {
      String autoCompleteUrl =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$mapKey&sessiontoken=1234567890&components=country:ng";

      var res = await GoogleMapsServices.getRequest(autoCompleteUrl);

      if (res == 'failed') {
        return;
      }
      if (res["status"] == "Ok") {
        var predictions = res["predictions"];

        var placesList = (predictions as List)
            .map((e) => PlacePredictions.fromJson(e))
            .toList();

        setState(() {
          placePredictionList = placesList;
        });
      }
    }
  }
}

class PredictionTile extends StatelessWidget {
  final PlacePredictions placePredictions;
  PredictionTile({
    this.placePredictions,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          width: 10,
        ),
        Row(
          children: [
            Icon(Icons.add_location),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placePredictions.main_text,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    placePredictions.secondary_text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    ));
  }
}
