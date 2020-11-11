import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/logIn.dart';
import 'package:logistics/ui/signUp.dart';
import 'package:logistics/utilities/assets.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "logistics",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#2945FF")),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Citi Logistics",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Logistics Services",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Inter-Medium",
                        fontWeight: FontWeight.w400,
                        color: HexColor("#4F4E4E")),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Order logistics services \nstraight from your phone ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#808080")),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in",
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
                        Image.asset(Assets.logInIcon2),
                        Image.asset(Assets.logInIcon)
                      ],
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: HexColor("#2094E9"),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        )),
                    child: Text(
                      "Sign up",
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
      ),
    );
  }
}
