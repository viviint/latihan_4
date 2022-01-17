import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/confirmationpage.dart';
import 'package:latihan_4/loginpage.dart';

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
            padding: const EdgeInsets.all(8.0),
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
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Expanded(
              child: ListView(
            shrinkWrap: true,
            children: [
              Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "tidak boleh kosong ";
                                  }
                                  if (value.isAlphabetOnly) {
                                    return "Wrong Email ";
                                  } else {}
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Pasword",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "tidak boleh kosong ";
                                  } else {}
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Date of birth",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "tidak boleh kosong ";
                                  } else {}
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: ButtonTheme(
                                minWidth: 500,
                                height: 70,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(
                                          color: Colors.indigo.shade700)),
                                  color: Colors.indigo.shade700,
                                  textColor: Colors.white,
                                  child: const Text("Register",
                                      style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Get.to(ConfiR());
                                    }
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: ButtonTheme(
                                minWidth: 500,
                                height: 70,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(color: Colors.indigo)),
                                  color: Colors.white,
                                  textColor: Colors.indigo,
                                  child: Text("Cancel",
                                      style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    {
                                      Get.to(Login());
                                    }
                                  },
                                ),
                              ),
                            )
                          ],
                        )),
                  )),
            ],
          )),
        ],
      )),
    );
  }
}
