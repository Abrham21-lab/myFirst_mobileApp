import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Assuming this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';
class Xiaomi extends StatelessWidget {
  const Xiaomi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> XiaomiConfigurations = [
      PhoneConfiguration(
        'Xiaomi 13 Pro',
        '256 GB', // Storage
        '85,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Android 13, MIUI 14', // Other features
      ),
      PhoneConfiguration(
        'Xiaomi 12T Pro',
        '128 GB', // Storage
        '55,000 ETB',  // Price
        '5000 mA',    // Battery
        '200 MP', // Camera
        'Android 12, MIUI 13', // Other features
      ),
      PhoneConfiguration(
        'Xiaomi Redmi Note 12 Pro+',
        '128 GB', // Storage
        '35,000 ETB',  // Price
        '5000 mA',    // Battery
        '108 MP', // Camera
        'Android 12, MIUI 13', // Other features
      ),
      PhoneConfiguration(
        'Xiaomi Redmi Note 11 Pro',
        '128 GB', // Storage
        '22,000 ETB',  // Price
        '5000 mA',    // Battery
        '108 MP', // Camera
        'Android 11, MIUI 12', // Other features
      ),
      PhoneConfiguration(
        'Xiaomi Mi 11X Pro',
        '128 GB', // Storage
        '40,000 ETB',  // Price
        '4520 mA',    // Battery
        '108 MP', // Camera
        'Android 11, MIUI 12', // Other features
      ),
      PhoneConfiguration(
        'Xiaomi Mi 10i 5G',
        '128 GB', // Storage
        '20,000 ETB',  // Price
        '4820 mA',    // Battery
        '108 MP', // Camera
        'Android 10, MIUI 12', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50], // Background color for Xiaomi Page
      appBar: AppBar(
        title: const Text('Xiaomi Page'),
        backgroundColor: Colors.green, // AppBar color for Xiaomi Page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the smart Xiaomi Page!',
              style: TextStyle(
                color: Colors.black, // Font color for the text on Xiaomi Page
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50), // Adds spacing before the image
            Image.network(
              'https://th.bing.com/th/id/OIP.kHC7ctHg60yTp73zAenZGgHaEK?w=283&h=179&c=7&r=0&o=5&dpr=1.1&pid=1.7', // Xiaomi image
              width: 200, // Image width
              height: 200, // Image height
              fit: BoxFit.cover, // Make the image cover the space
              errorBuilder: (context, error, stackTrace) {
                return Text('Image could not be loaded'); // Error handling
              },
            ),
            SizedBox(height: 50), // Spacing before the button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Xiaomi',
                      configurations: XiaomiConfigurations,
                    ),
                  ),
                );
              },
              child: const Text('View Configurations'), // Button text
            ),
          ],
        ),
      ),
    );
  }
}
