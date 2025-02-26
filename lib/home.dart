import 'package:flutter/material.dart';
import 'create_blog.dart'; // Import the file where CreateBlog is defined

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
          mainAxisAlignment: MainAxisAlignment.center,
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => CreateBlog()));
            },
            child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}