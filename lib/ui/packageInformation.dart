import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/utilities/assets.dart';

class PackageInformation extends StatefulWidget {
  @override
  _PackageInformationState createState() => _PackageInformationState();
}

class _PackageInformationState extends State<PackageInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#2093E9"),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      "Package Information",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          size: 35,
                          color: Colors.white,
                        ),
                        onPressed: null)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0))),
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0, top: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Pickup address 28 August 2020",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 38.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "39 Ozone Road",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Delivery  address 28 August 2020",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 38.0,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "335 Funsho williams, Surulere",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Divider(
                        thickness: 1.2,
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:38.0),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charges", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                          Text("NGN5000", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal:38.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax and Service Charges", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                          Text("NGN1200", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ],
                    ),
                     ),
                      SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Divider(
                        thickness: 1.2,
                        color: HexColor("#C5C5C5"),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:38.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),),
                          Text("NGN6200", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),),
                        ],
                    ),
                     ),
                      SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:38.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Package Details", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                          Image.asset(Assets.button, scale: 0.8),
                        ],
                    ),
                     ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Package Number",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:38.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("LOGAZGFHASKJ", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                          Image.asset(Assets.delivery),
                        ],
                    ),
                     ),
                       
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Delivery Information",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Dont Knock, Call the number given",
                          style: TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),

                      ),
                    ),
                        
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "28 August 2020 at 7:00 am",
                          style: TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),

                      ),
                    ),
                     SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Receiver Name",
                          style: TextStyle(
                              fontSize: 15, color: HexColor("#939393")),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Tochukwu",
                          style: TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Need Help?",
                          style: TextStyle(
                              fontSize: 20, color: HexColor("#2094E9")),
                        ),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
