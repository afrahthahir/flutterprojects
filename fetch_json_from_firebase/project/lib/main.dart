//import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;
import 'package:project/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Load and fetch Json using firebase',
      home: MyHomePage(title: 'Load JSON to Firebase'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _saveData() {
    loadJson();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const ProductPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: Text(widget.title),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.orange.shade300,
          onPressed: _saveData,
          child: const Text('Load JSON to Firebase'),
        ),
      ),
    );
  }
}

//loads Json data from assets to firebase cloud
loadJson() async {
  String data = await rootBundle.loadString('assets/data.json');
  final jsonResult = jsonDecode(data);
  // ignore: avoid_print
  //print(jsonResult);
  Uri url = Uri.parse(
      "https://digital-loan-b557f-default-rtdb.firebaseio.com/data.json");

  final jsonencoded = jsonEncode(jsonResult);
  await http.post(url, body: jsonencoded);
}
