import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/OrderConfirmation.dart';

class PaymentDetails extends StatefulWidget {
  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Payment Details",
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      color: Colors.black.withOpacity(0.25)),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: HexColor("#2094E9")),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Charges",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#5A5A5A")),
                        ),
                        Text(
                          "NGN5000",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#5A5A5A")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax and Service Charges",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#5A5A5A")),
                        ),
                        Text(
                          "NGN1200",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: HexColor("#5A5A5A")),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: HexColor("#2094E9"),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 2.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: FlatButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderConfirmation(),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pay with wallet - NGN6200",
                      style: TextStyle(shadows: <Shadow>[
                        Shadow(
                            blurRadius: 4.0,
                            offset: Offset(0.0, 4.0),
                            color: Colors.black.withOpacity(0.25))
                      ], color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 2.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: FlatButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderConfirmation(),
                    )),
                child: Text(
                  "Pay with cash - NGN6200",
                  style: TextStyle(shadows: <Shadow>[
                    Shadow(
                        blurRadius: 4.0,
                        offset: Offset(0.0, 4.0),
                        color: Colors.black.withOpacity(0.25))
                  ], color: Colors.white, fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
