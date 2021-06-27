import 'package:flutter/material.dart';

class noteEditor extends StatefulWidget {
  List list;
  int index;

  noteEditor({this.index, this.list});

  @override
  _noteEditorState createState() => _noteEditorState();
}

class _noteEditorState extends State<noteEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read Note"),
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
                readOnly: true,
                decoration: InputDecoration(border: InputBorder.none),
                controller: TextEditingController(
                    text: widget.list[widget.index]['title']),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              color: Colors.white,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(border: InputBorder.none),
                controller: TextEditingController(
                    text: widget.list[widget.index]['content']),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
