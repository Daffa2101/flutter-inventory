import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';
import 'package:flutter_inventory/core/widgets/fi_drawer.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/widgets/item_card.dart';
import 'package:http/http.dart' as http;

class ItemListPage extends StatefulWidget {
  const ItemListPage({super.key});

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  Future<List<InventoryItem>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse('http://10.0.2.2:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<InventoryItem> listInventoryItem = [];
    for (var d in data) {
      if (d != null) {
        listInventoryItem.add(InventoryItem.fromJson(d));
      }
    }

    print(listInventoryItem);
    return listInventoryItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FIAppbar(title: "Inventory List"),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
                        "Tidak ada data produk.",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.separated(
                    padding: EdgeInsets.all(0),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 12,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Fields item = snapshot.data![index].fields;

                      return ItemCard(
                        items: item,
                      );
                    },
                  );
                }
              }
            }));
  }
}
