import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';
import 'package:flutter_inventory/core/widgets/fi_drawer.dart';
import 'package:flutter_inventory/features/home/presentation/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FIAppbar(
        title: "Home",
      ),
      drawer: LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Welcome to Flutter Inventory! ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: height * 1 / 3,
              child: Image.asset(
                'assets/images/home.png',
              ),
            ),
            Text(
              "Pilih salah satu menu dibawah ini : ",
              style: TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeCard(
                  color: Colors.lightGreen,
                  icon: Icons.checklist,
                  text: "Lihat Item",
                ),
                SizedBox(
                  height: 20,
                ),
                HomeCard(
                  color: Colors.lightBlue,
                  icon: Icons.add_shopping_cart,
                  text: "Tambah Item",
                ),
                SizedBox(
                  height: 20,
                ),
                HomeCard(
                  color: Colors.red,
                  icon: Icons.logout,
                  text: "Logout",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
