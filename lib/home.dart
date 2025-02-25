import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "Blog",
              style: TextStyle(fontSize: 22),
              
            ),
            Text(
              "Buster",
              style: TextStyle(fontSize: 22, color: Colors.blue),
              
            )

          ],
        ),
      ),
    );
  }
}