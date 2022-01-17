import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/personalization.dart';
import 'package:latihan_4/signuppage.dart';
import 'package:latihan_4/welcomepage.dart';

class ConfiR extends StatefulWidget {
  const ConfiR({Key? key}) : super(key: key);

  @override
  _ConfiRState createState() => _ConfiRState();
}

class _ConfiRState extends State<ConfiR> {
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
                    image: DecorationImage(
                        image: AssetImage('assets/circlelogo.png'))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 10),
                  child: Text(
                    "Confirmation Code",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Enter the confirmation code we sent to",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: " your@email.com",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600))
                  ])),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Confirmation Code",
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
            ),
            RichText(
              overflow: TextOverflow.clip,
              text: const TextSpan(children: [
                TextSpan(
                    text: "Didn't receive the code? ",
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                  text: "Resend",
                  style: TextStyle(color: Colors.orange),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ButtonTheme(
                minWidth: 500,
                height: 70,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.indigo.shade700)),
                  color: Colors.indigo.shade700,
                  textColor: Colors.white,
                  child: const Text("Submit", style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(Welcome());
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
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.indigo)),
                  color: Colors.white,
                  textColor: Colors.indigo,
                  child: const Text("Cancel", style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    {
                      Get.to(SignUp());
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
