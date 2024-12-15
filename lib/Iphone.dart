// Iphone.dart
import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';

class Iphone extends StatelessWidget {
  const Iphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> iphoneConfigurations = [
      PhoneConfiguration(
        'iPhone 15 Pro Max',
        '256GB',
        '165,000 ETB',
        '4500 mAh',
        '12 MP',
        'A13 chip, iOS 15',
      ),
      PhoneConfiguration(
        'iPhone 14 Pro Max',
        '128GB',
        '95,000 ETB',
        '4000 mAh',
        '12 MP',
        'A13 chip, iOS 15',
      ),
      PhoneConfiguration(
        'iPhone 13 Pro Max',
        '128GB', // Storage
        '93,000 ETB',  // Price
        '4000 mA',    // Battery
        '12 MP', // Camera
        'A13 chip, iOS 15', // Other features
      ),
      PhoneConfiguration(
        'iPhone 12 Pro Max',
        '256GB', // Storage
        '44,000 ETB',  // Price
        '4000 mA',    // Battery
        '12 MP', // Camera
        'A13 chip, iOS 15', // Other features
      ),
      PhoneConfiguration(
        'iPhone 11 Pro Max',
        '256GB', // Storage
        '53,000 ETB',  // Price
        '4000 mA',    // Battery
        '12 MP', // Camera
        'A13 chip, iOS 15', // Other features
      ),
      PhoneConfiguration(
        'iPhone Xs Max',
        '256GB', // Storage
        '33,000 ETB',  // Price
        '3000 mA',    // Battery
        '12 MP', // Camera
        'A13 chip, iOS 15', // Other features
      ),
      // Add more configurations as needed
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('iPhone Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart iPhone Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network with error handling
            Image.network(
              'https://th.bing.com/th/id/OIP.HdFzMBPOKKKvmqjw28b1NAHaE7?w=283&h=189&c=7&r=0&o=5&dpr=1.1&pid=1.7',
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
                // Navigate to the configuration page, passing in the model name and configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'iPhone Models', // Adjust this as needed
                      configurations: iphoneConfigurations,
                    ),
                  ),
                );
              },
              child: const Text('View iPhone Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
