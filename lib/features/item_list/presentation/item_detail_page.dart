import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {required this.name,
      required this.amount,
      required this.category,
      required this.description,
      super.key});

  final String name;
  final int amount;
  final String category;
  final String description;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: FIAppbar(title: "Detail"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 1 / 3,
              child: Image.asset('assets/images/item.png'),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfff0c26a),
                  borderRadius: BorderRadius.circular(25)),
              child: Text('  ${category}  '),
            ),
            SizedBox(
              height: 5,
            ),
            Text(description, overflow: TextOverflow.ellipsis, maxLines: 2)
          ],
        ),
      ),
    );
  }
}
