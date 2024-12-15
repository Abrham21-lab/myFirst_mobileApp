import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage

class motorola extends StatelessWidget {
  const motorola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> motorolaConfigurations = [
      PhoneConfiguration(
        'Motorola Edge',
        '128 GB', // Storage
        '25,000 ETB',  // Price
        '4500 mA',    // Battery
        '16 MP', // Camera
        'Android 10 (upgradable to later versions)', // Other features
      ),
      PhoneConfiguration(
        'Motorola Moto G60',
        '128 GB', // Storage
        '17,500 ETB',  // Price
        '6000 mA',    // Battery
        '8 MP', // Camera
        'Android 11', // Other features
      ),
      PhoneConfiguration(
        'Motorola Moto G50',
        '128 GB', // Storage
        '14,000 ETB',  // Price
        '5000 mA',    // Battery
        '5 MP', // Camera
        'strong camera', // Other features
      ),
      PhoneConfiguration(
        'Motorola Moto E7 Plus',
        '64 GB', // Storage
        '9,000 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'Android 10', // Other features
      ),
      PhoneConfiguration(
        'Motorola One Fusion+',
        '128 GB', // Storage
        '17,000 ETB',  // Price
        '5000 mA',    // Battery
        '16 MP', // Camera
        'Android 10', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Motorola Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart Motorola Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://th.bing.com/th/id/OIP.EyziAIos4zAxhJUyXP7ihAHaFY?w=237&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
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
                // Navigate to the configuration page, passing the list of Motorola configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Motorola', // Pass the phone model name
                      configurations: motorolaConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View Motorola Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
