import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/bottommenu.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/page2.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/page3.dart';
import 'package:latihan_4/confirmationpage.dart';
import 'package:latihan_4/detailpage.dart';
import 'package:latihan_4/errorpage.dart';
import 'package:latihan_4/homepage1.dart';
import 'package:latihan_4/loginpage.dart';
import 'package:latihan_4/personalization.dart';
import 'package:latihan_4/profilepage.dart';
import 'package:latihan_4/releasepage.dart';
import 'package:latihan_4/settingspage.dart';
import 'package:latihan_4/signuppage.dart';
import 'package:latihan_4/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Bottommenu(),
      // routes: {Detail.nameRoute :(context) => Detail()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
