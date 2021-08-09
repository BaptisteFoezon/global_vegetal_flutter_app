import 'package:flutter/material.dart';
import 'package:global_vegetal/widgets/NavigationDrawerWidget.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(0, 49, 67, 1),
        iconTheme: IconThemeData(color: Color.fromRGBO(255, 187, 0, 1)),
        title: Text(
          "Global Vegetal",
          style: TextStyle(color: Color.fromRGBO(255, 187, 0, 1)),
        ),
      ),
      body: Container(),
    );
  }
}
