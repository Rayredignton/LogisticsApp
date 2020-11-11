import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:logistics/utilities/assets.dart';
import 'package:logistics/utilities/validators/auth_validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailCtrl;
  TextEditingController passCtrl;
  bool _obscureText;
  @override
  void initState() {
    super.initState();
    _obscureText = true;
  }

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Inter-Medium",
                        fontWeight: FontWeight.w800,
                        color: HexColor("#4F4E4E")),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color: HexColor("#EEEEEE"),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Email / Phone Number",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#808080"),
                          fontFamily: "CerebriSans-Book")),
                  controller: emailCtrl,
                  validator: SignUpValidators.email,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color: HexColor("#EEEEEE"),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#808080"),
                          fontFamily: "CerebriSans-Book")),
                  controller: passCtrl,
                  validator: SignUpValidators.password,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color: HexColor("#2094E9"),
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
            ],
          ),
        ),
      ),
    );
  }
}
