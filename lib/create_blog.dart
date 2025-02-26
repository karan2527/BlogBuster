import 'package:flutter/material.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({super.key});

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
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
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child:  Icon(Icons.file_upload),
              
            ),
          
        ],
      ),
    );
  }
}