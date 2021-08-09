import 'package:flutter/material.dart';
import 'package:global_vegetal/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(0, 49, 67, 1),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
