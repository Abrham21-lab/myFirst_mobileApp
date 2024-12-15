import 'package:flutter/material.dart';
import 'ConfigurationPage.dart';
class PhoneConfiguration {
  final String model;
  final String storage;
  final String price;
  final String battery;
  final String camera;
  final String otherFeatures;

  PhoneConfiguration(this.model, this.storage, this.price, this.battery, this.camera, this.otherFeatures);
}

class PhoneConfigurationPage extends StatelessWidget {
  final PhoneConfiguration configuration;

  const PhoneConfigurationPage({Key? key, required this.configuration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(configuration.model),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Model: ${configuration.model}', style: TextStyle(fontSize: 18)),
            Text('Storage: ${configuration.storage}', style: TextStyle(fontSize: 18)),
            Text('Price: ${configuration.price}', style: TextStyle(fontSize: 18)),
            Text('Battery: ${configuration.battery}', style: TextStyle(fontSize: 18)),
            Text('Camera: ${configuration.camera}', style: TextStyle(fontSize: 18)),
            Text('Other Features: ${configuration.otherFeatures}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
