import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/forgetpass2.dart';
import 'package:latihan_4/loginpage.dart';
import 'package:latihan_4/welcomepage.dart';

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
              padding: const EdgeInsets.all(8.0),
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
                  padding: EdgeInsets.only(left: 21, bottom: 7),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  text: const TextSpan(children: [
                    TextSpan(
                        text:
                            "Please fill email or phone number and we'll send you a link to get back into your account.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ])),
            ),
            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Email/Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  validator: (value) {
                    if (value!.isAlphabetOnly) {
                      return "wrong email/phone number";
                    } else {}
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
                      side: BorderSide(color: Colors.indigo.shade700)),
                  color: Colors.indigo.shade700,
                  textColor: Colors.white,
                  child: const Text("Submit", style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Get.to(Sent());
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
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
                  child: const Text("Cancel", style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    {
                      Get.to(Login());
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
