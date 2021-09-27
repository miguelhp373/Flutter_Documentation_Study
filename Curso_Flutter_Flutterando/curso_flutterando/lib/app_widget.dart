import 'package:curso_flutterando/home_page/home_page.dart';
import 'package:curso_flutterando/login_page/login_page.dart';
import 'package:curso_flutterando/app_controller.dart';
import 'package:flutter/material.dart'; //este arquivo serve para deixar apenas o widget BUILD

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light //modo escuro(dark) claro(light)
                ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
