import 'package:flutter/material.dart';

class MyBottons extends StatelessWidget {
  final bgcolor;
  final String txt;
  final txtcolor;
  final bottonpressed;

  const MyBottons(
      {super.key,
        required this.bottonpressed,
      required this.bgcolor,
      required this.txt,
      required this.txtcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottonpressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: bgcolor,
            child: Center(
              child: Text(
                txt,
                style: TextStyle(color: txtcolor,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}