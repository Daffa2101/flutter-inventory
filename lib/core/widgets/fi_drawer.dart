import 'package:flutter/material.dart';
import 'package:flutter_inventory/features/add_item/presentation/add_item_page.dart';
import 'package:flutter_inventory/features/home/presentation/home_page.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xfff0c26a),
            ),
            child: Column(
              children: [
                Text(
                  'Flutter Inventory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Aplikasi untuk mengelola inventorymu!",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemListPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_shopping_cart,
            ),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItemPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text('Logout'),
            onTap: () {
              //blm ada
            },
          ),
        ],
      ),
    );
  }
}
