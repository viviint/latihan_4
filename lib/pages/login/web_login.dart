import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/controller/usercontroller.dart';
import 'package:latihan_4/forgetpass.dart';
import 'package:latihan_4/signuppage.dart';
import 'package:latihan_4/welcomepage.dart';
import 'package:latihan_4/widget/homeonboard.dart';

class WebLogin extends StatefulWidget {
  const WebLogin({Key? key}) : super(key: key);

  @override
  State<WebLogin> createState() => _WebLoginState();
}

class _WebLoginState extends State<WebLogin> {
  final usermodel = Get.put(UserController());
  final _formKey = GlobalKey<FormState>();
  bool check = false;
  late PageController pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: _pageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _loginContainer(),
      ),
    );
  }

  Widget _loginContainer() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            height: 187,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/circlelogo.png'),
                    fit: BoxFit.scaleDown)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text("Login to Your Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Expanded(
            child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "must be filled";
                    } else if (value != "vivi@gmail.com") {
                      return "wrong email ";
                    } else {
                      usermodel.user.email = value;
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "must be filled";
                    } else if (value != "1234") {
                      return "wrong password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 8,
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
                  activeColor: Colors.indigo,
                  checkColor: Colors.white,
                ),
                ButtonTheme(
                  minWidth: Get.width,
                  height: 68,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.indigo)),
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: const Text("Login", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.offAll(Welcome());
                      }
                    },
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
                            color: Colors.orange, fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Forgetpassword()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Or login with",
                        style: TextStyle(color: Colors.black87, fontSize: 18)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an accoun't ? ",
                      style: TextStyle(fontSize: 18),
                    ),
                    GestureDetector(
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => const SignUp()));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }

  Widget _fullScreenWeb() {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    _pageIndex = value;
                    if (_pageIndex < _pagesIntro().length) {}
                  });
                },
                children: _pagesIntro(),
              ),
            ),
          ),
          _loginContainer()
        ],
      ),
    );
  }

  List<Widget> _pagesIntro() {
    return [
      HomeON(
        title: "Tittle One",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/firstpage.png",
        index: 0,
        onTap: () {
          setState(() {
            pageController.animateToPage(pageController.page!.toInt() + 1,
                duration: Duration(milliseconds: 400), curve: Curves.easeIn);
          });
        },
      ),
      HomeON(
        title: "Tittle Two",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/secondpage.png",
        index: 1,
        onTap: () {
          setState(() {
            setState(() {
              pageController.animateToPage(pageController.page!.toInt() + 1,
                  duration: Duration(milliseconds: 400), curve: Curves.easeIn);
            });
          });
        },
      ),
      HomeON(
        title: "Tittle Three",
        subtitle: "Lorem ipsum dolor sit amet la maryame dor sut colondeum",
        imge: "assets/thirdpage.png",
        index: 2,
        onTap: () {
          Get.offNamed("/login");
        },
      )
    ];
  }
}
