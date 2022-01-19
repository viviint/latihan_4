import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendSelect extends StatefulWidget {
  final String? recommended;
  RecommendSelect({Key? key, required this.recommended}) : super(key: key);

  @override
  _RecommendSelectState createState() => _RecommendSelectState();
}

class _RecommendSelectState extends State<RecommendSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Container(
        width: 144,
        height: 50,
        child: Center(
          child: Text(
            widget.recommended!,
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
      ),
    );
  }
}
