import 'package:flutter/material.dart';
import 'package:weather_app/screens/view_page.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ViewPage(),
    );
  }
}
