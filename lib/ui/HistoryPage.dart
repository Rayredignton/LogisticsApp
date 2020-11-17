import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/utilities/assets.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
          children: [
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
                  Text(
                    "History",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  Container(),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: HexColor("#EEEEEE"),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: HexColor("#000000"),
                    ),
                    hintText: "Search",
                    //contentPadding: EdgeInsets.all(10),
                    hintStyle: TextStyle(
                        fontSize: 19,
                        fontFamily: "CerebriSans-Book",
                        color: HexColor("#979797")),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Text(
                    "Sent",
                    style: TextStyle(fontSize: 30, color: HexColor("#2094E9")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.09,
                  ),
                  Text(
                    "Incoming",
                    style: TextStyle(fontSize: 30, color: HexColor("#959595")),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,

                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: HexColor("#E0E3FB"),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(children: [
                        Padding(
                    padding:
                        const EdgeInsets.only(left: 50.0, top: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        
                        Text(
                          "28 August 2020",
                          style: TextStyle(color: HexColor("#959595")),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            Assets.pin5,
                            scale: 0.8,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          Image.asset(Assets.pin3, scale: 0.8),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "Pickup address",
                              style: TextStyle(color: HexColor("#959595")),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "49 Ozone Road",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "Delivery address",
                              style: TextStyle(color: HexColor("#959595")),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "445 Funsho williams , Surulere",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Text(
                            "View Summary",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.black),
                          ),
                        ),
                      Text("In transit", style: TextStyle(color: HexColor("#2094E9"),),)
                      ],
                    ),
                  ),
                    ],),
                    ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: HexColor("#E0E3FB"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50.0, top: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Micheal",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text(
                          "28 August 2020",
                          style: TextStyle(color: HexColor("#959595")),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            Assets.pin5,
                            scale: 0.8,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Image.asset(Assets.pin4, scale: 0.8),
                          Image.asset(Assets.pin3, scale: 0.8),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "Pickup address",
                              style: TextStyle(color: HexColor("#959595")),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "49 Ozone Road",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              "Delivery address",
                              style: TextStyle(color: HexColor("#959595")),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "42 Tarred road , Ago palace way",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Text(
                            "View Summary",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.black),
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.027,
                            width: MediaQuery.of(context).size.width * 0.19,
                            child: Center(
                                child: Text(
                              "Repeat",
                              style: TextStyle(color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                                color: HexColor("#2094E9"),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
