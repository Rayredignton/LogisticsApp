import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/deliveryType.dart';
import 'package:logistics/utilities/assets.dart';

class SendPackage extends StatefulWidget {
  @override
  _SendPackageState createState() => _SendPackageState();
}

class _SendPackageState extends State<SendPackage> {
  @override
  Widget build(BuildContext context) {
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
                            //controller: firstnameCtrl,
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
                            //controller: firstnameCtrl,
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
                            "Receive bul packages , Add multiple adresses",
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
}
