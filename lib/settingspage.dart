import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_4/bottommenu/bottommenu%20copy/bottommenu.dart';
import 'package:latihan_4/profilepage.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              Get.to(Bottommenu());
            },
          ),
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  width: 95,
                  height: 95,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/todo.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shoto Todoroki", style: TextStyle(fontSize: 18)),
                    SizedBox(
                      height: 7,
                    ),
                    GestureDetector(
                      child: Text("View profile",
                          style: TextStyle(color: Colors.indigo, fontSize: 17)),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Profileview()));
                      },
                    ),
                  ]),
            ],
          ),
          Container(
            height: 30,
            width: Get.width,
            color: Colors.grey[100],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Notifications'),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    Text('Data and Storages')
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: Get.width,
            color: Colors.grey[100],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Subscription'),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    Text('Linked Account')
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: Get.width,
            color: Colors.grey[100],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(25),
                child: Text('About Audiobooks'),
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          ButtonTheme(
            minWidth: 300,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.orange)),
              color: Colors.white,
              textColor: Colors.orange,
              child: Text("Log out", style: TextStyle(fontSize: 15)),
              onPressed: () {},
            ),
          )
        ]));
  }
}
