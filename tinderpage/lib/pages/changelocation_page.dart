import 'package:flutter/material.dart';

class ChageLocationPage extends StatefulWidget {
  const ChageLocationPage({Key? key}) : super(key: key);

  @override
  _ChageLocationPageState createState() => _ChageLocationPageState();
}

class _ChageLocationPageState extends State<ChageLocationPage> {
  Widget _body() {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity, //prenche o espaço disponivel
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                  'assets/images/white_tinder_logo_change_location.png'),
            ),
            const SizedBox(height: 25),
            const SizedBox(
                child: Text(
              'Location Changer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none,
              ),
            )),
            const SizedBox(height: 20),
            const SizedBox(
                child: Text(
              'Plugin app for Tinder',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            )),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: SizedBox(
                height: 60,
                width: 260,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: const Color(0xfffe3c72),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Facebook',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xfffe3c72)),
        ),
        _body(),
      ],
    );
  }
}
