import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = 'spin';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 150,
        height: 150,
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (_anim == 'spin') {
                _anim = 'spin 2';
              } else {
                _anim = 'spin';
              }
            });
          },
          child: RiveAnimation.asset(
            'assets/gears.riv',
            animations: [_anim],
          ),
        ),
      ),
    ));
  }
}
