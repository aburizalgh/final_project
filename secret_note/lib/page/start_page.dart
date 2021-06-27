import 'package:flutter/material.dart';
import 'package:secret_note/page/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "SECRET NOTE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.black38)),
                      controller: TextEditingController(),
                    )),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black38)),
                    controller: TextEditingController(),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage())),
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Center(
                      child: Text(
                        "ENTER",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
