import 'package:flutter/material.dart';
import 'PhoneConfiguration.dart'; // Ensure this file contains the PhoneConfiguration class
import 'ConfigurationPage.dart';  // Assuming you want to navigate to ConfigurationPage

class oppo extends StatelessWidget {
  const oppo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PhoneConfiguration> oppoConfigurations = [
      PhoneConfiguration(
        'Oppo Find X5 Pro',
        '256 GB', // Storage
        '80,000 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'Android 14', // Other features
      ),
      PhoneConfiguration(
        'Oppo F19 Pro+',
        '256 GB', // Storage
        '30,000 ETB',  // Price
        '4300 mA',    // Battery
        '8 MP', // Camera
        'ColorOS 11.1, based on Android 11', // Other features
      ),
      PhoneConfiguration(
        'Oppo A74 5G',
        '128 GB', // Storage
        '18,000 ETB',  // Price
        '5000 mA',    // Battery
        '8 MP', // Camera
        'ColorOS 11.1, based on Android 11', // Other features
      ),
      PhoneConfiguration(
        'Oppo A15',
        '64 GB', // Storage
        '7,000 ETB',  // Price
        '4000 mA',    // Battery
        '2 MP', // Camera
        'Android 13', // Other features
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: const Text('Oppo Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the smart Oppo Page!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),

            // Display the image from the network
            Image.network(
              'https://th.bing.com/th/id/OIP.B7SvRFfR7ozQ3vgNs8mQgQHaHa?w=200&h=200&c=7&r=0&o=5&dpr=1.1&pid=1.7',
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
                // Navigate to the configuration page, passing the list of Oppo configurations
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(
                      phoneModelName: 'Oppo', // Pass the phone model name
                      configurations: oppoConfigurations, // Pass the entire list of phone configurations
                    ),
                  ),
                );
              },
              child: const Text('View Oppo Configurations'),
            ),
          ],
        ),
      ),
    );
  }
}
