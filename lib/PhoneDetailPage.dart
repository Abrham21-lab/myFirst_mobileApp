import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart';

class PhoneDetailsPage extends StatelessWidget {
  final PhoneConfiguration config;

  PhoneDetailsPage({required this.config});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Storage: ${config.storage}', style: TextStyle(fontSize: 18)),
            Text('Price: \$${config.price}', style: TextStyle(fontSize: 18)),
            Text('Battery: ${config.battery} mAh', style: TextStyle(fontSize: 18)),
            Text('Camera: ${config.camera}', style: TextStyle(fontSize: 18)),
            Text('Other Features: ${config.otherFeatures}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
