import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMacroWidget extends StatelessWidget {
  const MyMacroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 5)
          ]),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              CupertinoIcons.airplane,
              color: Colors.redAccent,
            ),
            Text(
              "467 Calories",
              style: TextStyle(
                fontSize: 9,
              ),
            )
          ],
        ),
      ),
    ));
  }
}

var macroWidget = Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 5
          )
        ]),
    child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            CupertinoIcons.airplane,
            color: Colors.redAccent,
          ),
          Text(
            "467 Calories",
            style: TextStyle(
              fontSize: 9,
            ),
          )
        ],
      ),
    ),
  )
);
