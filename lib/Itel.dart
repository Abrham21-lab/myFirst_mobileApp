import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage

class Itel extends StatelessWidget {
  const Itel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> itelConfigurations = [
      PhoneConfiguration(
        'Itel A80',
        '128 GB', // Storage
        '5500 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'Android 14', // Other features
      ),
      PhoneConfiguration(
        'Itel Color Pro 5G',
        '128 GB', // Storage
        '7500 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'Android 14', // Other features
      ),
      PhoneConfiguration(
        'Itel S24',
        '128 GB', // Storage
        '8500 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'strong camera', // Other features
      ),
      PhoneConfiguration(
        'Itel A50',
        '256GB', // Storage
        '4500 ETB',  // Price
        '4000 mA',    // Battery
        '8 MP', // Camera
        'Android 13', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Itel Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart Itel Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://th.bing.com/th/id/OIP.0laY6WEw_qAvrpY4EMc2QQAAAA?w=181&h=181&c=7&r=0&o=5&dpr=1.1&pid=1.7',
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
                // Navigate to the configuration page, passing the list of Itel configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Itel', // Pass the phone model name
                      configurations: itelConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View Itel Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
