import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  Future<List> getData() async {
    var data =
        await http.get(Uri.parse("http://127.0.0.1/secret_note/getdata.php"));
    var jsonData = json.decode(data.body);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return Listview.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: () =>
                  Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new detailPage(
                                  list: snapshot.data,
                                  index: index,
                                ))),
                )
              }
            );
          }
        },
      ),
    );
  }
}
