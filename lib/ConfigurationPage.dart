// ConfigurationPage.dart
import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart';

class ConfigurationPage extends StatelessWidget {
  final String phoneModelName;
  final List<PhoneConfiguration> configurations;

  const ConfigurationPage({
    Key? key,
    required this.phoneModelName,
    required this.configurations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$phoneModelName Configurations'),
      ),
      body: ListView.builder(
        itemCount: configurations.length,
        itemBuilder: (context, index) {
          final config = configurations[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Model: ${config.model}', style: TextStyle(fontSize: 18)),
                  Text('Storage: ${config.storage}', style: TextStyle(fontSize: 18)),
                  Text('Price: ${config.price}', style: TextStyle(fontSize: 18)),
                  Text('Battery: ${config.battery}', style: TextStyle(fontSize: 18)),
                  Text('Camera: ${config.camera}', style: TextStyle(fontSize: 18)),
                  Text('Other Features: ${config.otherFeatures}', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
