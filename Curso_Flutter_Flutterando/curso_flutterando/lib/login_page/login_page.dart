// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:curso_flutterando/home_page/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: Image.asset("assets/images/logo.png"),
              ),
              Container(height: 20),
              // ignore: prefer_const_constructors
              Card(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 20,
                  bottom: 22,
                ),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 34),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      // ignore: prefer_const_constructors
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        label: Text('Email'),
                      ),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(height: 50),
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Senha"),
                      ),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (email == 'teste@gmail.com' && password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Text("Entrar"),
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              fit: BoxFit.cover),
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body()
      ]),
    );
  }
}
