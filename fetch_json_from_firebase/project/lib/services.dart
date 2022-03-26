import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:project/products.dart';

class Service {
  static Future<List<Products>> getproducts() async {
    final response = await http.get(
      Uri.parse(
          'https://firebasestorage.googleapis.com/v0/b/digital-loan-b557f.appspot.com/o/data.json?alt=media'),
    );

    final products = json.decode(response.body);
    //print(products);

    return products.map<Products>(Products.fromJson).toList();
  }
}
