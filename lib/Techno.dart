import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Assuming this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';
class Techno extends StatelessWidget {
  const Techno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> TechnoConfigurations = [
      PhoneConfiguration(
        'Tecno Phantom X2 Pro',
        '256 GB', // Storage
        '40,000 ETB',  // Price
        '5000 mA',    // Battery
        '13 MP', // Camera
        'Android 12, HiOS 12', // Other features
      ),
      PhoneConfiguration(
        'Tecno Camon 20 Pro 5G',
        '256 GB', // Storage
        '20,000 ETB', // Price
        '3900 mA',    // Battery
        '64 MP', // Camera
        'Android 13, HiOS 13', // Other features
      ),
      PhoneConfiguration(
        'Tecno Spark 10 Pro',
        '128 GB', // Storage
        '12,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Android 13, HiOS 12.6', // Other features
      ),
      PhoneConfiguration(
        'Tecno Pova 5G',
        '128 GB', // Storage
        '16,000 ETB',  // Price
        '6000 mA',    // Battery
        '50 MP', // Camera
        'Android 12 (Go edition)', // Other features
      ),
      PhoneConfiguration(
        'Tecno Pop 7 Pro',
        '64 GB', // Storage
        '7,000 ETB',  // Price
        '5000 mA',    // Battery
        '13 MP', // Camera
        'Android 12, One UI 4.1', // Other features
      ),
      PhoneConfiguration(
        'Tecno Camon 18 Premier',
        '256 GB', // Storage
        '17,000 ETB',  // Price
        '4750 mA',    // Battery
        '64 MP', // Camera
        'Android 11, HiOS 8.0', // Other features
      ),
      PhoneConfiguration(
        'Tecno Spark 5 Pro',
        '64 GB', // Storage
        '8,000 ETB',  // Price
        '5000 mA',    // Battery
        '13 MP', // Camera
        'Android 11 (Go edition), HiOS 7.6', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50], // Background color for Techno Page
      appBar: AppBar(
        title: const Text('Techno Page'),
        backgroundColor: Colors.green, // AppBar color for Techno Page
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the smart Techno Page!',
              style: TextStyle(
                color: Colors.black, // Font color for the text on Techno Page
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50), // Adds spacing before the image
            Image.network(
              'https://th.bing.com/th/id/R.7c9439cf3b800309de703a9f371f3a10?rik=vlCDEFMzegxvkw&pid=ImgRaw&r=0', // Techno image
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
                      phoneModelName: 'Tecno',
                      configurations: TechnoConfigurations,
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
