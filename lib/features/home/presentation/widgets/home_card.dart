import 'package:flutter/material.dart';
import 'package:flutter_inventory/features/add_item/presentation/add_item_page.dart';
import 'package:flutter_inventory/features/authentication/presentation/login_page.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
    final request = context.watch<CookieRequest>();

    return InkWell(
      onTap: () async {
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
        } else if (text == "Logout") {
          final response = await request.logout(
              // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
              "http://10.0.2.2:8000/auth/logout/");
          String message = response["message"];
          if (response['status']) {
            String uname = response["username"];
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("$message Sampai jumpa, $uname."),
            ));
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("$message"),
            ));
          }
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
