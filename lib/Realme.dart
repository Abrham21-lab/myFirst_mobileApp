import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage

class Realme extends StatelessWidget {
  const Realme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> realmeConfigurations = [
      PhoneConfiguration(
        'Realme GT 2 Pro',
        '256 GB', // Storage
        '45,000 ETB',  // Price
        '5000 mA',    // Battery
        '50 MP', // Camera
        'Realme UI 3.0, based on Android 12', // Other features
      ),
      PhoneConfiguration(
        'Realme 9 Pro+',
        '128 GB', // Storage
        '25,000 ETB',  // Price
        '4500 mA',    // Battery
        '50 MP', // Camera
        'Realme UI 3.0, based on Android 12', // Other features
      ),
      PhoneConfiguration(
        'Realme 8 Pro',
        '128 GB', // Storage
        '20,000 ETB',  // Price
        '4500 mA',    // Battery
        '12 MP', // Camera
        'Realme UI 2.0, based on Android 11', // Other features
      ),
      PhoneConfiguration(
        'Realme Narzo 50',
        '128 GB', // Storage
        '14,000 ETB',  // Price
        '5000 mA',    // Battery
        '2 MP', // Camera
        'Realme UI 2.0, based on Android 11', // Other features
      ),
      PhoneConfiguration(
        'Realme C35',
        '128 GB', // Storage
        '9,000 ETB',  // Price
        '5000 mA',    // Battery
        '12 MP', // Camera
        'A13 chip, iOS 15', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Realme Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart Realme Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://th.bing.com/th/id/OIP.7_MoJF6CrOB3c9bCxvPLQAAAAA?rs=1&pid=ImgDetMain',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Image could not be loaded.');
              },
            ),

            const SizedBox(height: 30),

            // Button to navigate to the phone configuration page
            ElevatedButton(
              onPressed: () {
                // Navigate to the configuration page, passing the list of Realme configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Realme', // Pass the phone model name
                      configurations: realmeConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View Realme Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
