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
                      fontFamily: "SourceSansPro",
                      fontWeight: FontWeight.bold,
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

  Container getIconWithText(String text, IconData icon) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontFamily: "SourceSansPro", fontSize: 20),
          )
        ],
      ),
    );
  }
}
