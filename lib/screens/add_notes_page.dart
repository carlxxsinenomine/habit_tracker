import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNotesPage extends StatelessWidget {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  AddNotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notes"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Title.....",
                    hintStyle: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextField(
                  controller: descriptionController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Description...",
                    hintStyle: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
              )


          ],
        ),
      ),
    );
  }
}
