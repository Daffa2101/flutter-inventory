import 'package:flutter/material.dart';
import 'package:flutter_inventory/features/add_item/presentation/add_item_page.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        // Memunculkan SnackBar ketika diklik
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol $text!")));
        if (text == 'Tambah Item') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddItemPage()));
        } else if (text == 'Lihat Item') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ItemListPage()));
        } else {
          //logout ntar
        }
      },
      child: Material(
        color: Colors.white,
        elevation: 5,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          width: width * 1 / 3.5,
          height: height * 1 / 7,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    icon,
                    size: 20,
                    color: text == 'Lihat Item'
                        ? Colors.blue
                        : text == 'Tambah Item'
                            ? Color(0xfff0c26a)
                            : Colors.red,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
