// ModelPage.dart
import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart';
import 'ConfigurationPage.dart';
class ModelPage extends StatelessWidget {
  final String phoneModelName;
  final List<PhoneConfiguration> configurations;
  final Color color;

  const ModelPage({
    Key? key,
    required this.phoneModelName,
    required this.configurations,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$phoneModelName Page'),
        backgroundColor: color,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConfigurationPage(
                  phoneModelName: phoneModelName,
                  configurations: configurations,
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Text('View $phoneModelName Configurations'),
        ),
      ),
    );
  }
}
