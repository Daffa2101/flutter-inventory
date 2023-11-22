// To parse this JSON data, do
//
//     final inventoryItem = inventoryItemFromJson(jsonString);

import 'dart:convert';

List<InventoryItem> inventoryItemFromJson(String str) => List<InventoryItem>.from(json.decode(str).map((x) => InventoryItem.fromJson(x)));

String inventoryItemToJson(List<InventoryItem> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InventoryItem {
    String model;
    int pk;
    Fields fields;

    InventoryItem({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory InventoryItem.fromJson(Map<String, dynamic> json) => InventoryItem(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int amount;
    String description;
    String category;

    Fields({
        required this.user,
        required this.name,
        required this.amount,
        required this.description,
        required this.category,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "description": description,
        "category": category,
    };
}
