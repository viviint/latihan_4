import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/confirmationpage.dart';
import 'package:latihan_4/pages/login/web_login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/circlelogo.png')),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 11,
          ),
          Expanded(
              child: Form(
                  key: _formKey,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "must be filled";
                              }
                              if (value.isAlphabetOnly) {
                                return "Wrong Email ";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Pasword",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "must be filled";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Date of birth",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "must be filled";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          RichText(
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: "By signing up, you agree to our",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: " Terms, Data Policy ",
                                    style: TextStyle(color: Colors.orange)),
                                TextSpan(
                                    text: " and ",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "Cookies Policy",
                                    style: TextStyle(color: Colors.orange))
                              ])),
                          SizedBox(
                            height: 18,
                          ),
                          ButtonTheme(
                            minWidth: 500,
                            height: 70,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.indigo)),
                              color: Colors.indigo,
                              textColor: Colors.white,
                              child: const Text("Register",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Get.to(ConfiR());
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonTheme(
                            minWidth: 500,
                            height: 70,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.indigo)),
                              color: Colors.white,
                              textColor: Colors.indigo,
                              child: Text("Cancel",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                {
                                  Get.to(WebLogin());
                                }
                              },
                            ),
                          )
                        ],
                      )))),
        ],
      )),
    );
  }
}
