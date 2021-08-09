import 'package:flutter/material.dart';
import 'package:global_vegetal/screens/add_product_screen.dart';
import 'package:global_vegetal/screens/main_screen.dart';
import 'package:global_vegetal/widgets/searchBar.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorback = Color.fromRGBO(105, 161, 182, 1);
    const color = Color.fromRGBO(0, 49, 67, 1);
    return Drawer(
      child: Material(
        color: colorback,
        child: ListView(
          children: <Widget>[
            TextField(
              style: TextStyle(color: const Color.fromRGBO(0, 49, 67, 1)),
              decoration: InputDecoration(
                hintText: 'Rechercher',
                prefixIcon: Icon(
                  Icons.search,
                  color: color,
                ),
              ),
            ),
            _buildMenuItem(
              text: "Categorie 1",
              icon: Icons.category,
              onClicked: () => selectedItem(context, 0),
            ),
            _buildMenuItem(
              text: "Categorie 2",
              icon: Icons.category,
              onClicked: () => selectedItem(context, 1),
            ),
            _buildMenuItem(
              text: "Categorie 3",
              icon: Icons.category,
              onClicked: () => selectedItem(context, 2),
            ),
            _buildMenuItem(
              text: "Categorie 4",
              icon: Icons.category,
              onClicked: () => selectedItem(context, 3),
            ),
            const Divider(
              color: color,
            ),
            _buildMenuItem(
              text: "ajouter un produit",
              icon: Icons.add,
              onClicked: () => selectedItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildMenuItem({
  required IconData icon,
  required String text,
  VoidCallback? onClicked,
}) {
  const color = Color.fromRGBO(0, 49, 67, 1);

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
      );
      break;
    case 4:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AddProductScreen(),
        ),
      );
      break;
  }
}
