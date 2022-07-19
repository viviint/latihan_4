import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/forgetpass2.dart';

import 'package:latihan_4/pages/login/web_login.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final _formkey = GlobalKey<FormState>();
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
                    image: DecorationImage(
                        image: AssetImage('assets/circlelogo.png'))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  text: const TextSpan(children: [
                    TextSpan(
                        text:
                            "Please fill email or phone number and we'll send you a link to get back into your account.",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ])),
            ),
            SizedBox(
              height: 11,
            ),
            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Email/Phone Number",
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ButtonTheme(
                minWidth: 500,
                height: 70,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.indigo)),
                  color: Colors.indigo,
                  textColor: Colors.white,
                  child: const Text("Submit",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Get.to(Sent());
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonTheme(
                minWidth: 500,
                height: 70,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.indigo)),
                  color: Colors.white,
                  textColor: Colors.indigo,
                  child: const Text("Cancel",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    {
                      Get.to(WebLogin());
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
