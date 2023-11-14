import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';

class AddItemPage extends StatefulWidget {
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _quantity = 0;
  String _category = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FIAppbar(title: "Add new Item",),
      // TODO: Tambahkan drawer yang sudah dibuat di sini
      drawer: const Drawer(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(14),
              child: Container(
                width: width,
                height: height / 1.5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xfff0c26a),
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Nama Produk",
                          labelStyle: TextStyle(color: Color(0xfff0c26a)),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfff0c26a), width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _name = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Nama tidak boleh kosong!";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Quantity",
                          labelStyle: TextStyle(color: Color(0xfff0c26a)),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfff0c26a), width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        // TODO: Tambahkan variabel yang sesuai
                        onChanged: (String? value) {
                          setState(() {
                            _quantity = int.parse(value!);
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Quantity tidak boleh kosong!";
                          }
                          if (int.tryParse(value) == null) {
                            return "Quantity harus berupa angka!";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Category",
                          labelStyle: TextStyle(color: Color(0xfff0c26a)),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfff0c26a), width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            // TODO: Tambahkan variabel yang sesuai
                            _category = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Category tidak boleh kosong!";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Description",
                          labelStyle: TextStyle(color: Color(0xfff0c26a)),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfff0c26a), width: 2.0),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            // TODO: Tambahkan variabel yang sesuai
                            _description = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Description tidak boleh kosong!";
                          }
                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xfff0c26a)),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                items.add(InventoryItem(
                                    name: _name,
                                    quantity: _quantity,
                                    category: _category,
                                    description: _description));

                                print(items);
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text(
                                          'Produk berhasil tersimpan'),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Nama: $_name'),
                                            Text('Kuantitas: $_quantity'),
                                            Text('Deskripsi: $_description'),

                                            // TODO: Munculkan value-value lainnya
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          child: const Text('OK'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                              _formKey.currentState!.reset();
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
