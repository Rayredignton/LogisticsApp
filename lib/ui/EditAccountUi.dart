import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EditAccount extends StatefulWidget {
  @override
  _EditAccountState createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Edit account",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: HexColor("#2094E9")),
                )),
                 SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
                Row(
                  children: [
                    Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 90,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[700],
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                  ],
                ),
                SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Divider(color: HexColor("#E5E4E4"),),
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("First name",style: TextStyle(
                        
                        fontSize: 20,
                        color: HexColor("#2094E9")),),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Stephanie",style: TextStyle(
                        
                        fontSize: 20,
                        color: Colors.black,),
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Divider(color: HexColor("#E5E4E4"),),
                
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Last name",style: TextStyle(
                        
                        fontSize: 20,
                        color: HexColor("#2094E9")),),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Yeboha",style: TextStyle(
                        
                        fontSize: 20,
                        color: Colors.black,),
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Divider(color: HexColor("#E5E4E4"),),
               
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Phone number",style: TextStyle(
                        
                        fontSize: 20,
                        color: HexColor("#2094E9")),),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("080935487391",style: TextStyle(
                        
                        fontSize: 20,
                        color: Colors.black,),
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Divider(color: HexColor("#E5E4E4"),),
               
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Email",style: TextStyle(
                        
                        fontSize: 20,
                        color: HexColor("#2094E9")),),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Stephanieyeboha’gmail.com",style: TextStyle(
                        
                        fontSize: 20,
                        color: Colors.black,),
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Divider(color: HexColor("#E5E4E4"),),
            Divider(color: HexColor("#E5E4E4"),),
               
             SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Password",style: TextStyle(
                        
                        fontSize: 20,
                        color: HexColor("#2094E9")),),
            ),
              SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
              child: Text("*******",style: TextStyle(
                        
                        fontSize: 20,
                        color: Colors.black,),
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Divider(color: HexColor("#E5E4E4"),),

          ],
        ),
      ),
    );
  }
}
