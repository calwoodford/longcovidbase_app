import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes the debug banner

      home: Scaffold(
        backgroundColor: Color(0xFF07122A),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 200.0, height: 140.0),
                      Image.asset(
                        'assets/images/transparentlogogif.gif',
                        height: 200,
                      ),
                      SizedBox(width: 200.0, height: 50.0),
                      Text(
                        'Welcome to Long Covid Base',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 200.0, height: 30.0),
                      Text(
                        'longcovidbase.com',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 10),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 200.0, height: 60.0),
                      Container(
                        width: 245,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  final String labelText;
  final IconData? suffixIcon; // New property for suffix icon

  MyWidget({required this.labelText, this.suffixIcon});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          child: TextField(
            onChanged: (text) {
              setState(() {
                _inputText = text;
              });
            },
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon != null
                  ? Icon(widget.suffixIcon,
                      size: 20) // Use the provided suffix icon
                  : null, // If no suffix icon is provided, set to null
              contentPadding: EdgeInsets.symmetric(
                vertical: 1, // Adjust the vertical padding
                horizontal: 1,
              ), // Adjust the horizontal padding
              labelText: widget.labelText,
              // Use the provided labelText
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

//
