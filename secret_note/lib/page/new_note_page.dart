import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewNote extends StatefulWidget {
  List list;
  int index;

  NewNote({this.index, this.list});

  @override
  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  TextEditingController controllerTitle;
  TextEditingController controllerCategory;
  TextEditingController controllerContent;

  void addData() {
    var url = "http://localhost/secret_note/adddata.php";

    http.post(url, body: {
      "title": controllerTitle.text,
      "category": controllerCategory.text,
      "content": controllerContent.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("New Note"),
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Colors.black12, width: 5),
                      bottom: BorderSide(color: Colors.black12, width: 5))),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Title",
                    hintStyle: TextStyle(color: Colors.black38)),
                controller: controllerTitle,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 5))),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Category",
                    hintStyle: TextStyle(color: Colors.black38)),
                controller: controllerCategory,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.white,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Content",
                    hintStyle: TextStyle(color: Colors.black38)),
                controller: controllerContent,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addData();
            Navigator.pop(context);
          },
          child: Icon(Icons.check)),
    );
  }
}
