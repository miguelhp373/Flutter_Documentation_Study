import 'package:flutter/material.dart';

class Render extends StatefulWidget {
  const Render({Key? key}) : super(key: key);

  @override
  State<Render> createState() {
    return RenderState();
  }
}

class RenderState extends State<Render> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Render"),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Align(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
