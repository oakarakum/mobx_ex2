// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 75,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("url"))),
          ),
          SizedBox(height: 50),
          Text("ada")
        ],
      ),
    );
  }
}
