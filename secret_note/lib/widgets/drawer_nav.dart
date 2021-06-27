import 'package:flutter/material.dart';

class DrawerNavigation extends StatelessWidget {
  String username;

  DrawerNavigation({this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                username,
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Text(
                  username.substring(0, 1).toUpperCase(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings),
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
