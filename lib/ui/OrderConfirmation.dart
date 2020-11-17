import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/PackageTrack.dart';
import 'package:logistics/utilities/assets.dart';
import 'package:logistics/ui/packageInformation.dart';
class OrderConfirmation extends StatefulWidget {
  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    "Order Confirmed",
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
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: HexColor("#B5EEBF"),
                  borderRadius: BorderRadius.all(Radius.circular(45))),
              child: Center(child: Image.asset(Assets.check)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text("Pickup Confirmed", style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,fontSize: 25)),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
              Text("Your service would arrive soon", style: TextStyle(
              color: HexColor("#959595"),fontSize: 19)),

               SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: HexColor("#2094E9"),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackageInformation(),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                       "View Package Information",
                          style: TextStyle(
                             shadows: <Shadow>[
                              Shadow(
                                  blurRadius: 4.0,
                                  offset: Offset(0.0, 4.0),
                                color: Colors.black.withOpacity(0.25)
                              )
                            ],
                            color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                     
                      ],
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
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
                          builder: (context) =>PackageTrack(),
                        )),
                    child: Text(
                      "Track Package",
                      style: TextStyle(
                         shadows: <Shadow>[
                              Shadow(
                                  blurRadius: 4.0,
                                  offset: Offset(0.0, 4.0),
                                color: Colors.black.withOpacity(0.25)
                              )
                            ],
                        color: Colors.white, fontSize: 20),
                    )),
              )
          ],
        ),
      ),
    );
  }
}
