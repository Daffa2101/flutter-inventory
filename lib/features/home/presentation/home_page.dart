import 'package:flutter/material.dart';
import 'package:flutter_inventory/features/home/presentation/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "Flutter Inventory",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeCard(
                width: width,
                height: height,
                color: Colors.lightGreen,
                icon: Icons.checklist,
                text: "Lihat Item",
              ),
              const SizedBox(
                height: 20,
              ),
              HomeCard(
                width: width,
                height: height,
                color: Colors.lightBlue,
                icon: Icons.add_shopping_cart,
                text: "Tambah Item",
              ),
              const SizedBox(
                height: 20,
              ),
              HomeCard(
                width: width,
                height: height,
                color: Colors.red,
                icon: Icons.logout,
                text: "Logout",
              )
            ],
          ),
        ),
      ),
    );
  }
}
