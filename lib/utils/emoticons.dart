import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  final String emoticons;
  const Emoticons({Key? key, required this.emoticons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        emoticons,
        style: TextStyle(fontSize: 28),
      )),
    );
  }
}
