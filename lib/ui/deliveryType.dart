import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/paymentDetails.dart';

class DeliveryType extends StatefulWidget {
  @override
  _DeliveryTypeState createState() => _DeliveryTypeState();
}

class _DeliveryTypeState extends State<DeliveryType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                  "Delivery type",
                  style: TextStyle(fontSize: 30, color: Colors.black),
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
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryType(),
                )),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.25)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Location Based Delivery",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: HexColor("#00C2CE")),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "We get you a rider \nloaceted closets to you",
                        style:
                            TextStyle(fontSize: 18, color: HexColor("#5A5A5A")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
              child: Text(
            "OR",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: HexColor("#FDD844")),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentDetails(),
                )),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.25)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Company Based Delivery",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: HexColor("#2945FF")),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Select from our list of registered \nlogistics companies to deliver your \npackage",
                        style:
                            TextStyle(fontSize: 18, color: HexColor("#5A5A5A")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
