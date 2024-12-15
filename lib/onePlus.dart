import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage

class onePlus extends StatelessWidget {
  const onePlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> onePlusConfigurations = [
      PhoneConfiguration(
        'OnePlus 11 5G',
        '512 GB', // Storage
        '70,000 ETB',  // Price
        '5000 mA',    // Battery
        '32 MP', // Camera
        'OxygenOS 13, based on Android 13', // Other features
      ),
      PhoneConfiguration(
        'OnePlus 9 Pro',
        '128 GB', // Storage
        '39,000 ETB',  // Price
        '4500 mA',    // Battery
        '48 MP', // Camera
        'OxygenOS 11, based on Android 11', // Other features
      ),
      PhoneConfiguration(
        'OnePlus Nord 2',
        '128 GB', // Storage
        '29,000 ETB',  // Price
        '4500 mA',    // Battery
        '50 MP', // Camera
        'OxygenOS 11.3, based on Android 11', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('OnePlus Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart OnePlus Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://th.bing.com/th/id/OIP.2PAsVThU_IElRmu8yTSdOAHaHa?rs=1&pid=ImgDetMain',
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
                // Navigate to the configuration page, passing the list of OnePlus configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'OnePlus', // Pass the phone model name
                      configurations: onePlusConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View OnePlus Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
