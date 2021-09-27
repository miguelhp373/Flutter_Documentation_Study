// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:curso_flutterando/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      drawer: Drawer(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://meragor.com/files/styles//ava_800_800_wm/god_of_war_kratos_sony_santa_monica.jpg'),
                ),
                accountName: Text('Miguelhp'),
                accountEmail: Text('Test@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Menu', style: TextStyle(fontSize: 15)),
              subtitle: Text('Tela Inicial'),
              onTap: () {
                print('Home');
              },
            ),
            ListTile(
              leading: Icon(Icons.door_back_door),
              title: const Text('Sair', style: TextStyle(fontSize: 15)),
              subtitle: Text('Sair da Aplicação'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          CustomSwitch(),
        ],
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity, //prenche o espaço disponivel
        height: double.infinity,
        child: ListView(
          children: [
            Text(
              'Contador: $counter',
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        },
      ),
    );
  }
}
