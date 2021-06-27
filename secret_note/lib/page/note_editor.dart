import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class noteEditor extends StatefulWidget {
  List list;
  int index;

  noteEditor({this.index, this.list});

  @override
  _noteEditorState createState() => _noteEditorState();
}

class _noteEditorState extends State<noteEditor> {
  TextEditingController controllerTitle;
  TextEditingController controllerCategory;
  TextEditingController controllerContent;

  void editData() {
    var url = "http://localhost/secret_note/updatedata.php";
    http.post(url, body: {
      "id": widget.list[widget.index]['title'],
      "title": controllerTitle.text,
      "category": controllerCategory.text,
      "content": controllerContent.text,
    });
  }

  void delData() {
    var url = "http://localhost/secret_note/deldata.php";
    http.post(url, body: {
      "title": widget.list[widget.index]['title'],
    });
  }

  void initState() {
    controllerTitle =
        new TextEditingController(text: widget.list[widget.index]['title']);
    controllerCategory =
        new TextEditingController(text: widget.list[widget.index]['category']);
    controllerContent =
        new TextEditingController(text: widget.list[widget.index]['content']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Read Note"),
        actions: [
          TextButton(
              onPressed: () {
                delData();
                Navigator.pop(context);
              },
              child: Text(
                "Delete",
                style: TextStyle(color: Colors.white),
              ))
        ],
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
                decoration: InputDecoration(border: InputBorder.none),
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
                decoration: InputDecoration(border: InputBorder.none),
                controller: controllerCategory,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.white,
              child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(border: InputBorder.none),
                  controller: controllerContent),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            editData();
            Navigator.pop(context);
          },
          child: Icon(Icons.check)),
    );
  }
}
