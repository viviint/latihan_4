import 'package:flutter/cupertino.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Search'),
    );
  }
}
