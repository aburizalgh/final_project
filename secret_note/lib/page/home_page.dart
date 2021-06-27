import 'package:flutter/material.dart';
import 'package:secret_note/page/new_note_page.dart';
import 'package:secret_note/widgets/drawer_nav.dart';
import 'package:secret_note/widgets/ui_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      drawer: DrawerNavigation(
        username: "Abu Rizal",
      ),
      appBar: AppBar(
        title: Text("Your Note"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          NoteList(
            title: "Note 1",
            content: "Lorem Ipsum Sit Amet Dolor",
          ),
          NoteList(
            title: "Note 2",
            content: "Lorem Ipsum Sit Amet Dolor",
          ),
          NoteList(
            title: "Note 3",
            content: "Lorem Ipsum Sit Amet Dolor",
          ),
          NoteList(
            title: "Note 4",
            content: "Lorem Ipsum Sit Amet Dolor",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewNote())),
          child: Icon(Icons.add)),
    );
  }
}
