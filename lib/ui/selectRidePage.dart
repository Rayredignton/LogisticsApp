import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logistics/ui/recievePackage.dart';
import 'package:logistics/utilities/assets.dart';

class SelectRide extends StatefulWidget {
  @override
  _SelectRideState createState() => _SelectRideState();
}

class _SelectRideState extends State<SelectRide> {
  bool truckselected = true;
  bool carselected = false;
  bool bikeselected = false;
  bool cyclersselected = false;
  bool skatersselected = false;
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
                  "Select Ride",
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
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: HexColor("#FDD844")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ListTile(
                leading: Image.asset(Assets.truck),
                title: Text(
                  "Truck",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                trailing: CircularCheckBox(
                    checkColor: Colors.white,
                    inactiveColor: HexColor("#00C2CE"),
                    focusColor: HexColor("#00C2CE"),
                    value: truckselected,
                    onChanged: (bool value) {
                      setState(() {
                        truckselected = value;
                      });
                    }),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: HexColor("#FDD844")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ListTile(
                  leading: Image.asset(Assets.car),
                title: Text(
                  "Car",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                trailing: CircularCheckBox(
                    checkColor: Colors.white,
                    inactiveColor: HexColor("#00C2CE"),
                    focusColor: HexColor("#00C2CE"),
                    value: carselected,
                    onChanged: (bool value) {
                      setState(() {
                        carselected = value;
                      });
                    }),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: HexColor("#FDD844")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ListTile(
                leading: Image.asset(Assets.delivery),
                title: Text(
                  "Bike",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                trailing: CircularCheckBox(
                    checkColor: Colors.white,
                    inactiveColor: HexColor("#00C2CE"),
                    focusColor: HexColor("#00C2CE"),
                    value: bikeselected,
                    onChanged: (bool value) {
                      setState(() {
                        bikeselected = value;
                      });
                    }),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: HexColor("#FDD844")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ListTile(
                leading: Image.asset(Assets.bike),
                title: Text(
                  "Cyclers",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                trailing: CircularCheckBox(
                    checkColor: Colors.white,
                    inactiveColor: HexColor("#00C2CE"),
                    focusColor: HexColor("#00C2CE"),
                    value: cyclersselected,
                    onChanged: (bool value) {
                      setState(() {
                        cyclersselected = value;
                      });
                    }),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: HexColor("#FDD844")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: ListTile(
                leading: Image.asset(Assets.skateboard),
                title: Text(
                  "Skaters",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
                trailing: CircularCheckBox(
                    checkColor: Colors.white,
                    inactiveColor: HexColor("#00C2CE"),
                    focusColor: HexColor("#00C2CE"),
                    value: skatersselected,
                    onChanged: (bool value) {
                      setState(() {
                        skatersselected = value;
                      });
                    }),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
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
                      builder: (context) => ReceivePackage(),
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
        ],
      )),
    );
  }
}
