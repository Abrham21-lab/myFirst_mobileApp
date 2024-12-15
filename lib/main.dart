import 'package:flutter/material.dart';
import 'Iphone.dart';
import 'huawe.dart';
import 'motorola.dart';
import 'onePlus.dart';
import 'oppo.dart';
import 'Samsung.dart';
import 'Techno.dart';
import 'VIVO.dart';
import 'Xiaomi.dart';
import 'Infinix.dart';
import 'Itel.dart';
import 'Realme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Models',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> phoneModels = [
      {'label': 'iPhone', 'page': const Iphone(), 'color': Colors.blue},
      {'label': 'Huawei', 'page': const Huawe(), 'color': Colors.red},
      {'label': 'Techno', 'page': const Techno(), 'color': Colors.blue},
      {'label': 'Samsung', 'page': const Samsung(), 'color': Colors.yellow},
      {'label': 'Infinix', 'page': const Infinix(), 'color': Colors.purple},
      {'label': 'Itel', 'page': const Itel(), 'color': Colors.white},
      {'label': 'Motorola', 'page': const motorola(), 'color': Colors.orange},
      {'label': 'OnePlus', 'page': const onePlus(), 'color': Colors.brown},
      {'label': 'Oppo', 'page': const oppo(), 'color': Colors.green},
      {'label': 'Realme', 'page': const Realme(), 'color': Colors.purple},
      {'label': 'VIVO', 'page': const VIVO(), 'color': Colors.white},
      {'label': 'Xiaomi', 'page': const Xiaomi(), 'color': Colors.green},
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text(
          'Main Page',
          textDirection: TextDirection.rtl, // Add textDirection here
        ),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: phoneModels.map((model) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => model['page']),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: model['color'],
                    foregroundColor: model['color'] == Colors.white
                        ? Colors.black
                        : Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 12.0),
                  ),
                  child: Text('Go to ${model['label']} Page'),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
