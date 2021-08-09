import 'package:flutter/material.dart';
import 'package:global_vegetal/screens/add_product_screen.dart';
import 'package:global_vegetal/widgets/NavigationDrawerWidget.dart';
import 'package:global_vegetal/widgets/searchBar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchBarWidget(),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color.fromRGBO(105, 161, 182, 1),
              ),
              child: IconButton(
                color: Color.fromRGBO(0, 49, 67, 1),
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddProductScreen(),
                    ),
                  )
                },
                icon: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
