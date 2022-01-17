import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_4/forgetpass.dart';
import 'package:latihan_4/signuppage.dart';
import 'package:latihan_4/welcomepage.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/circlelogo.png'))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Login to Your Account",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                ),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                                validator: (value){
                         if (value!.isPhoneNumber) {
                           return "wrong email";
                         } else 
                         if (value.isAlphabetOnly) {
                          return "wrong email ";
                         } else {} return null; },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                                validator: (value){
                         if (value!.isEmpty) {
                          return "wrong password";
                         } else {} return null; },
                            ),
                          ),
                          CheckboxListTile(
                            title: const Text("Remember me"),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: check,
                            onChanged: (value) => setState(
                              () {
                                check = !check;
                              },
                            ),
                            activeColor: Colors.blue,
                            checkColor: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ButtonTheme(
                              minWidth: 500,
                              height: 60,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                        color: Colors.indigo.shade700)),
                                color: Colors.indigo.shade700,
                                textColor: Colors.white,
                                child: const Text("Login",
                                    style: TextStyle(fontSize: 15)),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Get.to(Welcome());
                                  }
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Forgetpassword()));
                                },
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Or login with",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15)),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 90,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigo,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: Image.asset(
                                              "assets/google.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 90,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigo,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            child: Image.asset(
                                              "assets/facebook.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 90,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigo,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: Image.asset(
                                              "assets/twitter.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an accoun't ? "),
                              GestureDetector(
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignUp()));
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
