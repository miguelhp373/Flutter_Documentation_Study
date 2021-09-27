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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        // ignore: prefer_const_constructors
        child: GestureDetector(
          // ignore: prefer_const_constructors
          child: Text(
            'contador $count',
            style: const TextStyle(
              fontSize: 27.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
