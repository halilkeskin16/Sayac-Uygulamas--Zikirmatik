import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/zikirmatik.png',
                    width: 300,
                  ),
                  Positioned(
                    top: 48,
                    right: 75,
                    child: Text(
                      '$_counter',
                      style: _counterText(),
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    child: _incrementButton(),
                  ),
                  Positioned(
                    right: 76,
                    bottom: 115,
                    child: _resetButton(),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetCounter,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  TextStyle _counterText() {
    return const TextStyle(
        fontFamily: 'Digital17', fontSize: 50, color: Colors.white);
  }
}
