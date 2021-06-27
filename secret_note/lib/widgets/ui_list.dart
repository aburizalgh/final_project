import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  final String title;
  final String content;

  NoteList({this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Colors.white),
        child: ListTile(
          title: Text(title),
          subtitle: Text(content),
          onTap: () {},
        ),
      ),
    );
  }
}
