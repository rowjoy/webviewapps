// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sendmany1/progress.dart';

class Sleashscreen extends StatefulWidget {
  const Sleashscreen({Key? key}) : super(key: key);

  @override
  _SleashscreenState createState() => _SleashscreenState();
}

class _SleashscreenState extends State<Sleashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Progress()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset('assets/remitz-logo-min.png'),
        ),
      ),
    );
  }
}
