import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = ['Home', 'BMI Calculator', 'Training'];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Globo Fitness',
            style: TextStyle(color: Colors.white, fontSize: 28))));

    // for (var element in menuTitles) {
    //   menuItems.add(ListTile(
    //       title: Text(element, style: TextStyle(fontSize: 18)), onTap: () {}));
    // }

    menuTitles.forEach((String element) {
      menuItems.add(ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)), onTap: () {}));
    });
    return menuItems;
  }
}
