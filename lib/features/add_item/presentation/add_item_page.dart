import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inventory/core/widgets/fi_appbar.dart';
import 'package:flutter_inventory/features/home/presentation/home_page.dart';
import 'package:flutter_inventory/features/item_list/data/models/inventory_item_model.dart';
import 'package:flutter_inventory/features/item_list/presentation/item_list_page.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
    final request = context.watch<CookieRequest>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FIAppbar(
        title: "Add new Item",
      ),
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
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // Kirim ke Django dan tunggu respons
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                final response = await request.postJson(
                                    "http://10.0.2.2:8000/create-flutter/",
                                    jsonEncode(<String, String>{
                                      'name': _name,
                                      'amount': _quantity.toString(),
                                      'description': _description,
                                      'category': _category,
                                      // TODO: Sesuaikan field data sesuai dengan aplikasimu
                                    }));
                                if (response['status'] == 'success') {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        Text("Produk baru berhasil disimpan!"),
                                  ));
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "Terdapat kesalahan, silakan coba lagi."),
                                  ));
                                }
                              }
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
