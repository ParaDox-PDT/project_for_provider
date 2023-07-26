import 'package:flutter/material.dart';

import '../app_routes.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Second Screen",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
    );
  }
}
