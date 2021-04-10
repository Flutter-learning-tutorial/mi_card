import 'package:flutter/material.dart';

void main() {
  runApp(MICardApp());
}

class MICardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              Text("Sudhakar Krishnan",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      color: Colors.white,
                      fontSize: 40)),
              Text("Mobile Engineer",
                  style: TextStyle(
                      fontFamily: "SourceSansPro-Bold",
                      fontSize: 20,
                      color: Colors.teal[200],
                      letterSpacing: 6)),
              getIconWithText("+65 86264128", Icons.phone),
              getIconWithText("pingtosudhakar@gmail.com", Icons.email),
            ],
          ),
        ),
      ),
    );
  }

  Card getIconWithText(String text, IconData icon) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: TextStyle(fontFamily: "SourceSansPro", fontSize: 20),
        ),
      ),
    );
  }
}
