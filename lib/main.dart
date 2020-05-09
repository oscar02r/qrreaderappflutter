import 'package:flutter/material.dart';
import 'package:rqreaderapp/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRReader',
      initialRoute: 'home',
      routes: {
        'home' : (context) => HomePage()
      },
    );
  }
}