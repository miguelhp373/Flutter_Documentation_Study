import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() {
    return ContadorState();
  }
}

class ContadorState extends State<Contador> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: GestureDetector(
          // ignore: prefer_const_constructors
          child: Text('contador $count'),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
