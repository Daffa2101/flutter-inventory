import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';
import 'package:flutter_inventory/core/widgets/fi_drawer.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/widgets/item_card.dart';

final List<InventoryItem> items = [];

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: LeftDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            // Background
            child: Center(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  SizedBox(
                    width: width * 0.190,
                  ),
                  Text(
                    "Inventory List",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xfff0c26a),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.elliptical(30, 30))),
            height: height * 0.25,
            width: width,
          ),

          Container(), // Required some widget in between to float AppBar

          Positioned(
            // To take AppBar Size only
            top: height * 0.25 - 30,
            left: 25.0,
            right: 25.0,
            child: AppBar(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: (() {
                  scaffoldKey.currentState!.openDrawer();
                }),
              ),
              primary: false,
              title: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey))),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.3,
            left: 20,
            right: 20,
            bottom: 0,
            child: ListView.separated(
              padding: EdgeInsets.all(0),
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ItemCard(
                  index: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
