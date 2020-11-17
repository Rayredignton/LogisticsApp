import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/utilities/assets.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  PageController _pageController;

  bool stylePageController;
  String selectedBtn = 'Operations';
  @override
  void initState() {
    super.initState();
    stylePageController = false;
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#F6F6F6"),
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
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 35,
                          color: HexColor("#2094E9"),
                        ),
                        onPressed: null)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(children: [
                        SvgPicture.asset(
                          Assets.cardSvg,
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.6,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        SvgPicture.asset(
                          Assets.card2Svg,
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.6,
                        )
                      ]);
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.47,
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              _pageController.jumpToPage(0);
                              setState(() {
                                stylePageController = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: stylePageController == false
                                      ? HexColor("#2094E9")
                                      : Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0))),
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(top:28.0,left:35),
                                child: Text(
                                  "Operations",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: stylePageController == false
                                        ? Colors.white
                                        : HexColor("#2094E9"),
                                  ),
                                ),
                              ),
                            )),
                        GestureDetector(
                            onTap: () {
                              _pageController.jumpToPage(1);
                              setState(() {
                                stylePageController = true;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: stylePageController
                                        ? HexColor("#2094E9")
                                        : Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0))),
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Padding(
                                    padding: const EdgeInsets.only(top:28.0,left:35),
                                  child: Text(
                                    "History",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: stylePageController
                                          ? Colors.white
                                          : HexColor("#2094E9"),
                                    ),
                                  ),
                                ))),
                      ],
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          operations(context),
                          history(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget operations(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.87,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        color: Colors.black.withOpacity(0.25)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: Column(
                children: [
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Image.asset(Assets.wallett),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text("Top up card",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Divider(
                    color: HexColor("#F2F2F2"),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Image.asset(Assets.cancel),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text("Remove Card",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Divider(
                    color: HexColor("#F2F2F2"),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Image.asset(Assets.wallett),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        "Withdraw Amount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget history(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: HexColor("#2094E9"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                         width: MediaQuery.of(context).size.width * 0.4,
                       
                        child: Text(
                          "Added to wallet",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
                    Container(
                       width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        "June 12 2022, 10:30 AM",
                        style: TextStyle(
                            color: HexColor("#666666"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.11,
                ),
                Text(
                  "+NGN10000",
                  style: TextStyle(
                      color: HexColor("#2094E9"),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Image.asset(Assets.logout)),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                       
                        child: Text(
                          "Paid #LOGAZGHFKJKSK",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                     SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
                    Container(
                       width: MediaQuery.of(context).size.width * 0.4,
                     
                      child: Text(
                          
                        "June 12 2022, 10:30 AM",
                        style: TextStyle(
                            color: HexColor("#666666"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                Text(
                  "-NGN3000",
                  style: TextStyle(
                      color: HexColor("#2094E9"),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Image.asset(Assets.logout)),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          
                      width: MediaQuery.of(context).size.width * 0.4,
                     
                          child: Text(
                            "Paid #LOGAZGHFKJAPA",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
                    Container(
                       width: MediaQuery.of(context).size.width * 0.4,
                     
                      child: Text(
                        "June 12 2022, 10:30 AM",
                        style: TextStyle(
                            color: HexColor("#666666"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.14,
                ),
                Text(
                  " -NGN5000",
                  style: TextStyle(
                      color: HexColor("#2094E9"),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
