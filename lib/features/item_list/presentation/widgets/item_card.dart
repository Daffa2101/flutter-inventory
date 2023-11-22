import 'package:flutter/material.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.items});

  final Fields items;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          width: width,
          height: height * 0.175,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14), color: Colors.white24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: width * 0.3,
                height: height * 0.13,
                child: Image.asset(
                  'assets/images/item.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    items.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfff0c26a),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text('  ${items.category}  '),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: width * 0.4,
                    child: Text(items.description,
                        overflow: TextOverflow.ellipsis, maxLines: 2),
                  )
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xfff0c26a),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 20,
                        )),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xfff0c26a))),
                    child: Center(
                      child: Text(
                        '${items.amount}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xfff0c26a),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          size: 20,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
